<?php require 'view/layout/header.php' ?>
<div class="wrap-main   w-clear">
    <div class="container">
        <div class="title-main"><span>Giới thiệu</span></div>
        <div class="row_about_pp">
            <?php foreach ($introduces as $introduce) : ?>
                <div class="about_box flex_row">
                    <div class="ab_left">
                        <div class="ab_img">
                            <a href="?c=introduce&a=detail&id=<?= $introduce->id ?>" title="<?= $introduce->name ?>">
                                <img class="img-responsive" onerror="this.src='thumbs/475x290x1/assets/images/noimage.png';" src="thumbs/475x290x1/upload/news/<?= $introduce->featured_image ?>" alt="<?= $introduce->name ?>" />
                            </a>
                        </div>
                    </div>
                    <div class="ab_right">
                        <div class="ab_name">
                            <a href="?c=introduce&a=detail&id=<?= $introduce->id ?>" title="<?= $introduce->name ?>">
                                <?= $introduce->name ?>
                            </a>
                        </div>
                        <div class="ab_describe">
                            <p><?= $introduce->description ?></p>
                        </div>
                    </div>
                </div>
            <?php endforeach ?>
        </div>
        <div class="clear"></div>
        <div class="pagination-home"></div>
    </div>
</div>
<?php require 'view/layout/footer.php' ?>