<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package demo
 */

get_header();
?>

<!-- Banner -->
<div class="heading-page header-text">
    <section class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-content">
                        <h4><?php _e('RECENT POSTS'); ?></h4>
                        <h2><?php the_title(); ?></h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Include Call to Action file -->
<?php get_template_part('template-parts/cta') ?>

<!-- Display posts -->
<section class="blog-posts grid-system">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <?php
                $post_per_page = 2;
                $args = array(
                    'posts_per_page' => $post_per_page,
                );
                if (!empty($_GET['paged'])){
                    $offset = ($_GET['paged'] - 1 ) * $post_per_page;
                    $args += ['offset' => $offset];
                }
                $query = new WP_Query( $args );
                if ($query->have_posts()) : ?>
                    <div class="all-blog-posts">
                        <div class="row">
                        <?php while ($query->have_posts()) :
                            $query->the_post(); ?>
                            <div class="col-lg-6">
                                <div class="blog-post">
                                    <?php if (has_post_thumbnail('')) : ?>
                                        <div class="blog-thumb">
                                            <?php the_post_thumbnail('blog'); ?>
                                        </div>
                                    <?php endif; ?>
                                    <div class="down-content">
                                        <?php $category_name = get_the_category(); ?>
                                        <span><?php echo $category_name[0]->name; ?></span>
                                        <a href="<?= the_permalink(); ?>"><h4><?php the_title(); ?></h4></a>
                                        <ul class="post-info">
                                            <li><a href="#"><?php the_author(); ?></a></li>
                                            <li><a href="#"><?php echo get_the_date('M d, Y'); ?></a></li>
                                            <li><a href="#"><?php comments_number(); ?></a></li>
                                        </ul>
                                        <?php the_excerpt(); ?>
                                        <div class="post-options">
                                            <div class="row">
                                                <?php $tags = get_the_tags();
                                                if ($tags) : ?>
                                                    <div class="col-lg-12">
                                                        <ul class="post-tags">
                                                            <li><i class="fa fa-tags"></i></li>
                                                            <?php the_tags('<li><a>', ', ', '</a></li>'); ?>
                                                        </ul>
                                                    </div>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endwhile; ?>
                            <div class="col-lg-12">
                                <?php
                                echo paginate_links( array(
                                    'total'        => $query->max_num_pages,
                                    'current'      => max( 1, get_query_var( 'paged' ) ),
                                    'format'       => '?paged=%#%',
                                    'show_all'     => false,
                                    'type'         => 'list',
                                    'end_size'     => 0,
                                    'mid_size'     => 2,
                                    'prev_next'    => true,
                                    'prev_text'    => sprintf( '<i class="fa fa-angle-double-left"></i>', __( 'Newer Posts', 'text-domain' ) ),
                                    'next_text'    => sprintf( '<i class="fa fa-angle-double-right"></i>', __( 'Older Posts', 'text-domain' ) ),
                                    'add_args'     => false,
                                    'add_fragment' => '',
                                ) );
                                ?>
                            </div>
                        </div>
                    </div>
                <?php else: ?>
                    <?php get_template_part('template-parts/no-posts') ?>
                <?php endif; ?>
            </div>
            <?php get_sidebar(); ?>
        </div>
    </div>
</section>
<?php
get_footer();
