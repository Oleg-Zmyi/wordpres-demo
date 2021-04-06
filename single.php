<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package demo
 */

get_header();

//Add comment
try {
    $commentdata = [];

    if (!empty($_POST['message'])) {
        $commentdata = [
            'comment_post_ID'      => $_POST['post_id'],
            'comment_author'       => $_POST['user_name'],
            'comment_author_email' => $_POST['user_email'],
            'comment_content'      => $_POST['message']
        ];
    }

    if (!empty($_POST['user_id'])){
        $commentdata['user_ID'] = $_POST['user_id'];
    }

    if (!empty($_POST['message']) || !empty($_POST['user_id'])){
        wp_new_comment( $commentdata );
    }
    unset($_POST);

} catch(Exception $e){
   echo 'Something went wrong';
}


?>

<div class="heading-page header-text">
    <section class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-content">
                        <h4><?php _e('Post Details'); ?></h4>
                        <h2><?php _e('Single blog post'); ?></h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<?php get_template_part('template-parts/cta') ?>

<section class="blog-posts grid-system">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <?php while ( have_posts() ) :
                    the_post(); ?>
                    <div class="all-blog-posts">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="blog-post">
                                    <div class="blog-thumb">
                                        <?php the_post_thumbnail(); ?>
                                    </div>
                                    <div class="down-content">
                                        <?php $category_name = get_the_category(); ?>
                                        <span><?php echo $category_name[0]->name; ?></span>
                                        <?php the_title('<a href="post-details.html"><h4>', '</h4></a>') ?>
                                        <ul class="post-info">
                                            <li><a href="#"><?php echo get_the_author();?></a></li>
                                            <li><a href="#"><?php the_date(); ?></a></li>
                                            <li><a href="#"><?php comments_number() ; ?> </a></li>
                                        </ul>
                                        <?php the_content(); ?>
                                        <div class="post-options">
                                            <div class="row">
                                                <?php $tags = get_the_tags();
                                                if ($tags) : ?>
                                                    <div class="col-6">
                                                        <ul class="post-tags">
                                                            <li><i class="fa fa-tags"></i></li>
                                                            <?php for ($i=0; $i < count($tags); $i++) :
                                                                    echo '<li><a href="' . get_home_url() . '/tag/' . $tags[$i]->name .'">' . $tags[$i]->name . '</a>' ;
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

<!--            Display all Comments               -->
                            <div class="col-lg-12">
                                <div class="sidebar-item comments">
                                    <div class="sidebar-heading">
                                        <h2><?php comments_number() ?></h2>
                                    </div>
                                    <?php
                                    $comments = get_comments(
                                        array('post_id' => get_the_ID(), 'post_status' => 'publish')
                                    );
                                    if ( get_comments_number() ) : ?>
                                        <div class="content">
                                            <ul>
                                                <?php foreach ($comments as $comment) : ?>
                                                    <li>
                                                        <div class="author-thumb">
                                                            <?php echo get_avatar($comment->author_email, 100)?>
                                                        </div>
                                                        <div class="right-content">
                                                            <h4><?php echo $comment->comment_author ; ?><span><?php echo get_comment_date('M d, Y'); ?></span></h4>
                                                            <p><?= $comment->comment_content; ?></p>
                                                        </div>
                                                    </li>
                                                <?php endforeach; ?>
                                            </ul>
                                        </div>
                                    <?php endif; ?>
                                </div>
                            </div>
<!--            End all Comments               -->
<!--            Display form for new comment              -->
                            <?php if ( comments_open() ) : ?>
                            <div class="col-lg-12">
                                <div class="sidebar-item submit-comment">
                                    <div class="sidebar-heading">
                                        <h2><?php _e('Your comment')?></h2>
                                    </div>
                                    <div class="content">
                                        <form id="comment" action="" method="post">
                                            <div class="row">
                                                <input type="hidden" value="<?php the_ID(); ?>" name="post_id">
                                                <?php if (is_user_logged_in()) : ?>
                                                    <?php $user_id = get_current_user_id() ;
                                                          $user_data = wp_get_current_user();
                                                    ?>
                                                        <input type="hidden" value="<?= $user_data->ID; ?>" name="user_id">
                                                        <input type="hidden" value="<?= $user_data->user_email; ?>" name="user_email">
                                                        <input type="hidden" value="<?= $user_data->user_nicename; ?>" name="user_name">
                                                <?php else: ?>
                                                    <div class="col-md-6 col-sm-12">
                                                        <fieldset>
                                                            <input name="user_name" type="text" id="name" placeholder="Your name" required="">
                                                        </fieldset>
                                                    </div>
                                                    <div class="col-md-6 col-sm-12">
                                                        <fieldset>
                                                            <input name="user_email" type="text" id="email" placeholder="Your email" required="">
                                                        </fieldset>
                                                    </div>
                                                <?php endif; ?>
                                                <div class="col-md-12 col-sm-12">
                                                    <fieldset>
                                                        <input name="subject" type="text" id="subject" placeholder="Subject">
                                                    </fieldset>
                                                </div>
                                                <div class="col-lg-12">
                                                    <fieldset>
                                                        <textarea name="message" rows="6" id="message" placeholder="Type your comment" required></textarea>
                                                    </fieldset>
                                                </div>
                                                <div class="col-lg-12">
                                                    <fieldset>
                                                        <button type="submit" id="form-submit" class="main-button">Submit</button>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </div>
                            <?php endif; ?>
                        </div>
                    </div>
                <?php endwhile;
                ?>
            </div>
            <?php get_sidebar(); ?>
        </div>
    </div>
</section>

<?php
get_footer();
