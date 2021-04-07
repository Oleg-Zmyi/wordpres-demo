<?php

if ( ! defined( '_S_VERSION' ) ) {
    // Replace the version number of the theme on each release.
    define( '_S_VERSION', '1.0.0' );
}

if ( ! function_exists( 'demo_setup' ) ) :
    function demo_setup() {
        load_theme_textdomain( 'demo', get_template_directory() . '/languages' );
        add_theme_support( 'automatic-feed-links' );
        add_theme_support( 'title-tag' );
        add_theme_support( 'post-thumbnails' );
        register_nav_menus(
            array(
                'menu' => esc_html__( 'Primary', 'demo' ),
            )
        );
    }
endif;
add_action( 'after_setup_theme', 'demo_setup' );

function demo_widgets_init() {
    register_sidebar(
        array(
            'name'          => esc_html__( 'Sidebar-1', 'demo' ),
            'id'            => 'sidebar-1',
            'description'   => esc_html__( 'Add widgets here.', 'demo' ),
            'before_widget' => '<div class="col-lg-12"><div id="%1$s" class="sidebar-item %2$s">',
            'after_widget'  => '</div></div>',
            'before_title'  => '<div class="sidebar-heading"><h2 class="widget-title">',
            'after_title'   => '</h2></div>',
        )
    );
}
add_action( 'widgets_init', 'demo_widgets_init' );

function kitchen_theme_scripts() {
    wp_enqueue_style(
        'bootstrap',
        get_template_directory_uri() . '/vendor/bootstrap/css/bootstrap.min.css'
    );

    wp_enqueue_style(
        'fontawesome',
        get_template_directory_uri() . '/assets/css/fontawesome.css'
    );

    wp_enqueue_style(
        'templatemo-stand-blog',
        get_template_directory_uri() . '/assets/css/templatemo-stand-blog.css'
    );

    wp_enqueue_style(
        'owl',
        get_template_directory_uri() . '/assets/css/owl.css'
    );

    wp_enqueue_style(
        'flex-slider',
        get_template_directory_uri() . '/assets/css/flex-slider.css'
    );


    wp_enqueue_script(
        'bootstrap-script',
        get_template_directory_uri() . '/vendor/bootstrap/js/bootstrap.bundle.min.js', array('jquery'), _S_VERSION, true
    );

    wp_enqueue_script(
        'custom',
        get_template_directory_uri() . '/assets/js/custom.js', array('jquery'), _S_VERSION, true
    );

    wp_enqueue_script(
        'owl',
        get_template_directory_uri() . '/assets/js/owl.js', array('jquery'), _S_VERSION, true
    );

    wp_enqueue_script(
        'slick',
        get_template_directory_uri() . '/assets/js/slick.js', array('jquery'), _S_VERSION, true
    );

    wp_enqueue_script(
        'isotope',
        get_template_directory_uri() . '/assets/js/isotope.js', array('jquery'), _S_VERSION, true
    );

    wp_enqueue_script(
        'accordions',
        get_template_directory_uri() . '/assets/js/accordions.js', array('jquery'), _S_VERSION, true
    );

    wp_register_script(
        'my_loadmore',
        get_stylesheet_directory_uri() . '/assets/js/myloadmore.js', array('jquery')
    );

    wp_localize_script(
        'my_loadmore',
        'demo_ajax_params', array(
            'ajaxurl' => site_url() . '/wp-admin/admin-ajax.php'
        )
    );

    wp_enqueue_script( 'my_loadmore' );

}
add_action( 'wp_enqueue_scripts', 'kitchen_theme_scripts' );



require get_template_directory() . '/functions/helper.php';

require get_template_directory() . '/widgets/tags.php';


