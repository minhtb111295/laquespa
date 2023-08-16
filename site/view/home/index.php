<?php require 'view/layout/header.php' ?>
<div class="wrap-main wrap-home  w-clear">
	<div class="about_index padding">
		<div class="container-fluid">
			<div class="flex_row row_about">
				<div class="about_left">
					<div class="about_img img_">
						<img class="img-responsive" onerror="this.src='thumbs/735x515x2/assets/images/noimage.png';" src="thumbs/735x515x2/upload/news/hinhgt-3981.png" alt="image about" />
					</div>
				</div>
				<div class="about_right">
					<div class="about_title">Giới thiệu về</div>
					<div class="about_name">
						LÁ QUÊ SPA </div>
					<div class="about_des">
						Lá Quê Spa ra đời với mong muốn mang đến cho quý khách hàng dịch vụ chăm sóc sắc đẹp tốt nhất. Không gian Spa được thiết kế hiện đại và gần gũi với thiên nhiên,cùng với các dịch vụ massage chuyên nghiệp sẽ giúp bạn thư giản sau những giờ làm việc căng thẳng. Spa Lá Quê nơi vẻ đẹp của bạn được thăng hoa, nơi sức khỏe của bạn được phục hồi. Với phương châm “Khách hàng là trung tâm, sự hài lòng của khách hàng mục tiêu phấn đấu của chúng tôi”. Toàn thể nhân viên Spa Lá Quê luôn nổ lực không ngừng để mang đến quý khách hàng những dịch vụ tuyệt vời nhất.

						Stress, headache, anxiety, toxins, pain, depression, muscle aches....LET IT ALL GO. </div>
					<div class="about_seemore">
						<a href="?c=introduce" title="Xem thêm">Xem thêm</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="dichvulist padding">
		<div class="container">
			<h2 class="title_index">
				<p>Lá Quê Spa</p><span>Combo dịch vụ</span>
			</h2>
			<div class="">
				<?php foreach ($categoryServices as $categoryService) : ?>
					<div class="dichvu_row flex_row">
						<div class="dichvu_left">
							<a href="?c=service&category_id=<?= $categoryService->id ?>" title="MASSAGE BODY SẢ CHANH ">
								<img width="570px" height="440px" onerror="this.src='thumbs/570x440x2/assets/images/noimage.png';" src="thumbs/570x440x1/upload/news/body-4-01-5504.jpg" alt="MASSAGE BODY SẢ CHANH "/>
							</a>
						</div>
						<div class="dichvu_right">
							<div class="name_dvl"><?= $categoryService->name ?></div>
							<div class="row_dv">
								<?php $categoryId = $categoryService->id ?>
								<?php foreach ($services as $service) : ?>
									<div class="dichvu_item">
										<h2 class="dichvu_name" data-src_img="thumbs/570x440x1/upload/news/<?= $service->featured_image ?>"><?= $service->name ?></h2>
										<div class="dichvu_content">
											<div class="dichvu_des"><?= $service->description ?></div>
											<div class="dichvu_p_b flex_row">
												<div class="dichvu_price">
													<select>
														<option value="10"><?= $service->time ?> phút: <span><?= number_format($service->price) ?>đ</span></option>
													</select>
												</div>
												<div class="dichvu_book">
													<a href="?c=contact" title="Book now">Book now</a>
												</div>
											</div>
										</div>
									</div>
								<?php endforeach ?>
							</div>
						</div>
					</div>
				<?php endforeach ?>
			</div>
		</div>
	</div>
	<div class="video_index padding">
		<div class="container">
			<h2 class="title_index">
				<p>Lá Quê Spa</p><span>Video clip</span>
			</h2>
			<div class="row_video_index">
				<div class="flipster">
					<ul>
						<li>
							<a class="video text-decoration-none" data-fancybox="video" data-src="https://www.youtube.com/watch?v=6XuNQm06s5U" title="">
								<img onerror="this.src='thumbs/675x470x2/assets/images/noimage.png';" src="thumbs/675x470x1/upload/photo/9651742523935969742658606473142952095907840n-24800.jpg" alt="" alt="" />
							</a>
						</li>
						<li>
							<a class="video text-decoration-none" data-fancybox="video" data-src="https://www.youtube.com/watch?v=iuys_DHRBHs" title="">
								<img onerror="this.src='thumbs/675x470x2/assets/images/noimage.png';" src="thumbs/675x470x1/upload/photo/9674815623935969542658628991016797222207488n-55601.jpg" alt="" alt="" />
							</a>
						</li>
						<li>
							<a class="video text-decoration-none" data-fancybox="video" data-src="https://www.youtube.com/watch?v=niO7cZqCMOo" title="">
								<img onerror="this.src='thumbs/675x470x2/assets/images/noimage.png';" src="thumbs/675x470x1/upload/photo/9710718923935970009325246298288618658070528n-85720.jpg" alt="" alt="" />
							</a>
						</li>
						<li>
							<a class="video text-decoration-none" data-fancybox="video" data-src="https://www.youtube.com/watch?v=H7KLkNgIZdY" title="">
								<img onerror="this.src='thumbs/675x470x2/assets/images/noimage.png';" src="thumbs/675x470x1/upload/photo/9738900023935969909325252146272389913116672n-60601.jpg" alt="" alt="" />
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="bannerqc padding">
		<a class="" href="#"><img class="img-responsive img-logo" onerror="this.src='thumbs/145x145x2/assets/images/noimage.png';" src="upload/photo/logosp-4886.png" /></a>
		<a class="" href="san-pham.html"><img class="img-responsive" onerror="this.src='thumbs/1000x500x2/assets/images/noimage.png';" src="upload/photo/untitled-1-01-2690.jpg" /></a>
	</div>
	<div class="camnhan_index padding">
		<div class="container">
			<h2 class="title_index">
				<p>Lá Quê Spa</p><span>Cảm nhận khách hàng</span>
			</h2>
			<div class="owl-camnhan owl-carousel">
				<div class="">
					<div class="camnhan_box flex_row">
						<div class="camnhan_img">
							<img class="img-responsive" onerror="this.src='thumbs/150x150x2/assets/images/noimage.png';" src="thumbs/150x150x1/upload/news/11471400126199345215569012819722213703681491n-3181.jpg" alt="Phương Bùi" />
						</div>
						<div class="camnhan_content ">
							<div class="camnhan_name">
								<span>Phương Bùi </span>
							</div>
							<div class="camnhan_describe">
								<p>Nhân viên phục vụ tốt, trải nghiệm okieee nha, cảm ơn spa nhé </p>
							</div>
						</div>
					</div>
				</div>
				<div class="">
					<div class="camnhan_box flex_row">
						<div class="camnhan_img">
							<img class="img-responsive" onerror="this.src='thumbs/150x150x2/assets/images/noimage.png';" src="thumbs/150x150x1/upload/news/341994596390606797786663504712877112033280n-5417.jpg" alt="Mộng Tuyền" />
						</div>
						<div class="camnhan_content ">
							<div class="camnhan_name">
								<span>Mộng Tuyền </span>
							</div>
							<div class="camnhan_describe">
								<p>Dịch vụ chăm sóc da tốt, nước mát tuyệt vời...</p>
							</div>
						</div>
					</div>
				</div>
				<div class="">
					<div class="camnhan_box flex_row">
						<div class="camnhan_img">
							<img class="img-responsive" onerror="this.src='thumbs/150x150x2/assets/images/noimage.png';" src="thumbs/150x150x1/upload/news/11812173216866153481547724781747740274123342n-7389.jpg" alt="Minh Trang" />
						</div>
						<div class="camnhan_content ">
							<div class="camnhan_name">
								<span>Minh Trang </span>
							</div>
							<div class="camnhan_describe">
								<p>Đã đi nhiều lần ở đây, nhân viên nhiệt tình dễ thương, spa nhẹ nhàng thư giãn</p>
							</div>
						</div>
					</div>
				</div>
				<div class="">
					<div class="camnhan_box flex_row">
						<div class="camnhan_img">
							<img class="img-responsive" onerror="this.src='thumbs/150x150x2/assets/images/noimage.png';" src="thumbs/150x150x1/upload/news/6246506812399295795210474233659232009846784o-5203.jpg" alt="Thảo Linh" />
						</div>
						<div class="camnhan_content ">
							<div class="camnhan_name">
								<span>Thảo Linh </span>
							</div>
							<div class="camnhan_describe">
								<p>Rất thích dịch vụ làm mặt ở Lá Quê Spa, yên tĩnh, nhiệt tình, sẽ ủng hộ tiếp</p>
							</div>
						</div>
					</div>
				</div>
				<div class="">
					<div class="camnhan_box flex_row">
						<div class="camnhan_img">
							<img class="img-responsive" onerror="this.src='thumbs/150x150x2/assets/images/noimage.png';" src="thumbs/150x150x1/upload/news/5148952810213187249569525941982926122254336o-2226.jpg" alt="Bảo Châu" />
						</div>
						<div class="camnhan_content ">
							<div class="camnhan_name">
								<span>Bảo Châu </span>
							</div>
							<div class="camnhan_describe">
								<p>Tuyệt vời, rất thoải mái và thư giãn</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="lamdep_index padding">
		<div class="container">
			<h2 class="title_index">
				<p>Lá Quê Spa</p><span>Góc làm đẹp</span>
			</h2>
			<div class="row rowrp">
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="lamdep_box">
						<div class="lamdep_img img_">
							<a href="la-phu-nu-phai-song-cho-ban-than-minh.html" title="Căng da mặt tự nhiên với liệu trình massage mặt bằng ngọc thạch anh">
								<img class="img-responsive" onerror="this.src='thumbs/380x430x2/assets/images/noimage.png';" src="thumbs/380x430x1/upload/news/14537287126025565067032388591947797608075638o-5333.jpg" alt="Căng da mặt tự nhiên với liệu trình massage mặt bằng ngọc thạch anh" />
							</a>
							<div class="lamdep_date">
								<span>17</span>
								<p>Thg10</p>
							</div>
						</div>
						<div class="lamdep_content ">
							<div class="lamdep_name">
								<a href="la-phu-nu-phai-song-cho-ban-than-minh.html" title="Căng da mặt tự nhiên với liệu trình massage mặt bằng ngọc thạch anh">
									Căng da mặt tự nhiên với liệu trình massage mặt bằng ngọc thạch anh
								</a>
							</div>
							<div class="lamdep_describe">
								<p>Phụ nữ ai cũng thích mình xinh đẹp, ai cũng thích mình được mọi người xung quanh yêu mến và trân trọng.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="lamdep_box">
						<div class="lamdep_img img_">
							<a href="triet-pha-mun-tham-lung-viem-nang-long-chi-trong-3-tuan.html" title="Detox bản thân, dưỡng da mặt cho tối cuối tuần rảnh rỗi">
								<img class="img-responsive" onerror="this.src='thumbs/380x430x2/assets/images/noimage.png';" src="thumbs/380x430x1/upload/news/3-kem-nen-dang-long-cua-han-dang-lam-mua-lam-gio-03-8083.jpg" alt="Detox bản thân, dưỡng da mặt cho tối cuối tuần rảnh rỗi" />
							</a>
							<div class="lamdep_date">
								<span>17</span>
								<p>Thg10</p>
							</div>
						</div>
						<div class="lamdep_content ">
							<div class="lamdep_name">
								<a href="triet-pha-mun-tham-lung-viem-nang-long-chi-trong-3-tuan.html" title="Detox bản thân, dưỡng da mặt cho tối cuối tuần rảnh rỗi">
									Detox bản thân, dưỡng da mặt cho tối cuối tuần rảnh rỗi
								</a>
							</div>
							<div class="lamdep_describe">
								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="lamdep_box">
						<div class="lamdep_img img_">
							<a href="nen-an-gi-va-kieng-gi-de-dieu-tri-nam-hieu-qua.html" title="NÊN ĂN GÌ VÀ KIÊNG GÌ ĐỂ ĐIỀU TRỊ NÁM HIỆU QUẢ">
								<img class="img-responsive" onerror="this.src='thumbs/380x430x2/assets/images/noimage.png';" src="thumbs/380x430x1/upload/news/traxanh-8945.jpg" alt="NÊN ĂN GÌ VÀ KIÊNG GÌ ĐỂ ĐIỀU TRỊ NÁM HIỆU QUẢ" />
							</a>
							<div class="lamdep_date">
								<span>19</span>
								<p>Thg10</p>
							</div>
						</div>
						<div class="lamdep_content ">
							<div class="lamdep_name">
								<a href="nen-an-gi-va-kieng-gi-de-dieu-tri-nam-hieu-qua.html" title="NÊN ĂN GÌ VÀ KIÊNG GÌ ĐỂ ĐIỀU TRỊ NÁM HIỆU QUẢ">
									NÊN ĂN GÌ VÀ KIÊNG GÌ ĐỂ ĐIỀU TRỊ NÁM HIỆU QUẢ
								</a>
							</div>
							<div class="lamdep_describe">
								<p>Điều trị nám da mất không ít thời gian và tiền bạc. Ngoài việc, phải tuân thủ các bước bảo vệ da khỏi những yếu tố gây nám bên ngoài. Cần hiểu biết về chế độ dinh dưỡng hằng ngày để quá trình trị nám đạt được hiệu quả cao nhất.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php require 'view/layout/footer.php' ?>