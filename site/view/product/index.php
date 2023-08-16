<?php require 'view/layout/header.php' ?>
<div class="wrap-main w-clear">
    <div class="container">
        <div class="title-main"><span>Sản phẩm</span></div>
        <?php
        $isEmpty = count($products);
        if (!($isEmpty)) :
        ?>
            <div class="alert alert-warning" role="alert">
                <strong>Sản phẩm đang được cập nhật</strong>
            </div>
        <?php endif ?>
        <div class="content-main ">
            <div class="owl-product owl-carousel">
                <?php foreach ($products as $product) : ?>
                    <div class="">
                        <div class="pro">
                            <div class="img_pro img_"><a href="?c=product&a=detail&id=<?= $product->id ?>" title="<?= $product->name ?>"><img class="img-responsive" alt="<?= $product->name ?>" onerror="this.src='thumbs/350x280x2/assets/images/noimage.png';" src="watermark/product/350x280x1/upload/product/<?= $product->featured_image ?>"> </a><span class="sale_pro">-<?= $product->discount_percent ?>%</span></div>
                            <h3 class="name_pro"><a href="?c=product&a=detail&id=<?= $product->id ?>" title="<?= $product->name ?>"><?= $product->name ?></a></h3>
                            <div class="price_pro"><span class="giamoi"><?= number_format($product->sale_price) ?> đ</span> <span class="giacu">(<?= number_format($product->price) ?> đ)</span></div>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </div>
</div>
<?php require 'view/layout/footer.php' ?>