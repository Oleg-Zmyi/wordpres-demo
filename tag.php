<?php

get_header();
?>
<!-- Banner -->
<div class="heading-page header-text">
    <section class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-content">
                        <h4><?php _e('Details', 'demo'); ?></h4>
                        <h2><?php _e('Tags', 'demo'); ?></h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<?php get_template_part('template-parts/cta') ; ?>

<section class="blog-posts">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="all-blog-posts">
                    <div class="row">
                        <?php if (have_posts()) : ?>
                            <?php while (have_posts()) : the_post(); ?>
                                <div class="col-lg-6">
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
                                            <?php $tags = get_the_tags();
                                            if ($tags) : ?>
                                                <div class="col-lg-12">
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
            <?php get_sidebar(); ?>
        </div>
    </div>
</section>

<?php
get_footer();