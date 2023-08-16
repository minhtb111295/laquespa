<?php require 'view/layout/header.php' ?>
<div class="wrap-main w-clear">
    <div class="container">
        <div class="title-main"><span>Liên hệ</span></div>
        <div class="top-contact">
            <div class="article-contact">
                <p style="text-align: center;"> </p>

                <p> </p>
            </div>
            <div class="form_contact">
                <form class="form-contact validation-contact" novalidate method="post" action="#" enctype="multipart/form-data">
                    <div class="input-contact">
                        <input type="text" class="form-control" id="ten" name="ten" placeholder="Họ tên" required />
                        <div class="invalid-feedback">Vui lòng nhập họ và tên</div>
                    </div>
                    <div class="input-contact">
                        <input type="number" class="form-control" id="dienthoai" name="dienthoai" placeholder="Số điện thoại" required />
                        <div class="invalid-feedback">Vui lòng nhập số điện thoại</div>
                    </div>
                    <div class="input-contact">
                        <input type="text" class="form-control" id="diachi" name="diachi" placeholder="Địa chỉ" required />
                        <div class="invalid-feedback">Vui lòng nhập địa chỉ</div>
                    </div>
                    <div class="input-contact">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required />
                        <div class="invalid-feedback">Vui lòng nhập địa chỉ email</div>
                    </div>
                    <div class="input-contact">
                        <input type="text" class="form-control" id="tieude" name="tieude" placeholder="Chủ đề" required />
                        <div class="invalid-feedback">Vui lòng nhập chủ đề</div>
                    </div>
                    <div class="input-contact">
                        <textarea class="form-control" id="noidung" name="noidung" placeholder="Nội dung" required /></textarea>
                        <div class="invalid-feedback">Vui lòng nhập nội dung</div>
                    </div>
                    <!-- <div class="input-contact ">
                    <input type="file" class="custom-file-input" name="file">
                    <label class="custom-file-label" for="file" title="Chọn">Đính kèm file</label>
                </div> -->
                    <div class="btn_input-contact flex">
                        <input type="submit" class="btn btn-primary" name="submit-contact" value="Gửi" disabled />
                        <input type="reset" class="btn btn-secondary" value="Nhập lại" />
                        <input type="hidden" name="recaptcha_response_contact" id="recaptchaResponseContact">
                    </div>
                </form>
            </div>
        </div>
        <div class="bandoiframe">
            <div id="bandoiframe">
                <div id="footer-map"></div>
            </div>
        </div>
    </div>
</div>
<?php require 'view/layout/footer.php' ?>