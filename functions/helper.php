<?php

//Add preloader after body open

add_action( 'wp_body_open', 'demo_show_preloader' );

function demo_show_preloader() { ?>

    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>

<?php }

// Add script before footer to close preloader

add_action( 'wp_footer', 'demo_close_preloader_script', 30 );

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

//Display form to submit comment

    function show_comments_form(){
        $args = array();
        if (is_user_logged_in()) {

            $args = array(

            );

        } else {

        }
        comment_form($args);
    }
