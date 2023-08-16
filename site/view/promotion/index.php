<?php require 'view/layout/header.php' ?>
<div class="wrap-main w-clear">
    <div class="container">
        <div class="title-main"><span>Khuyến mãi</span></div>
        <div class="content-main"></div>
        <div class="row rowrp">
            <?php foreach ($promotions as $promotion) : ?>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="khuyenmai_box">
                        <a target="_blank" href="#" title="">
                            <img onerror="this.src='thumbs/600x450x2/assets/images/noimage.png';" src="thumbs/600x450x2/upload/photo/<?= $promotion->featured_image ?>" alt="" title="" />
                        </a>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
    </div>
</div>
<?php require 'view/layout/footer.php' ?>