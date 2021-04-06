<?php
//Add comment
var_dump($_POST);
echo 'dasdas';

$commentdata = [];

if (!empty($_POST['message'])) {
    $commentdata = [
        'comment_post_ID'      => $_POST['post_id'],
        'comment_author'       => $_POST['user_name'],
        'comment_author_email' => $_POST['user_email'],
        'comment_content'      => $_POST['message']
    ];
}
var_dump($commentdata);

if (!empty($_POST['user_id'])){
    $commentdata['user_ID'] = $_POST['user_id'];
}

if (!empty($_POST['message']) || !empty($_POST['user_id'])){
    wp_new_comment( $commentdata );
    echo '--------------------';
}
echo '+++++++++++';


//header('Location: /');