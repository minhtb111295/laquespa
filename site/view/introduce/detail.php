<?php require 'view/layout/header.php' ?>
<div class="wrap-main w-clear">
    <div class="container">
        <div class="title-main"><span><?= $introduce->name ?></span></div>

        <div class="meta-toc">
            <div class="box-readmore">
                <ul class="toc-list" data-toc="article" data-toc-headings="h1, h2, h3"></ul>
            </div>
        </div>
        <div class="content-main w-clear" id="toc-content">
            <p style="text-align: justify;"><?= $introduce->details ?></p>
        </div>
        <div class="share">
            <div class="time-main"><i class="fas fa-calendar-week"></i><span>Ngày đăng: <?= $introduce->created_date ?></span>
            </div>
            <b>Chia sẻ:</b>
            <div class="social-plugin w-clear">
                <div class="addthis_inline_share_toolbox_qj48"></div>
                <div class="zalo-share-button" data-href="http://laquespa.com/mun-deo-dang-ca-tuoi-thanh-xuan" data-oaid="579745863508352884" data-layout="1" data-color="blue" data-customize=false></div>
            </div>
        </div>
        <div class="share othernews">
            <b>Bài viết khác:</b>
            <ul class="list-news-other">
                <?php foreach ($introducesRelated as $introduceRelated) : ?>
                    <li>
                        <a class="text-decoration-none" href="?c=introduce&a=detail&id=<?= $introduceRelated->id ?>" title="<?= $introduceRelated->name ?>">
                            <i class="far fa-newspaper"></i>
                            <?= $introduceRelated->name ?>
                            <span>(<?= $introduceRelated->created_date ?>)</span>
                        </a>
                    </li>
                <?php endforeach ?>
            </ul>
            <div class="pagination-home"></div>
        </div>
    </div>
</div>
<?php require 'view/layout/footer.php' ?>