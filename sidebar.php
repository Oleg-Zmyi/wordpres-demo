<?php
/**
 * The sidebar containing the main widget area
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package demo
 */

if ( ! is_active_sidebar( 'sidebar-1' ) ) {
    return;
}
?>

<div class="col-lg-4">
    <div class="sidebar">
        <div class="row">
            <?php dynamic_sidebar( 'sidebar-1' ); ?>
        </div>
    </div>
</div>
