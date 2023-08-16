<?php require 'view/layout/header.php'; ?>
<div class="wrap-main w-clear">
    <div class="container">
        <div class="title-main"><span>Dịch vụ</span></div>
        <div class="row rowrp">
            <?php foreach ($services as $service) : ?>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="news_box">
                        <div class="img_dichvu img_"><a href="?c=service&a=detail&id=<?= $service->id ?>" title="<?= $service->name ?>"><img class="img-responsive" alt="<?= $service->name ?>" onerror="this.src='thumbs/350x280x2/assets/images/noimage.png'" src="thumbs/350x280x1/upload/news/<?= $service->featured_image ?>"> </a></div>
                        <div class="content_dichvu">
                            <h3 class="name_news"><a href="?c=service&a=detail&id=<?= $service->id ?>" title="<?= $service->name ?>"><?= $service->name ?></a></h3>
                            <div class="des_news"><?= $service->description ?></div>
                            <div class="dichvu_book"> <a href="booking-now.html" title="Book now">Book now</a> </div>
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
<?php require 'view/layout/footer.php'; ?>