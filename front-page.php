<?php
get_header();
?>

<!--  include Slider  -->
<?php get_template_part('template-parts/slider') ; ?>

<!--  include Call To Action  -->
<?php get_template_part('template-parts/cta') ?>

<!--  Display posts  -->
<?php
$post_per_page = 2;
$args = array(
    'posts_per_page' => $post_per_page,
    'orderby' => 'desc',
    'post_type' => 'post'
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
                                    <div class="col-lg-12 post">
                                        <div class="blog-post">
                                            <?php if (has_post_thumbnail()) : ?>
                                                <div class="blog-thumb">
                                                    <?php the_post_thumbnail(); ?>
                                                </div>
                                            <?php endif; ?>
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
                                                                    <?php the_tags('<li><a>', ', ', '</a></li>'); ?>
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

                                <!--  Display Show more button  -->
                                <?php if ($args['posts_per_page'] < wp_count_posts( 'post' )->publish) :?>
                                    <div class="col-lg-12" id="loadmore_wrapper">
                                        <div class="main-button">
                                            <a id="loadmore" href="/" data-load-posts="<?= $post_per_page ?>" data-count-posts="<?php echo wp_count_posts( 'post' )->publish ?>" >
                                                <?php _e('view more posts', 'demo') ?></a>
                                        </div>
                                    </div>
                                <?php endif; ?>

                            <?php else: ?>
                                <?php get_template_part('template-parts/no-posts') ?>
                            <?php endif; ?>
                            <?php wp_reset_postdata(); ?>
                        </div>
                    </div>
                </div>
                <?php get_sidebar(); ?>
            </div>
        </div>
    </section>

<?php
get_footer();