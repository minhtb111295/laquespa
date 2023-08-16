<?php 
class PostController {
    function index() {
        $page = PAGE;
        $item_per_page = ITEM_PER_PAGE;
        $action = new PostRepository;
        $posts = $action->getAll($page, $item_per_page);

        $totalRows = $action->getAll();
        $totalPages = ceil(count($totalRows)/$item_per_page);
        require 'view/post/index.php';
    }

    function detail() {
        $post_id = $_GET['id'];

        // Get Post
        $action = new PostRepository;
        $post = $action->getBy($post_id);

        // Get 3 Featured Posts
        $featuredPosts = $action->getFeaturedPosts($post_id, 3);

        // Get Related Posts
        $relatedPosts = $action->getRelated($post_id);

        // Get Content of this Post
        $action = new ContentRepository;
        $contents = $action->getAll($post_id);

        require 'view/post/detail.php';
    }
}
?>