<?php

//Add preloader after body open

function demo_show_preloader() { ?>

    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>

<?php }

add_action( 'wp_body_open', 'demo_show_preloader' );

// Add script before footer to close preloader

function demo_close_preloader_script() { ?>

    <script language = "text/Javascript">
        cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
        function clearField(t){                   //declaring the array outside of the
            if(! cleared[t.id]){                      // function makes it static and global
                cleared[t.id] = 1;  // you could use true and false, but that's more typing
                t.value='';         // with more chance of typos
                t.style.color='#fff';
            }
        }
    </script>

<?php } ;

add_action( 'wp_footer', 'demo_close_preloader_script', 30 );


// Load more posts

add_action( 'wp_ajax_more_posts', 'load_more_posts' );
add_action( 'wp_ajax_nopriv_more_posts', 'load_more_posts' );

function load_more_posts(){

    if (!empty($_POST['offset']) && !empty($_POST['load_posts'])){


        $offset = $_POST['offset'];

        $load_posts = $_POST['load_posts'];

        $args = array(
            'posts_per_page' => $load_posts,
            'offset' => $offset,
            'orderby' => 'desc'
        );

        $wp_query = new Wp_Query( $args );

        /** @var integer $count
         check if have to remove button loadmore
         */
        $count = $wp_query->post_count + $offset;

        ob_start();
        if( $wp_query->have_posts() ){
            while($wp_query->have_posts() ){ $wp_query->the_post(); ?>
                <div class="col-lg-12 post">
                    <div class="blog-post">
                        <div class="blog-thumb">
                            <?php the_post_thumbnail(); ?>
                        </div>
                        <div class="down-content">
                            <?php $category_name = get_the_category(); ?>
                            <span><?php echo $category_name[0]->name; ?></span>
                            <a href="<?= the_permalink(); ?>"><?php the_title('<h4>', '</h4>'); ?></a>
                            <?php the_excerpt(); ?>
                            <div class="post-options">
                                <div class="row">
                                    <?php $tags = get_the_tags();
                                    if ($tags) : ?>
                                        <div class="col-6">
                                            <ul class="post-tags">
                                                <li><i class="fa fa-tags"></i></li>
                                                <?php for ($i=0; $i < count($tags); $i++) :
                                                    echo '<li><a href="' . get_home_url() . '/tag/' . $tags[$i]->name . '">' . $tags[$i]->name . '</a>' ;
                                                    if ($i != count($tags) - 1) echo ',';
                                                    echo '</li> ';
                                                endfor; ?>
                                            </ul>
                                        </div>
                                    <?php endif; ?>
                                    <div class="col-6">
                                        <ul class="post-share">
                                            <li><i class="fa fa-share-alt"></i></li>
                                            <li><a href="#">Facebook</a>,</li>
                                            <li><a href="#"> Twitter</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php }
        }

        $html_content = ob_get_contents();
        ob_get_clean();

        wp_die( json_encode( array( 'html' => $html_content, 'count' => $count  ) ) );

    }

}



