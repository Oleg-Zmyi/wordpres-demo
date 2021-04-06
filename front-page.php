<?php
get_header();

$args = array(
    'posts_per_page' => 6,
    'orderby' => 'rand'
);
$query = new WP_Query( $args );
if ($query->have_posts()) : ?>
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
                                <li><a href="#"><?php the_date("M d, Y") ?></a></li>
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
<!-- Banner Ends Here -->

<!--  Display  Call to action-->
<?php get_template_part('template-parts/cta') ?>

<?php
$args = array(
    'posts_per_page' => 3,
    'orderby' => 'desc'
);
$query = new WP_Query( $args ); ?>
    <section class="blog-posts">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="all-blog-posts">
                        <div class="row">
                            <?php if ($query->have_posts()) : ?>
                            <?php while ($query->have_posts()) : $query->the_post(); ?>
                                <div class="col-lg-12">
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
                            <?php endwhile; ?>
                            <?php else: ?>
                                <?php get_template_part('template-parts/no-posts') ?>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
                <?php wp_reset_postdata();
                get_sidebar();
                ?>
            </div>
        </div>
    </section>

<?php

get_footer();