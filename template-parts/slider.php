<?php
$args = array(
    'posts_per_page' => 6,
    'orderby' => 'rand'
);
$query = new WP_Query( $args );
if ($query->have_posts()) : ?>
    <!-- Slider -->
    <div class="main-banner header-text">
        <div class="container-fluid">
            <div class="owl-banner owl-carousel">
                <?php while ($query->have_posts()) : $query->the_post(); ?>
                    <div class="item">
                        <?php the_post_thumbnail(); ?>
                        <div class="item-content">
                            <div class="main-content">
                                <div class="meta-category">
                                    <?php $category_name = get_the_category(); ?>
                                    <span><?php echo $category_name[0]->name; ?></span>
                                </div>
                                <a href="<?= the_permalink(); ?>"><?php the_title('<h4>', '</h4>'); ?></a>
                                <ul class="post-info">
                                    <li><a href="#"><?php the_author() ?></a></li>
                                    <li><a href="#"><?php the_date() ?></a></li>
                                    <li><a href="#"><?php comments_number() ; ?></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                <?php endwhile; ?>
            </div>
        </div>
    </div>
<?php endif;
wp_reset_postdata();
?>