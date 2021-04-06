<?php /* Template Name: About Us Template */
get_header();

?>

<!-- ***** Preloader End ***** -->

<!-- Page Content -->
<!-- Banner Starts Here -->
<div class="heading-page header-text">
    <section class="page-heading">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-content">
                        <h4>about us</h4>
                        <h2>more about us!</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Banner Ends Here -->


<section class="about-us">
    <div class="container">
       <?php the_content(); ?>
    </div>
</section>


<?php
get_footer();
