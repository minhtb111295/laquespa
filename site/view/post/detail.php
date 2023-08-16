<?php require 'view/layout/header.php' ?>
<div class="wrap-main w-clear">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-12 col-xs-12">
                <div class="title-main"><span><?= $post->name ?></span></div>
                <div class="meta-toc">
                    <div class="box-readmore">
                        <ul class="toc-list-laquespa" data-toc="article" data-toc-headings="h1, h2, h3">
                            <?php foreach ($contents as $content) : ?>
                                <li>
                                    <a href="#<?= $content->name ?>"><?= $content->name ?></a>
                                </li>
                            <?php endforeach ?>
                        </ul>
                    </div>
                </div>
                <div class="content-main w-clear" id="toc-content">
                    <p><?= $post->description ?></p>
                    <br>
                    <?php foreach ($contents as $content) : ?>
                        <div class="laquespa-content">
                            <h2 dir="auto" id="<?= $content->name ?>"><strong><?= $content->name ?></strong></h2>
                            <p><?= $content->description ?></p>
                            <?php
                            $image = $content->featured_image;
                            if ($image) :
                            ?>
                                <p style="text-align: center;"><img alt="" src="upload/elfinder/<?= $content->featured_image ?>" /></p>
                                <p dir="auto"><?= $content->details ?></p>
                            <?php endif ?>
                            <br>
                        </div>
                    <?php endforeach ?>
                </div>
                <div class="share">
                    <div class="time-main"><i class="fas fa-calendar-week"></i><span>Ngày đăng: <?= $post->created_date ?></span></div>
                    <b>Chia sẻ:</b>
                    <div class="social-plugin w-clear">
                        <div class="addthis_inline_share_toolbox_qj48"></div>
                        <div class="zalo-share-button" data-href="http://laquespa.com/goi-dau-duong-sinh-ket-hop-da-thong-kinh-lac-vung-dau-cai-thien-suc-khoe-phong-chong-dot-quy" data-oaid="579745863508352884" data-layout="1" data-color="blue" data-customize=false>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hiển thị 3 bài viết nổi bật -->
            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="title_right">tin nổi bật</div>
                <div class="lamdepmoi">
                    <?php foreach ($featuredPosts as $featuredPost) : ?>
                        <div class="lamdepmoi_box flex_row">
                            <div class="lamdepmoi_img img_">
                                <a href="?c=post&a=detail&id=<?= $featuredPost->id ?>" title="<?= $featuredPost->name ?>">
                                    <img class="img-responsive" onerror="this.src='thumbs/100x70x2/assets/images/noimage.png';" src="thumbs/100x70x1/upload/news/<?= $featuredPost->featured_image ?>" alt="<?= $featuredPost->name ?>" />
                                </a>
                            </div>
                            <div class="lamdepmoi_content ">
                                <div class="lamdepmoi_name">
                                    <a href="?c=post&a=detail&id=<?= $featuredPost->id ?>" title="<?= $featuredPost->name ?>">
                                        <?= $featuredPost->name ?>
                                    </a>
                                </div>
                                <div class="lamdepmoi_describe">
                                    <p><?= $featuredPost->description ?></p>
                                </div>
                            </div>
                        </div>
                    <?php endforeach ?>
                </div>
            </div>
        </div>

        <!-- Vertical Scroll Menu -->
        <div class="share othernews">
            <b>Bài viết khác:</b>
            <ul class="list-news-other">
                <?php foreach ($relatedPosts as $relatedPost) : ?>
                    <li>
                        <a class="text-decoration-none" href="?c=post&a=detail&id=<?= $relatedPost->id ?>" title="<?= $relatedPost->name ?>">
                            <i class="far fa-newspaper"></i> <?= $relatedPost->name ?>
                            <span>(<?= $relatedPost->created_date ?>)</span>
                        </a>
                    </li>
                <?php endforeach ?>
            </ul>
            <div class="pagination-home"></div>
        </div>
    </div>
</div>
<?php require 'view/layout/footer.php' ?>