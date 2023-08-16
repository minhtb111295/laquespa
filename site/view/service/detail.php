<?php require 'view/layout/header.php' ?>
<div class="wrap-main w-clear">
    <div class="container">
        <div class="title-main"><span><?= $service->name ?></span></div>

        <div class="meta-toc">
            <div class="box-readmore">
                <ul class="toc-list" data-toc="article" data-toc-headings="h1, h2, h3"></ul>
            </div>
        </div>
        <div class="content-main w-clear" id="toc-content">
            <?php if (!($service->details)) : ?>
                <div class="alert alert-warning" role="alert">
                    <strong>Nội dung đang được cập nhật</strong>
                </div>
            <?php endif ?>
            <p style="text-align: center;"><?= $service->details ?></p>
            <hr>
            <?php if ($service->details_image) : ?>
                <p style="text-align: center;"><span style="line-height:2;"><span style="font-size:16px;"><img alt="" src="upload/elfinder/<?= $service->details_image ?>" style="width: 600px; height: 392px;" /></span></span></p>
            <?php endif ?>
        </div>
        <div class="share">
            <div class="time-main"><i class="fas fa-calendar-week"></i><span>Ngày đăng: <?= $service->created_date ?></span>
            </div>
            <b>Chia sẻ:</b>
            <div class="social-plugin w-clear">
                <div class="addthis_inline_share_toolbox_qj48"></div>
                <div class="zalo-share-button" data-href="http://laquespa.com/da-nong-an-huyet-thu-gian" data-oaid="579745863508352884" data-layout="1" data-color="blue" data-customize=false></div>
            </div>
        </div>
        <div class="share othernews">
            <b>Bài viết khác:</b>
            <ul class="list-news-other">
                <?php foreach ($servicesRelated as $serviceRelated) : ?>
                    <li><a class="text-decoration-none" href="?c=service&a=detail&id=<?= $serviceRelated->id ?>" title="<?= $serviceRelated->name ?>">
                            <i class="far fa-newspaper"></i><?= $serviceRelated->name ?><span>(<?= $serviceRelated->created_date ?>)</span>
                        </a>
                    </li>
                <?php endforeach ?>
            </ul>
            <div class="pagination-home"></div>
        </div>
    </div>
    <div class="bgnoidungthem padding">
        <h3><img alt="" src="upload/elfinder/cc18521efd9f0cc1558e.jpg" style="width: 2048px; height: 544px;" /></h3>
    </div>
</div>
<?php require 'view/layout/header.php' ?>