jQuery( document ).ready(function( $ ) {
    "use strict";

    if($('#loadmore').length > 0){
        $('#loadmore').click(function(e){

            e.preventDefault();


            let button = $(this),
                count = $(this).data('count-posts'),
                data = {
                    'action': 'more_posts',
                    'offset': $('.post').size(),
                    'load_posts' : $(this).data('load-posts'),
                };

            $.ajax({
                url : demo_ajax_params.ajaxurl,
                data : data,
                type : 'POST',
                beforeSend : function ( xhr ) {
                    button.text('Loading...');
                },
                success : function( data1 ){
                    let result = JSON.parse(data1);
                    $('.post').last().after( result.html );
                    button.text( 'view more posts' ).prev().before(result);
                    if (result.count >= count){
                       $('#loadmore_wrapper').remove();
                    }
                }
            });
        });
    }

});
