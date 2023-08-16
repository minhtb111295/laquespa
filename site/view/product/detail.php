<?php require 'view/layout/header.php' ?>
<div class="wrap-main w-clear">
    <div class="container">
        <div class="row rowrp">
            <div class="left-pro-detail col-md-5 col-sm-5 col-xs-12">
                <a id="Zoom-1" class="MagicZoom" data-options="zoomMode: off; hint: off; rightClick: true; selectorTrigger: hover; expandCaption: false; history: false;" href="watermark/product/540x540x1/upload/product/<?= $product->featured_image ?>" title="<?= $product->name ?>"><img onerror="this.src='thumbs/540x540x2/assets/images/noimage.png';" src="watermark/product/540x540x1/upload/product/<?= $product->featured_image ?>" alt="<?= $product->name ?>"></a>
                <div class="gallery-thumb-pro">
                    <p class="control-carousel prev-carousel prev-thumb-pro transition"><i class="fas fa-chevron-left"></i></p>
                    <div class="owl-carousel owl-theme owl-thumb-pro">
                        <?php foreach ($imageItems as $imageItem) : ?>
                            <a class="thumb-pro-detail" data-zoom-id="Zoom-1" href="watermark/product/540x540x1/upload/product/<?= $imageItem->featured_image ?>" title="<?= $product->name ?>"><img onerror="this.src='thumbs/540x540x2/assets/images/noimage.png';" src="watermark/product/540x540x1/upload/product/<?= $imageItem->featured_image ?>" alt="<?= $product->name ?>"></a>
                        <?php endforeach ?>
                    </div>
                    <p class="control-carousel next-carousel next-thumb-pro transition"><i class="fas fa-chevron-right"></i></p>
                </div>
            </div>

            <div class="right-pro-detail  col-md-7 col-sm-7 col-xs-12">
                <p class="title-pro-detail"><?= $product->name ?></p>
                <div class="price-content-pro-detail">
                    <div class="price-old-pro-detail"><?= number_format($product->price) ?>đ</div>
                    <span class="price-new-pro-detail"><?= number_format($product->sale_price) ?>đ</span>
                    <span class="price-km-pro-detail">(Tiết kiệm: <?= $product->discount_percent ?>%)</span>
                </div>
                <div class="desc-pro-detail"><?= $product->description ?></div>
                <ul class="attr-pro-detail">
                    <li class="w-clear">
                        <label class="attr-label-pro-detail">Mã sản phẩm:</label>
                        <div class="attr-content-pro-detail masp-attr-content-pro-detail"><?= $product->product_code ?></div>
                    </li>
                    <li class="w-clear">
                        <label class="attr-label-pro-detail">Lượt xem:</label>
                        <div class="attr-content-pro-detail"><?= $product->views ?></div>
                    </li>
                </ul>
                <div class="social-plugin social-plugin-pro-detail w-clear">
                    <div class="addthis_inline_share_toolbox_qj48"></div>
                    <div class="zalo-share-button" data-href="http://laquespa.com/xit-khang-khuan-disinfectant-spray" data-oaid="579745863508352884" data-layout="1" data-color="blue" data-customize=false></div>
                </div>
            </div>
        </div>

        <hr>

        <!-- Information of Product & Comments -->
        <!-- <div class="tabs-pro-detail">
            <ul class="ul-tabs-pro-detail w-clear">
                <li class="active transition" data-tabs="info-pro-detail">Thông tin sản phẩm</li>
                <li class="transition" data-tabs="commentfb-pro-detail">Bình luận</li>
                <div class="clearfix"></div>
            </ul>
            <div class="content-tabs-pro-detail info-pro-detail active"></div>
            <div class="content-tabs-pro-detail commentfb-pro-detail">
                <div class="fb-comments" data-href="http://laquespa.com/xit-khang-khuan-disinfectant-spray" data-numposts="3" data-colorscheme="light" data-width="100%"></div>
            </div>
        </div> -->

        <div class="title-main"><span>Sản phẩm cùng loại</span></div>
        <div class="content-main w-clear">
            <div class="owl-product owl-carousel">
                <?php foreach ($productsRelated as $productRelated) : ?>
                    <div class="product-related">
                        <div class="pro">
                            <div class="img_pro img_"><a href="?c=product&a=detail&id=<?= $productRelated->id ?>" title="<?= $productRelated->name ?>"><img class="img-responsive" alt="<?= $productRelated->name ?>" onerror="this.src='thumbs/350x280x2/assets/images/noimage.png'" src="watermark/product/350x280x1/upload/product/<?= $productRelated->featured_image ?>"> </a><span class="sale_pro">-<?= $productRelated->discount_percent ?>%</span></div>
                            <h3 class="name_pro"><a href="?c=product&a=detail&id=<?= $productRelated->id ?>" title="MẦM NGHỆ TƯƠI"><?= $productRelated->name ?></a>
                            </h3>
                            <div class="price_pro"><span class="giamoi"><?= number_format($productRelated->sale_price) ?>đ</span> <span class="giacu">(<?= number_format($productRelated->price) ?>đ)</span></div>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </div>
</div>
<?php require 'view/layout/footer.php' ?>