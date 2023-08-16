<?php require 'view/layout/header.php' ?>
<div class="wrap-main w-clear">
    <div class="container">
        <div class="title-main"><span>Góc làm đẹp</span></div>
        <div class="row rowrp">
            <?php foreach ($posts as $post) : ?>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="news_box">
                        <div class="img_dichvu img_"><a href="?c=post&a=detail&id=<?= $post->id ?>" title="<?= $post->name ?>"><img class="img-responsive" alt="<?= $post->name ?>" onerror="this.src='thumbs/380x280x2/assets/images/noimage.png'" src="thumbs/380x280x1/upload/news/<?= $post->featured_image ?>"> </a></div>
                        <div class="content_dichvu">
                            <h3 class="name_news"><a href="?c=post&a=detail&id=<?= $post->id ?>" title="<?= $post->name ?>"><?= $post->name ?></a></h3>
                            <div class="des_news"><?= $post->description ?></div>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
        <div class="clear"></div>
        <div class="pagination-home">
            <?php require 'view/layout/pagination.php'; ?>
        </div>
    </div>
</div>
<?php require 'view/layout/footer.php' ?>