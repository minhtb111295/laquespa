/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100408
 Source Host           : localhost:3306
 Source Schema         : laquespa

 Target Server Type    : MariaDB
 Target Server Version : 100408
 File Encoding         : 65001

 Date: 28/07/2023 09:06:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `featured_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 'home', 'home-banner-1.png');
INSERT INTO `banner` VALUES (2, 'home', 'home-banner-2.jpg');
INSERT INTO `banner` VALUES (3, 'home', 'home-banner-3.jpg');
INSERT INTO `banner` VALUES (4, 'home', 'home-banner-4.jpg');
INSERT INTO `banner` VALUES (5, 'home', 'home-banner-5.jpg');
INSERT INTO `banner` VALUES (6, 'home', 'home-banner-6.jpg');
INSERT INTO `banner` VALUES (7, 'introduce', 'introduce-banner.png');
INSERT INTO `banner` VALUES (8, 'product', 'product-banner.jpg');
INSERT INTO `banner` VALUES (9, 'service', 'service-banner.jpg');
INSERT INTO `banner` VALUES (10, 'promotion', 'promotion-banner.png');
INSERT INTO `banner` VALUES (11, 'post', 'post-banner.jpg');
INSERT INTO `banner` VALUES (12, 'contact', 'contact-banner.png');

-- ----------------------------
-- Table structure for category_product
-- ----------------------------
DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_product
-- ----------------------------
INSERT INTO `category_product` VALUES (1, 'KEM FACE TUYẾT');
INSERT INTO `category_product` VALUES (2, 'TẮM TRẮNG');
INSERT INTO `category_product` VALUES (3, 'BỘ CHĂM SÓC TÓC');

-- ----------------------------
-- Table structure for category_service
-- ----------------------------
DROP TABLE IF EXISTS `category_service`;
CREATE TABLE `category_service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_service
-- ----------------------------
INSERT INTO `category_service` VALUES (1, 'BODY MASSAGE');
INSERT INTO `category_service` VALUES (2, 'CHĂM SÓC DA MẶT');
INSERT INTO `category_service` VALUES (3, 'GỘI ĐẦU DƯỠNG SINH');
INSERT INTO `category_service` VALUES (4, 'TẮM TRẮNG TOÀN THÂN');
INSERT INTO `category_service` VALUES (5, 'ĐIỀU TRỊ MỤN CHUYÊN SÂU');
INSERT INTO `category_service` VALUES (6, 'GIẢM BÉO - TRIỆT LÔNG');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk-product-comment`(`product_id`) USING BTREE,
  CONSTRAINT `fk-product-comment` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `featured_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_post`(`post_id`) USING BTREE,
  CONSTRAINT `fk_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES (1, 'NGUYÊN NHÂN DẪN ĐẾN NỔI MỤN TRÊN DA', 'Mụn là tình trạng da xuất hiện những vết đỏ, gây nên cảm giác ngứa, và có chiều hướng lây lan rộng trên bề mặt. Mụn được chia làm nhiều loại khác nhau như mụn đầu đen, đầu trắng, mụn mủ, mụn bọc, mụn viêm sưng. Trước khi tìm hiểu về việc đi spa trị mụn có tốt không, bạn nên biết nguyên nhân gây ra tình trạng mụn là gì.', 'dieu-tri-mun-tai-spa-lieu-co-hieu-qua-khong-20220326173447-146724.jpg', 'Có rất nhiều yếu tố tác động và gây ra tình trạng nổi mụn trên da. Các chuyên gia da liễu chia thành 2 nguyên nhân cơ bản sau:<br>\r\n\r\n– Do các yếu tố bên trong cơ thể: Xuất hiện những thay đổi nội tiết tố bên trong, cụ thể như:<br>\r\n	+ Rối loạn nội tiết tố, đến tuổi dậy thì, phụ nữ sau khi sinh<br>\r\n	+ Cơ thể đang bị stress, căng thẳng và gặp những áp lực<br>\r\n	+ Do di truyền từ người thân<br>Cơ chế thải độc hoạt động không tốt<br><br>\r\n\r\n– Do các tác nhân bên ngoài:<br>\r\n	+ Môi trường bị ô nhiễm, thường xuyên tiếp xúc trực tiếp với khói bụi<br>\r\n	+ Sử dụng các loại mỹ phẩm có chất lượng không tốt<br>\r\n	+ Chế độ ăn uống không đảm bảo: ăn đồ ăn nhiều dầu mỡ, thức ăn nhanh, uống các loại nước ngọt, …<br>\r\n	+ Chăm sóc da sai cách<br>Tác hại từ việc tiếp xúc nhiều với tia UV', 1);
INSERT INTO `content` VALUES (2, 'ĐI SPA TRỊ MỤN CÓ TỐT KHÔNG? ƯU NHƯỢC ĐIỂM KHI ĐI SPA TRỊ MỤN', 'Spa trị mụn được xem là phương pháp hiệu quả nhất cho những bạn đang gặp phải tình trạng này. Rất nhiều spa và clinic quảng cáo có thể điều trị dứt điểm mụn ngay trong liệu trình đầu tiên. Tuy nhiên, điều này là không thể xảy ra. Xóa bỏ mụn cần thời gian để điều trị lâu dài và kiên trì. Mụn được hình thành do nhiều yếu tố, do vậy cần điều trị từ trong ra ngoài để có thể dứt điểm được tình trạng mụn này. Vậy đi spa trị mụn có tốt không? Ưu nhược điểm ra sao?', 'cung-soi-lieu-trinh-dieu-tri-mun-chuyen-sau-tai-spa-2.jpg', '<br>\r\n<b>ƯU ĐIỂM:</b><br>\r\nĐể việc điều trị mụn đảm bảo an toàn bạn nên lựa chọn các spa uy tín có thương hiệu. Dưới đây là một số ưu điểm khi đi spa trị mụn:<br>\r\n	- Được các chuyên gia da liễu tư vấn về tình trạng mụn:<br>\r\n		Bạn sẽ được kiểm tra, soi da, tư vấn và đưa ra liệu trình trị mụn phù hợp. Nhân viên có chuyên môn cao và nhiều năm kinh nghiệm trong nghề sẽ giúp bạn chăm sóc làn da một cách chuyên nghiệp và hiệu quả. Do đó, bạn có thể tiết kiệm được thời gian chăm sóc da tại nhà bằng các phương pháp cổ truyền, mang lại hiệu quả cao hơn. Bên cạnh đó, bạn còn được hỗ trợ tư vấn, và hướng dẫn các giải pháp nếu có bất kỳ vấn đề gì liên quan đến da.<br>\r\n	- Được điều trị mụn theo quy trình chuyên biệt:<br>\r\n		Tùy vào tình trạng từng loại da, sẽ được áp dụng các quy trình điều trị mụn khác nhau. Hoàn toàn an toàn, được cam kết hiệu quả, đảm bảo các dụng cụ điều trị đều vô trùng vô khuẩn. Ngoài ra, hệ thống máy móc, các trang thiết bị đều được nhập khẩu, hiện đại giúp quá trình thực nhanh chóng và hiệu quả. Khách hàng được hướng dẫn liệu trình điều trị da, chăm sóc da sau khi điều trị mụn.<br>\r\n	- Đảm bảo an toàn và hiệu quả mang lại lâu dài:<br>\r\n		Tại các spa chuyên nghiệp, các loại mụn cứng đầu và thâm sẹo đều có thể dễ dàng được loại bỏ. Tại những địa chỉ này, không chỉ sử dụng các thiết bị vô trùng đảm bảo cho việc lấy nhân mụn chuẩn y khoa mà còn kết hợp với các loại mỹ phẩm cao cấp giúp hiệu quả rõ rệt sau khi điều trị.<br>\r\n<b>NHƯỢC ĐIỂM</b><br>\r\nBên cạnh nhiều ưu điểm vượt trội thì việc điều trị mụn tại spa cũng có một vài nhược điểm như:<br>\r\n	Chi phí điều trị cao: So với điều trị tại nhà, đi Spa thường tốn nhiều chi phí hơn.<br>\r\n	Lựa chọn trị mụn tại những địa điểm kém an toàn: Nếu tham khảo kỹ càng về các spa uy tín, bạn có thể chọn nhầm spa kém chất lượng, dẫn đến những kết quả không mong muốn.<br>\r\n	Qua đây, bạn có thể thấy rõ những ưu và nhược điểm của phương pháp đi spa điều trị mụn. Vậy, việc có đi spa trị mụn có tốt không sẽ phụ thuộc vào quyết định và suy nghĩ của mỗi người.', 1);
INSERT INTO `content` VALUES (3, 'NÊN ĐẾN SPA NÀO ĐỂ ĐIỀU TRỊ MỤN DỨT ĐIỂM?', 'Sau khi trả lời được câu hỏi đi spa trị mụn có tốt không, các bạn sẽ tìm kiếm một spa uy tín để đến và điều trị. Trong nhiều năm gần đây, các thương hiệu spa làm đẹp phát triển mạnh mẽ và rộng khắp. Do vậy, khách hàng thực sự phân vân không biết nên đến đâu để điều trị dứt điểm mụn.<br>Lá Quê Spa là nơi điều trị mụn uy tín hàng đầu.Nơi đặt tâm huyết làm tôn chỉ trong lĩnh vực làm đẹp nên luôn chăm sóc khách hàng tận tâm.<br>Lá Quê Spa có đội ngũ nhân viên, kỹ thuật giàu kinh nghiệm, nhân viên spa được được trang bị kiến thức chuyên môn sâu và phong cách phục vụ chuyên nghiệp (tư vấn online & offline), luôn đặt khách hàng lên hàng đầu. Bạn sẽ có thể yên tâm đến khi đến trải nghiệm dịch vụ làm đẹp chất lượng tại đây', '', NULL, 1);

-- ----------------------------
-- Table structure for image_item
-- ----------------------------
DROP TABLE IF EXISTS `image_item`;
CREATE TABLE `image_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `featured_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_product-item`(`product_id`) USING BTREE,
  CONSTRAINT `fk_product-item` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image_item
-- ----------------------------
INSERT INTO `image_item` VALUES (1, '6sp-tet-01-3214.jpg', 1);
INSERT INTO `image_item` VALUES (2, '6sp-tet-01-6123.jpg', 1);
INSERT INTO `image_item` VALUES (3, '6sp-tet-03-4289.jpg', 2);
INSERT INTO `image_item` VALUES (4, '6sp-tet-05-8172.jpg', 3);
INSERT INTO `image_item` VALUES (5, '6sp-tet-02-9539.jpg', 9);
INSERT INTO `image_item` VALUES (6, '6sp-tet-06-6897.jpg', 11);
INSERT INTO `image_item` VALUES (7, '6sp-tet-04-4608.jpg', 12);
INSERT INTO `image_item` VALUES (8, '11-4537.jpg', 14);
INSERT INTO `image_item` VALUES (9, '1313455518186807856386088128370363398730845n-7215.jpg', 15);
INSERT INTO `image_item` VALUES (10, '13101753318908473077209524708479792506587295n-3951.jpg', 16);
INSERT INTO `image_item` VALUES (11, '131233437405011890927945344349744848850577n-7098.jpg', 17);

-- ----------------------------
-- Table structure for introduce
-- ----------------------------
DROP TABLE IF EXISTS `introduce`;
CREATE TABLE `introduce`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `featured_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of introduce
-- ----------------------------
INSERT INTO `introduce` VALUES (1, 'ĐẾN LÁ QUÊ ĐỂ AN YÊN', 'Lá Quê Spa tự hào là một trong những trung tâm chăm sóc sức khỏe và sắc đẹp hàng đầu Việt Nam, tiên phong về massage trị liệu sức khỏe và chăm sóc da với liệu trình Thông kinh lạc và kỹ thuật bấm huyệt Shiatsu, hệ thống cơ sở vật chất hiện đại, đạt chuẩn cùng đội ngũ chuyên gia, kỹ thuật viên được đào tạo bài bản, chuyên nghiệp.', '4-9454.jpg', 'Lá Quê Spa tự hào là một trong những trung tâm chăm sóc sức khỏe và sắc đẹp hàng đầu Việt Nam, tiên phong về massage trị liệu sức khỏe và chăm sóc da với liệu trình Thông kinh lạc và kỹ thuật bấm huyệt Shiatsu, hệ thống cơ sở vật chất hiện đại, đạt chuẩn cùng đội ngũ chuyên gia, kỹ thuật viên được đào tạo bài bản, chuyên nghiệp.', '2023-07-13 17:13:22');
INSERT INTO `introduce` VALUES (2, 'NƠI VẺ ĐẸP THĂNG HOA', 'Lá Quê Spa là nơi vẻ đẹp thăng hoa với rất nhiều dịch vụ mới nhất và hiện đại nhất. Vì vậy dù bạn là ai hay bất cứ khi nào chúng tôi đều sẽ mang đến cho bạn các giải pháp làm đẹp an toàn, phù hợp và hiệu quả với chi phí tiết kiệm nhất, giúp bạn luôn tự tin, quyến rũ để hạnh phúc và thành công hơn!', 'massage-body-da-nong-1480143833-1343362-14801439001024x1024-9251.jpg', 'Spa Lá Quê ra đời với mong muốn mang đến cho quý khách hàng những dịch vụ chăm sóc sắc đẹp tốt nhất. Không gian Spa được thiết kế hiện đại và gần gũi với thiên nhiên,cùng với các dịch vụ massage chuyên nghiệp sẽ giúp bạn thư giản sau những giờ làm việc căng thẳng. Spa Lá Quê nơi vẻ đẹp của bạn được thăng hoa, nơi sức khỏe của bạn được phục hồi.<br>Với SPA LÁ QUÊ, dù công nghệ thẩm mỹ, làm đẹp ngày càng nở rộ như nấm sau mưa thì Lá Quê Spa vẫn có một chỗ đứng riêng không thể trộn lẫn. Vẻ đẹp ấy giống hệt một cô gái đẹp nhưng đầy bản lĩnh. “Nàng” tự tin và bình tĩnh. Vẻ đẹp của “Nàng” là vẻ đẹp của sự quyến rũ, tinh tế và độc bản. Và khách vãng lai thì chỉ muốn quay lại để gặp “Nàng” một lần nữa, lần nữa và lần nữa mà thôi…!Với phương châm “Khách hàng là trung tâm, sự hài lòng của khách hàng mục tiêu phấn đấu của chúng tôi”. Toàn thể nhân viên Spa Lá Quê luôn nổ lực không ngừng để mang đến quý khách hàng những dịch vụ tuyệt vời nhất.<br>Spa La Que.By choosing lotus as main image in decoration, combining of modern architecture and classic style with highlights of presentation cozy Zen Design, Spa La Que is supposed a peaceful and natural resort in hectic life Sai Gon with a hold-building for men, women and couples. We offer an ideal place for caring health and relaxing moments.', '2023-07-13 17:13:28');
INSERT INTO `introduce` VALUES (3, 'NGUYÊN LIỆU THẢO MỘC THIÊN NHIÊN 100%', 'Điểm nhấn đặc trưng của Lá Quê Spa chính là phương pháp massage với thảo dược, hơi nóng lan toả thúc đẩy lưu thông khí huyết, cải thiện tuần hoàn máu, làm dịu vết thương, giảm đau nhức cơ bắp, gân và khớp do căng cơ gây ra, tạo giấc ngủ ngon, tăng cường sức đề kháng, phòng chống cảm cúm hiệu quả.', '1310256384472415566673006012787979750684916n-3570.jpg', 'Điểm nhấn đặc trưng của Lá Quê Spa chính là phương pháp massage với thảo dược, hơi nóng lan toả thúc đẩy lưu thông khí huyết, cải thiện tuần hoàn máu, làm dịu vết thương, giảm đau nhức cơ bắp, gân và khớp do căng cơ gây ra, tạo giấc ngủ ngon, tăng cường sức đề kháng, phòng chống cảm cúm hiệu quả.', '2023-07-13 17:13:33');
INSERT INTO `introduce` VALUES (4, 'CHẤT LƯỢNG HÀNG ĐẦU', 'Ngày nay, với áp lực làm việc tăng cao, mọi người đều mong muốn có một nơi lý tưởng để thư giãn tinh thần lẫn sức khỏe. Lá Quê Spa chính là giải pháp hiệu quả, nơi mà quý khách không chỉ cảm nhận một không gian chuyên nghiệp mà còn là nơi để điều trị và chăm sóc da với các công nghệ mới nhất, với máy móc hiện đại, đội ngũ nhân viên chuyên nghiệp, tư vấn tận tình, kỹ thuật viên tay nghề giỏi.', '13105683116928371308975895045231163192068941n-5986.jpg', 'Ngày nay, với áp lực làm việc tăng cao, mọi người đều mong muốn có một nơi lý tưởng để thư giãn tinh thần lẫn sức khỏe. Lá Quê Spa chính là giải pháp hiệu quả, nơi mà quý khách không chỉ cảm nhận một không gian chuyên nghiệp mà còn là nơi để điều trị và chăm sóc da với các công nghệ mới nhất, với máy móc hiện đại, đội ngũ nhân viên chuyên nghiệp, tư vấn tận tình, kỹ thuật viên tay nghề giỏi.', '2023-07-19 05:13:37');
INSERT INTO `introduce` VALUES (5, 'THƯƠNG HIỆU ĐÁNG TIN CẬY', 'Hãy để Lá Quê Spa quan tâm và yêu thương bạn nhiều hơn. Với mục tiêu giúp quý khách hàng luôn “Sống khỏe – Sống đẹp – Sống chất lượng”, Lá Quê Spa sẽ không ngừng nỗ lực hoàn thiện, kết hợp đa dạng các loại hình dịch vụ chăm sóc sức khỏe và làm đẹp toàn diện bằng các phương pháp trị liệu truyền thống hiệu quả đến các hệ thống thiết bị làm đẹp công nghệ cao hiện đại bậc nhất.\r\nNếu bạn đang cảm thấy mệt mỏi với áp lực học tập, công việc, gia đình,.. hãy nhấc điện thoại và đặt lịch tại Lá Quê Spa ngay.', '1312273716794933092894914375862276500605729n-3146.jpg', 'Hãy để Lá Quê Spa quan tâm và yêu thương bạn nhiều hơn. Với mục tiêu giúp quý khách hàng luôn “Sống khỏe – Sống đẹp – Sống chất lượng”, Lá Quê Spa sẽ không ngừng nỗ lực hoàn thiện, kết hợp đa dạng các loại hình dịch vụ chăm sóc sức khỏe và làm đẹp toàn diện bằng các phương pháp trị liệu truyền thống hiệu quả đến các hệ thống thiết bị làm đẹp công nghệ cao hiện đại bậc nhất.\r\nNếu bạn đang cảm thấy mệt mỏi với áp lực học tập, công việc, gia đình,.. hãy nhấc điện thoại và đặt lịch tại Lá Quê Spa ngay.', '2023-07-19 05:13:43');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `featured_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (1, 'ĐI SPA TRỊ MỤN CÓ TỐT KHÔNG? LỜI KHUYÊN CHO TÌNH TRẠNG DA MỤN', 'Mặc dù mụn không có ảnh hưởng xấu đến sức khỏe chúng ta nhưng nó chính là nguyên nhân gây ra nhiều mặc cảm và tự ti. Tình trạng mụn làm cho da mặt trở nên sần sùi, để lại sẹo xấu, dễ xuất hiện tình trạng lão hóa. Điều trị mụn là vấn đề được nhiều người quan tâm, đặc biệt là việc đi spa trị mụn có tốt không? Rất nhiều nơi quảng cáo sẽ trị dứt điểm mụn chỉ sau một liệu trình, liệu có đúng hay không?', 'spa-tri-tham-mun-hieu-qua-hinh-anh-7-5704.jpg', '2023-07-07 17:18:06');
INSERT INTO `post` VALUES (2, 'MẸ BẦU CÓ NÊN ĐI SPA CHĂM SÓC DA MẶT? | CẨM NANG CHO MẸ BẦU', 'Trong thời gian mang thai, cơ thể người phụ nữ thay đổi rất nhiều, đặc biệt dễ nổi mụn, khô sạm, nám, tàn thang,.. Điều này làm các chị em vô cùng mặc cảm. Vậy bà bầu có nên đi spa chăm sóc da mặt?\r\nSự thay đổi hormone khi mang thai cùng với cảm giác lo lắng có thể khiến các mẹ cảm thấy khó ngủ trong 3 tháng đầu. Ngoài ra, ốm nghén cũng là một trong những nhân tố ảnh hưởng giấc ngủ của mẹ bầu trong giai đoạn này.\r\nHơn nữa, cộng với đợt “ra quân” đầu tiên của những hormone trong thai kì như vậy khiến da mặt các mẹ không được rạng rỡ, xấu xí và làm tinh thần mệt mỏi hơn.', 'mun-viem-ba-bau-1-4343.jpg', '2023-07-18 19:07:53');
INSERT INTO `post` VALUES (3, 'NHỮNG CÁCH ĐƠN GIẢN ĐỂ GIẢI NHIỆT KHI TRONG THỜI TIẾT NÓNG BỨC, KHÓ CHỊU', 'Vào mùa hè, làm sao để biết cách giải nhiệt cơ thể hiệu quả lại đơn giản, dễ làm cho cơ thể mát mẻ? Khi cơ thể thường xuyên rơi vào tình trạng mệt mỏi do thời tiết nắng nóng hay hoạt động nhiều chúng ta nên làm gì để có thể giải nhiệt được nhanh nhất? Sau đây là 6 mẹo hạ nhiệt độ cơ thể khi nóng mà bạn không nên bỏ qua.', 'uongdunuocdelamdeptoandiendeponline2-5713.jpg', '2023-07-12 19:07:57');
INSERT INTO `post` VALUES (4, 'MASSAGE  VAI CỔ GÁY XUA TAN NỖI LO DÂN VĂN PHÒNG', 'Massage cổ – Bí kíp xua tan đau mỏi vai gáy cho dân văn phòng\r\nTính chất công việc phải ngồi 8 tiếng một ngày, ít có thời gian vận động nên hầu hết dân văn phòng đều bị đau mỏi vai gáy. Massage cổ được xem là phương pháp “cứu tinh” giúp xua tan đi những cơn đau đó một cách nhanh chóng và hiệu quả.', '2-massage-co-vai-gay-5554.jpg', '2023-07-09 19:08:00');
INSERT INTO `post` VALUES (5, 'TRÁNH NGUY CƠ ĐỘT QUỴ NHỜ MASSAGE CỔ VAI GÁY VÀ MASSAGE BODY', 'Tránh nguy cơ đột quỵ nhờ Massage cổ vai gáy và massage body\r\nTheo con số thống kê, hàng năm Việt Nam có khoảng 200.000 ca bệnh đột quỵ, con số này vẫn đang có chiều hướng gia tăng,đáng báo động. Đặc biệt căn bệnh này thường xảy ra ở người già sau 55 tuổi. Vậy đột quỵ là gì? Nguyên nhân gây đột quỵ là gì? Vì sao massage cổ vai gáy và massage body tránh nguy cơ đột quỵ? Bài viết này Lá Quê Spa sẽ giải đáp thắc mắc của các bạn nhé!', '27092017doisongphapluatyoniava-5881.jpg', '2023-07-25 19:08:03');
INSERT INTO `post` VALUES (6, 'TẠI SAO NÊN ĐI MASSAGE CHÂN THƯỜNG XUYÊN', 'Tại sao nên đi massage chân thường xuyên\r\nĐi massage chân thường xuyên mang lại nhiều lợi ích cho sức khỏe và trạng thái tinh thần của bạn. Dưới đây là một số lý do tại sao nên đi massage chân thường xuyên:\r\n\r\nGiảm căng thẳng và mệt mỏi: Massage chân giúp giảm căng thẳng và mệt mỏi do công việc hàng ngày hoặc hoạt động thể chất. Việc áp dụng áp lực và kỹ thuật massage chân nhẹ nhàng có thể giúp thư giãn cơ bắp, làm giảm căng cơ và giảm bớt cảm giác mệt mỏi.\r\nKích thích tuần hoàn máu: Massage chân kích thích tuần hoàn máu trong chân, giúp cung cấp dưỡng chất và oxy tốt hơn cho các cơ bắp và mô trong chân. Điều này có thể giảm sưng và tăng cường sự phục hồi sau khi tập luyện hoặc sau một ngày dài đứng hoặc đi lại.\r\nLàm giảm đau và cải thiện linh hoạt: Massage chân có thể giảm đau và cải thiện linh hoạt của cơ bắp và các khớp trong chân. Kỹ thuật massage giúp giãn cơ, làm tan các cục máu bị tắc nghẽn và giảm cảm giác đau, đồng thời tăng cường khả năng di chuyển và linh hoạt của chân.', 'cach-massage-ban-chan-thu-gian-tai-nha-3870.jpg', '2023-07-26 19:08:07');
INSERT INTO `post` VALUES (7, 'QUY TRÌNH GIÚP CÁC SPA TIẾP KHÁCH AN TOÀN MÙA COVID – 19', 'Corona virus (COVID – 19) tại Việt Nam đang là mối quan tâm hàng đầu của mọi người dân. Lá Quê Spa đã dựa trên những khuyến cáo của bộ y tế để đưa ra một quy trình tiếp khách an toàn dành cho các Spa mùa dịch Covid này.', 'p11-01-01-4133.jpg', '2023-07-05 19:08:10');
INSERT INTO `post` VALUES (8, 'GỘI ĐẦU DƯỠNG SINH CẢI THIỆN SỨC KHỎE, PHÒNG CHỐNG ĐỘT QUỴ', 'Gội đầu dưỡng sinh - Đả thông kinh lạc là phương pháp gội đầu kết hợp giữa nguyên tắc dưỡng sinh phương Đông cùng với các động tác massage trị liệu ở toàn bộ vùng đầu, vai, gáy, cổ và lưng theo nguyên tắc dưỡng sinh Trung Hoa. Liệu pháp này giúp cơ thể thoát khỏi uể oải, khi đó bạn sẽ cảm thấy thoải mái và thư thái hơn sau một ngày dài làm việc căng thẳng.', 'selina-spa-goi-dau-duong-sinh-1-2191.jpg', '2023-07-27 07:08:13');
INSERT INTO `post` VALUES (9, 'CĂNG DA MẶT TỰ NHIÊN VỚI LIỆU TRÌNH MASSAGE MẶT BẰNG NGỌC THẠCH ANH', 'Massage mặt với ngọc thạch anh là phương pháp trẻ hóa làn da có nguồn gốc từ Trung Hoa, được sử dụng bởi các hoàng hậu và thành viên cao cấp trong hoàng tộc ngày xưa.', '35816100510155501162990123912540412843281182n-1885.jpg', '2023-07-09 19:08:17');
INSERT INTO `post` VALUES (10, 'DETOX BẢN THÂN, DƯỠNG DA MẶT CHO TỐI CUỐI TUẦN RẢNH RỖI', 'Sau một tuần làm việc mệt mỏi, deadline “ngập đầu”, các bạn đừng quên dành thời gian “detox” lại tinh thần bằng cách chăm sóc bản thân và dưỡng da mặt nhé.\r\n\r\nChăm sóc da là việc ngày nào chúng ta cũng thực hiện. Thế nhưng, thay đổi một chút vào cuối tuần sẽ giúp bạn đón một tuần mới rạng rỡ và phấn khởi hơn nhiều đó. Cùng xem những tips đó là gì nhé!', '202102051527165111-4895.jpg', '2023-07-14 00:08:20');
INSERT INTO `post` VALUES (11, 'NÊN ĂN GÌ VÀ KIÊNG GÌ ĐỂ ĐIỀU TRỊ NÁM HIỆU QUẢ', 'Điều trị nám da mất không ít thời gian và tiền bạc. Ngoài việc, phải tuân thủ các bước bảo vệ da khỏi những yếu tố gây nám bên ngoài. Cần hiểu biết về chế độ dinh dưỡng hằng ngày để quá trình trị nám đạt được hiệu quả cao nhất.', 'traxanh-8945.jpg', '2023-07-06 15:08:25');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount_percent` int(11) NOT NULL,
  `discount_from_date` date NOT NULL,
  `discount_to_date` date NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_code` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `featured_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  CONSTRAINT `fk-category-product` FOREIGN KEY (`category_id`) REFERENCES `category_product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'KEM FACE TUYẾT', 980000, 50, '2023-07-08', '2025-07-01', ' Bí Mật Đầu Tiên \" KEM FACE TUYẾT giúp DA TRẮNG HỒNG TỰ NHIÊN \r\n\r\nBạn có làn da nâu, làn da đen sạm, ...bạn muốn \"lột xác\" trở thành nàng \"Bạch tuyết\" khiến bao chàng mê say đắm.\r\n Còn chần chừ gì mà không nhanh tay sở hữu ngay \" Kem Face Tuyết\r\n\r\n TUYỆT VỜI NHẤT là công thức dưỡng trắng da chuyên sâu, không chỉ tươi trẻ bên ngoài mà còn chắc khỏe từ sâu bên trong.', 1, 1000, '2023-07-08 10:24:37', '6sp-tet-01-3214.jpg', 1);
INSERT INTO `product` VALUES (2, 'MẦM NGHỆ TƯƠI', 300000, 54, '2023-07-08', '2025-07-01', '– Phục hồi khi da bị tổn thương, làm giảm các vết mẩn đỏ, các dấu hiệu kích ứng.Ngăn ngừa và trị mụn, ung thư da.\r\n\r\n– Trắng da và giúp da mềm mại\r\nHƯỚNG DẪN SỬ DỤNG\r\n– Bước 1: Rửa mặt sạch với sữa rửa mặt yến mạch Lá care\r\n\r\n– Bước 2: Lấy một lượng Kem Trị Mụn Lá care vừa đủ thoa đều lên mặt , dùng tay vỗ nhẹ giúp kem thẩm thấu sâu vào da.\r\n\r\n– Nên sử dụng đều đặn mỗi ngày để đạt hiệu quả cao nhất!', 2, 10001, '2023-07-08 10:31:17', '6sp-tet-03-4289.jpg', 1);
INSERT INTO `product` VALUES (3, 'MÀNG HYDRO DETOX THẢI ĐỘC DA', 620000, 52, '2023-07-08', '2025-07-08', 'Công Dụng:\r\n- Se cồi mụn, đẩy độc tố, mụn ẩn\r\n- Kiềm dầu, phục hồi da\r\n- Hỗ trợ làm sáng mịn da\r\n- Giảm nhờn, làm mờ thâm, nám và tàn nhang.\r\nHướng dẫn sử dụng:\r\nRửa mặt sạch, chọc đầu mụn, rồi bôi tinh chất 2-3 lần/ ngày.\r\nTinh chất tái sinh khi bôi lên da được da hấp thụ và đẩy hết nhân dưới bề mặt da ra ngoài. Thời gian đầu sử dụng, da mặt bạn có thể xuất hiện nhiều mụn hơn, nhưng khi quá trình đẩy nhanh mụn này sẽ mau chóng kết thúc, các nhân mụn nhỏ sẽ tự triệt tiêu, khi mụn trồi lên và đã già bạn có thể ghé Spa lấy sạch để loại bỏ nhân mụn.', 3, 5000, '2023-07-08 10:32:54', '6sp-tet-05-8172.jpg', 1);
INSERT INTO `product` VALUES (9, 'CAO DIỆP THẠCH', 590000, 51, '2023-07-08', '2025-07-08', 'CĂNG BÓNG, nâng cơ TRẺ HÓA tái tạo da tầng sâu TỨC THÌ - KHÔNG PHẪU THUẬT - CHỈ CẦN SỬ DỤNG MỖI NGÀY\r\n\r\n Tăng sinh collagen tự nhiên,tái tạo da sáng mịn\r\n An toàn, hiệu quả không xâm lấn, không tổn thương, không bong tróc\r\n Sản phẩm là cứu tinh của làn da lão hoá, nếp nhăn và chảy xệ\r\n Cải thiện độ đàn hồi, se khít lỗ chân lông, Căng bóng và trẻ hóa làn da', 9, 1000, '2023-07-08 10:34:45', '6sp-tet-02-9539.jpg', 1);
INSERT INTO `product` VALUES (11, 'KEM BODY THẠCH BĂNG', 750000, 48, '2023-07-08', '2025-07-08', 'DA TRẮNG SÁNG AUTO SANG CHẢNH\r\nTiễn da ngăm đón da mới \r\nCam kết an toàn – hiệu quả, ngại gì không thử nghe tư vấn!\r\n\r\nBật tone trắng sáng da, phục hồi da khô - hư tổn - mỏng yếu nổi mao mạch\r\nLàm trắng da, căng bóng , tái tạo da\r\nDa toàn thân ẩm mịn,trắng hồng, xóa mờ các rãnh da khô sần.', 11, 1000, '2023-07-08 10:36:00', '6sp-tet-06-6897.jpg', 1);
INSERT INTO `product` VALUES (12, 'SỮA Ủ TRẮNG TOÀN THÂN', 400000, 45, '2023-07-08', '2025-07-08', 'Phương pháp trắng da mịn màng ngay tại nhà, không cần đi spa\r\nSữa Ủ trắng BODY Collagen giúp trắng bật tone ngay lần đầu sử dụng\r\nGiúp hiệu chỉnh các vấn đề thâm, sạm da làm đều màu giúp da trắng mịn đồng thời phục hồi và nuôi dưỡng làn da trở nên khỏe mạnh, tràn đầy sức sống\r\nTrị viêm nang lông, mụn lưng hiệu quả\r\nHương thơm dịu dàng, tự nhiên mang làm cảm giác thoái mái, thư giãn.', 12, 1000, '2023-07-08 10:37:18', '6sp-tet-04-4608.jpg', 1);
INSERT INTO `product` VALUES (14, 'BỘ SẢN PHẨM CHĂM SÓC TÓC LÁ ORGANIC', 1620000, 38, '2023-07-08', '2025-07-08', ' Với COMBO LÁ ORGANIC cao cấp kết hợp hoàn hào: Dầu Gội + Tinh dầu dưỡng tóc + Kem Ủ mềm mượt thảo mộc\r\n\r\n Dầu gội làm sạch da đầu, cho tóc mọc nhiều, chắc khỏe.\r\n\r\n Tinh dầu kích thích tóc mọc dày và nhiều.\r\n\r\n Dầu xả cho mái tóc suôn mượt, không còn chẻ ngọn.\r\n\r\n Thành phần hoàn toàn tự nhiên 100% từ thảo mộc Việt, giúp tóc con mọc dày trở lại', 14, 1000, '2023-07-08 10:38:49', '11-4537.jpg', 3);
INSERT INTO `product` VALUES (15, 'DẦU GỘI THẢO MỘC', 540000, 44, '2023-07-08', '2025-07-08', 'Bộ Dầu gội LÁ ORGANIC thảo mộc thiên nhiên - đang là cái tên được nhắc đến trong việc lựa chọn sản phẩm chăm sóc tóc từ thiên nhiên được hội chị em quan tâm bởi sự lành tính của các loại thảo mộc tự nhiên.\r\n\r\nNgoài khả năng làm sạch bụi bẩn, bã nhờn trên da đầu và tóc, sản phẩm còn bổ sung dưỡng chất và thành phần chống oxy hóa cho mái tóc chắc khỏe, suôn mềm nhờ chứa chiết xuất olive và bồ kết.', 15, 1000, '2023-07-08 10:40:47', '1313455518186807856386088128370363398730845n-7215.jpg', 3);
INSERT INTO `product` VALUES (16, 'KEM Ủ TÓC THẢO MỘC', 540000, 44, '2023-07-08', '2025-07-08', 'Kem ủ tóc THẢO MỘC của Lá organic sẽ giúp bạn chăm sóc từng sợi tóc chắc khỏe từ bên trong, óng ả bên ngoài với những dưỡng chất từ thiên nhiên.\r\nBạn sẽ nhận thấy sự khác biệt khi chạm vào mái tóc, cảm nhận được độ mát mềm tự nhiên vốn có của những sợi tóc. Sự kỳ diệu đó là hoàn toàn có thật, chỉ cần bạn cho mình và mái tóc một chút thời gian, một chút kiên trì, hãy thấu hiểu tóc và trân trọng nó như những gì nó vốn có, giống như sự trân trọng bạn dành cho chính mình vậy.', 16, 1000, '2023-07-08 10:41:44', '13101753318908473077209524708479792506587295n-3951.jpg', 3);
INSERT INTO `product` VALUES (17, 'TINH DẦU DƯỠNG TÓC', 540000, 44, '2023-07-08', '2025-07-08', 'Trúc xinh trúc mọc đầu đình\r\n Tóc thề đen mướt “mọc” nhờ #Lácare \r\n\r\nXịt dưỡng tóc bồng bềnh, kích thích mọc tóc đến từ nhà LÁ CARE VIỆT NAM đảm bảo  100 % THUẦN CHAY HỮU CƠ \r\nNuôi dưỡng mái tóc, da đầu trở nên KHOẺ MẠNH - CHẮC KHOẺ nang tóc và giảm độ dầu nhờn của da\r\n\r\n• Tăng cường sức sống cho mái tóc yếu, giúp duy trì chân tóc chắc khỏe, bóng mượt\r\n• Liệu pháp hương thơm giải phóng căng thẳng và mệt mỏi, cảm nhận mùi hương của hương thảo, tràm trà, hoa oải hương, dầu bạc hà', 17, 1010, '2023-07-08 10:43:06', '131233437405011890927945344349744848850577n-7098.jpg', 3);

-- ----------------------------
-- Table structure for product_information
-- ----------------------------
DROP TABLE IF EXISTS `product_information`;
CREATE TABLE `product_information`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `featured_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk-product-information`(`product_id`) USING BTREE,
  CONSTRAINT `fk-product-information` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_information
-- ----------------------------
INSERT INTO `product_information` VALUES (1, '6sp-tet-01-3214.jpg', 1, NULL);
INSERT INTO `product_information` VALUES (2, '6sp-tet-01-6123.jpg', 1, NULL);
INSERT INTO `product_information` VALUES (3, '118274934_385170285800800_6866931290209126927_n.jpg', 9, NULL);
INSERT INTO `product_information` VALUES (4, '121215048_419809579003537_1930540645117993298_n.jpg', 3, NULL);
INSERT INTO `product_information` VALUES (5, '118509415_388896775428151_5800972433632108499_n.jpg', 11, NULL);
INSERT INTO `product_information` VALUES (6, '118773732_391762921808203_4864553073459760678_n.jpg', 12, NULL);
INSERT INTO `product_information` VALUES (7, '336200546_739901534458780_7197539600021069891_n.jpg', 14, NULL);
INSERT INTO `product_information` VALUES (8, '132199362_473200663664428_6871021510781835402_n.jpg', 15, NULL);
INSERT INTO `product_information` VALUES (9, '350507871_6283638451705147_8385710501305660547_n', 17, 'Trúc xinh trúc mọc đầu đình<br>\r\n Tóc thề đen mướt “mọc” nhờ #Lácare<br>Xịt dưỡng tóc bồng bềnh, kích thích mọc tóc đến từ nhà LÁ CARE VIỆT NAM đảm bảo  100 % THUẦN CHAY HỮU CƠ<br>\r\nNuôi dưỡng mái tóc, da đầu trở nên KHOẺ MẠNH - CHẮC KHOẺ nang tóc và giảm độ dầu nhờn của da<br>• Tăng cường sức sống cho mái tóc yếu, giúp duy trì chân tóc chắc khỏe, bóng mượt<br>\r\n• Liệu pháp hương thơm giải phóng căng thẳng và mệt mỏi, cảm nhận mùi hương của hương thảo, tràm trà, hoa oải hương, dầu bạc hà');

-- ----------------------------
-- Table structure for promotion
-- ----------------------------
DROP TABLE IF EXISTS `promotion`;
CREATE TABLE `promotion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `featured_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promotion
-- ----------------------------
INSERT INTO `promotion` VALUES (1, 'z4487972177790e65cc32d6d410e54633da2129348f0ff-35190.jpg');
INSERT INTO `promotion` VALUES (2, 'quaylientaynhanquangay2-01-4990.png');

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `featured_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `details_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_category_service`(`category_id`) USING BTREE,
  CONSTRAINT `fk_category_service` FOREIGN KEY (`category_id`) REFERENCES `category_service` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (1, 'MASSAGE BODY TINH DẦU SẢ CHANH', 'Liệu trình massage body tinh dầu sả chanh giúp bạn giải tỏa mệt mỏi, cảm giác đau nhức các cơ, đồng thời giúp lưu thông khí huyết, giúp thư thái tinh thần, mang đến làn da mịn màng, tươi trẻ.', 'body-4-01-5504.jpg', 'Cân bằng trạng thái tâm lý, chống trầm cảm.<br>\r\nHỗ trợ điều trị các vấn đề về cơ, xương, khớp.<br>\r\nĐây là 1 bài massage hữu hiệu giúp cơ thể phục hồi năng lượng.<br>\r\nGiúp tinh thần sảng khoái, giải tỏa stress và kéo dài tuổi thọ.<br>\r\nCó khả năng ổn định và thay đổi tâm trạng của con người.<br>\r\nNuôi dưỡng làn da, đặc biệt dành cho da khô.<br>\r\nCải thiện giấc ngủ, phòng ngừa bệnh, tăng cường hệ miễn dịch cho cơ thể.<br>\r\nTăng sự tuần hoàn máu, tăng hệ miễn dịch cho cơ thể.<br>\r\nVới đội ngũ kỹ thuật viên tay nghề nhiều năm kinh nghiệm sẽ giúp bạn thật sự thoải mái thư giãn.', '118603790_2477552322536991_3292852609950450622_n.jpg', '60', 299000, '2023-07-05 19:40:40', 1);
INSERT INTO `service` VALUES (3, 'MASSAGE BODY KHOÁNG CẤP DƯỠNG VITAMIN', 'Sử dụng Tinh chất kem dưỡng chiết xuất trái cây tươi & Vitamin E cùng bàn tay huyền diệu với các động tác massage thúc đẩy tuần hoàn máu để nuôi dưỡng da, tăng độ săn chắc đàn hồi giúp da sáng mịn. Đồng thời, mỏi mệt được xóa tan, mang đến cho bạn cảm giác thư giãn và sảng khoái.', 'body-6-01-5410.jpg', 'Trong mỗi con người, dòng chảy năng lượng còn gọi là “khí”, sự tuần hoàn lưu thông khí giúp cơ thể được dẻo dai, minh mẫn và nhanh nhẹn. Theo từ gốc Hy Lạp, massage có nghĩa là xoa bóp, massage chính là cách vận khí,chuyển khí để dòng chảy này lưu thông tốt nhất, khơi thông lại nguồn năng lượng tiềm năng trong cơ thể.<br>\r\nCó nhiều loại massage khác nhau, nhưng dù ở bất kỳ hình thức nào đi nữa thì massage vẫn có cùng mục đích chăm sóc sức khỏe tổng thể như: giảm căng thẳng, thư giãn cơ thể để khỏe mạnh hơn, cải thiện lưu thông máu, ổn định huyết áp, tránh được những cơn đau nhức, săn chắc cơ bắp và ngủ tốt hơn. Song, việc lựa chọn gói massage phù hợp với da khô thì không phải spa nào cũng đáp ứng được nhu cầu của khách hàng,kem massage nào phù hợp cho da, loại kem nào có thành phần thân thiện với da… ?<br>\r\nMassage khoáng dưỡng ẩm toàn thân tại LÁ QUÊ SPA được chiết xuất từ dầu cám gạo, dầu olive và tinh dầu oải hương, phong lữ và hương thảo tăng cường dưỡng ẩm cho da giúp mềm mại tự nhiên. Tăng lưu thông máu cho da và giúp thư giãn tinh thần, giảm stress. Sản phẩm được hình thành từ những dưỡng chất từ thiên nhiên, nên dung được cho cả phụ nữ có thai, phù hợp với tất cả mọi loại da.', '669-massage_body_toan_than2.jpg', '75', 350000, '2023-07-25 19:40:40', 1);
INSERT INTO `service` VALUES (4, 'MASSAGE BODY LƯU QUY HỎA', 'Liệu trình có công dụng thải độc, giảm đau, chống stress… giúp thư giãn và trị liệu các vấn đề về sức khỏe.\r\nTrị liệu bằng Đá nóng và dầu aroma giúp bạn nhanh chóng lấy lại trạng thái cân bằng và hồi phục sức khỏe, xua tan mệt mỏi và đánh thức mọi giác quan, tái tạo nguồn năng lượng mới.', 'body3-01-8066.jpg', 'NẾU CƠ THỂ BẠN ĐÃ QUÁ MỆT MỎI, ĐAU NHỨC<br>\r\nNếu bạn đã đi massage nhiều nơi nhưng chẳng đâu ưng ý vì:<br>\r\nNhân viên hời hợt, massage không hiệu quả<br>\r\nKhông gian ồn ã, xô bồ<br>\r\nThiếu sự an tĩnh, riêng tư…<br>\r\nVậy thì mời bạn ghé LÁ QUÊ SPA để trải nghiệm masage body trị liệu “ LƯU QUY HOẢ “<br>\r\nTận hưởng quy trình massage bấm huyệt chuyên sâu từ những chuyên gia giàu kinh nghiệm và lành nghề.<br>\r\nThực hiện liệu trình day ấn huyệt điều trị toàn thân với tinh dầu, thảo dược và đá nóng<br>\r\nMassage toàn thân, dò tìm các điểm tắc, xoa bóp giúp khí huyết lưu thông, ngủ ngon hơn<br>\r\nVỗ về cả cơ thể và tinh thần bằng không gian thư giãn, âm nhạc, mùi hương và các tác động cơ học', '179245493_2658357841123104_227816866987109156_n.jpg', '60', 350000, '2023-07-20 19:40:40', 1);
INSERT INTO `service` VALUES (5, 'MASSAGE BODY GỪNG TƯƠI', 'Massage Gừng tươi liệu pháp vừa thư giãn vừa chữa dứt bệnh Cảm cúm , đau nhức toàn thân.Vừa có khả năng giải quyết nhiều triệu chứng khó chịu như: lo âu, đau đầu, mất ngủ, viêm khớp, đau lưng, đau kinh niên,… những triệu chứng này đều gây nhiều ảnh hưởng bất lợi đến sức khỏe và độ tươi sáng của làn da phụ nữ.', 'body2-01-9606.jpg', 'Gừng được xem là 1 loại dược liệu có tính ấm, giúp giải cảm và giảm đau ở các vùng xương khớp, làm dịu các vùng cơ bị căng mỏi.<br>\r\nMassage gừng còn có tác dụng kép là giúp lưu thông khí huyết, làm giảm đau nhức cơ một cách rõ rệt.<br>\r\nVới những người có làn da khô thì massage gừng còn có tác dụng làm mềm và giữ ẩm cho da.Đồng thời, mùi hương Gừng mang đến cảm giác thư giãn, xoa dịu thần kinh, giúp ngon giấc.<br>\r\nLiệu trình kích hoạt năng lượng tiềm ẩn, khai thông huyệt vị, thư giãn mọi giác quan, ngăn ngừa đột quỵ, giảm stress hữu hiệu và hỗ trợ điều trị các bệnh về xương khớp, tai mũi họng. “Chỉ 1 lần trải nghiệm, bạn sẽ khoẻ ngay lập tức, mà không cần đến một viên thuốc giảm đau nào” là lời khen của tất cả khách hàng sử dụng liệu pháp này', '325934176_839331547132120_5764474180111860323_n.jpg', '60', 349000, '2023-07-20 19:40:40', 1);
INSERT INTO `service` VALUES (6, 'TAM ĐỒNG MỘC MIÊN', 'Là một phương pháp hữu ích, đem lại hiệu quả cao khi dùng “Thảo dược 34 loại kết hợp cùng kĩ thuật Lăn điếu đồng khi làm nóng thì mang tính nóng ấm cao (thuần dương) điều trị đau nhức xương khớp ,giảm đau vai cổ gáy một cách hiệu quả và nhanh chóng nhất\r\n Giảm đau nhức xương khớp. Trị đau lưng, cột sống.', 'body1-01-01-6216.jpg', 'Là một phương pháp hữu ích, đem lại hiệu quả cao khi dùng “Thảo dược 34 loại“ kết hợp cùng kĩ thuật chữa bệnh hoặc làm đẹp.<br>\r\n• Giảm đau nhức xương khớp<br>\r\n• Trị đau lưng, cột sống<br>\r\n• Giảm đau vai gáy<br>\r\n• Thon gọn cơ thể<br><br>\r\nCông dụng :<br>\r\n Phương pháp hoạt động dựa trên nguyên lý xông, đắp… thảo dược 34 loại đã đem lại các hiệu quả chữa bệnh không ngờ cho người dùng.<br>\r\n Chữa các bệnh đau lưng, vai gáy, giảm đau đầu mệt mỏi,… Không chỉ có vậy, nó còn là một nguyên liệu để chị em có được làn da trắng mịn và giữ gìn vóc dáng thon gọn.<br>\r\n Từ những bệnh đau nhức xương khớp ở người già cho đến những bệnh hay mắc phải trong mùa đông như cảm cúm, ho, méo miệng… đều có thể dùng phương pháp này để chữa trị.<br>\r\n Điếu đồng khi làm nóng thì mang tính nóng ấm cao (thuần dương), nên khi dùng để làm nóng (Tam đồng) các huyệt gọi sẽ làm khí huyết lưu thông mạnh, gây ấm nóng cơ thể, giảm đau, sưng, mỏi cơ, tiết dịch, giải độc, làm mềm chỗ cứng và tan máu tụ. Điếu Đồng được ứng dụng nhiều trong xoa bóp bấm huyệt của Đông Y và day ấn, lăn của Diện Chẩn.', '73349294_2227487917543434_5671020718230339584_n.jpg', '90', 439000, '2023-07-12 19:40:40', 1);
INSERT INTO `service` VALUES (7, 'HỒNG QUANG TRƯỢT GIÁC', 'Dưỡng sinh Hồng Quang Trượt Gíac là sự kết hợp hoàn hảo giữa phương pháp tác động cột sống và lý luận y học cổ truyền giúp khai thông khí huyết ở những vùng bị tắc, khai mở các huyệt của kỳ kinh bát mạch theo nhịp độ sinh học đồng bộ giữa động tác và hơi thở thuận với nhịp độ sinh học trao đổi chất của âm dương.', 'body-5-01-9188.jpg', 'Mùa này Sài Gòn nắng mưa thất thường dễ làm bạn \"Đau đầu, mệt mỏi\"<br>\r\nĐiều này có thể xảy ra với bất cứ ai và không phải là vấn đề quá nghiêm trọng nhưng đôi khi cũng gây ra không ít khó khăn cho công việc, sinh hoạt làm nhiều người vô cùng mệt mỏi.<br>\r\nHồng Quang Trượt Giác sử dụng phương pháp massage kết hợp ấn huyệt giúp điều hòa khí huyết, máu huyết lưu thông tốt, cung cấp oxi cho não bộ, làm giãn thần kinh, giảm căng thẳng, giảm đau đầu và tăng khả năng tập trung rất hiệu quả.<br><br>\r\nQuy trình điều trị:<br>\r\nDùng tinh dầu gừng - động lực Thông Massage làm nóng, mở lỗ chân lông, khai mở huyệt vị vùng lưng.  Với thành phần độc hoạt, bột rễ xuyên khung, sâm cam thảo, bột rễ ngưu tất,…Thẩm thấu nhanh chóng, tăng cường thúc đẩy tuần hoàn máu.<br>\r\nDùng dầu tinh chất động lực làm khai thông thủy điểm (khai thông huyệt vị),  thành phần chiết xuất từ các thành phần thảo dược quý có đặc tính quy kinh tìm tạng<br>\r\nDùng cây lăn ngải nóng năng lượng bài trừ độc tố ra bên ngoài. Thành phần chiết xuất từ thảo dược quý như xuyên khung, độc hoạt, đương quy, tàng hồng hoa,… tán thành bột, thông qua nguyên lý ngoại nhiệt lượng làm ấm nóng, giúp bổ sung năng lượng', '318337573_1175979929764735_1804317958304037550_n.jpg', '60', 359000, '2023-07-20 19:40:40', 1);
INSERT INTO `service` VALUES (8, 'MASSAGE CỔ TRUYỀN PHAYA THAI', 'Massage Thái chính là phương pháp trị liệu dựa trên các tác động đến 10 mạch năng lượng hay còn gọi là mạch sen. Tất cả các mạch này đều chạy khắp cơ thể, do vậy khi tác động sẽ mang lại cảm giác thư giãn giảm căng thẳng, cơ thể khỏe mạnh hơn cho mọi người', 'web-01-4905.jpg', NULL, NULL, '60', 359000, '2023-07-20 19:40:40', 1);
INSERT INTO `service` VALUES (9, 'MASSAGE ĐÁ MUỐI HIMALAYA', 'Massage body đá muối \" Liệu pháp tuyệt vời cho mọi cơ thể & làn da\"\r\nMassage body đá Muối Himalaya đang thực sự làm mưa làm gió hiện nay bởi tác dụng lưu thông khí huyết và lấy lại năng lượng nhanh chóng cho cơ thể.\r\nMassage đá muối Himalaya là loại hình massage đặc biệt của LÁ QUÊ SPA mang lại sự thư giãn toàn phần.\r\nSự kết hợp hoàn hảo giữa các động tác massage body với năng lượng đá muối Himalaya và tinh dầu chiết xuất hoàn toàn tự nhiên giúp giảm mệt mỏi, lo lắng, phiền muộn, tăng cường sức khỏe, giúp bạn sở hữu nét đẹp không tuổi.', '30962237711299945043632785000816303403818333n-1217.jpg', 'Massage body đá muối \" Liệu pháp tuyệt vời cho mọi cơ thể & làn da\"<br>\r\nMassage body đá Muối Himalaya đang thực sự làm mưa làm gió hiện nay bởi tác dụng lưu thông khí huyết và lấy lại năng lượng nhanh chóng cho cơ thể.<br>\r\nMassage body với tinh dầu và đá muối Himalaya sẽ giúp lưu thông khí huyết trong cơ thể, tạo cảm giác thoải mái, kích thích cơ thể tự bài tiết, đào thải độc tố, giảm căng các cơ bắp, các dây thần kinh, đả thông kinh mạch, làm giảm sự mệt mỏi. Đặc biệt tiếp thêm nguồn năng lượng và sinh khí mới cho cơ thể con người sau những giờ phút làm việc mệt mỏi, căng thẳng.<br>\r\nLiệu pháp này vô cùng hữu hiệu với những người ngồi nhiều, làm việc nhiều với máy tính, làm việc trong môi trường điều hòa không khí, yếm khí. Để liệu pháp phát huy công dụng tối ưu nhất, bạn có thể massage cơ thể từ 1-2 lần/ tuần.', '307936438_3003317483293803_1746992305345257051_n.jpg', '60', 359000, '2023-07-04 19:40:40', 1);
INSERT INTO `service` VALUES (10, 'NÂNG CƠ NGỌC ĐÔNG DƯƠNG (CƠ BẢN)', 'MASSAGE NÂNG CƠ NGỌC ĐÔNG DƯƠNG\r\nPhương pháp sử dụng ngọc thạch thiên nhiên kết hợp các thao tác ấn huyệt kinh lạc mặt giúp giải quyết triệt để các vấn đề về da, đả thông kinh mạch trên khuôn mặt, nâng cơ trẻ hóa, bổ sung khí huyết', 'web-8-01-01-8574.jpg', 'MASSAGE NÂNG CƠ NGỌC ĐÔNG DƯƠNG\r\nPhương pháp sử dụng ngọc thạch thiên nhiên kết hợp các thao tác ấn huyệt kinh lạc mặt giúp giải quyết triệt để các vấn đề về da, đả thông kinh mạch trên khuôn mặt, nâng cơ trẻ hóa, bổ sung khí huyết', 'gallery_original.png', '75', 269000, '2023-07-20 19:40:40', 2);
INSERT INTO `service` VALUES (11, 'DETOX THẢI CHÌ (CƠ BẢN)', '(Thải chì)Công nghệ sử dụng tần số siêu âm với hơn 1 triệu điểm sóng trong 1 giây, có khả năng tách độc tố, chì ra khỏi da, đào thải theo cơ chế tự nhiên.', '2-01-4047.jpg', NULL, NULL, '60', 199000, '2023-07-18 19:40:55', 2);
INSERT INTO `service` VALUES (12, 'TBG NOÃN CÁ HỒI (CHUYÊN SÂU)', 'CÔNG DỤNG THẦN KỲ CỦA TẾ BÀO GỐC - NOÃN CÁ HỒI<br>\r\nCấy 1 lần = dưỡng da mấy năm<br>\r\n\"THẦN DƯỢC CHO TUỔI THANH XUÂN”<br>\r\n\r\n✔️Thu nhỏ lỗ chân lông.<br>\r\n✔️Ngăn ngừa mụn.<br>\r\n✔️Làm trẻ hoá da.<br>\r\n✔️Phục hồi và tái tạo da hư tổn.<br>\r\n✔️Làm căng bóng & sáng da.', 'web4-01-2894.jpg', NULL, NULL, '90', 590000, '2023-07-18 19:40:59', 2);
INSERT INTO `service` VALUES (13, 'VITAMIN NANO 3D ( CƠ BẢN)', 'Một trong những bí thuật ĐẸP BÊN NGOÀI - KHOẺ BÊN TRONG hàng đầu từ cổ chí kim.  Không chỉ giúp thư giãn sâu, làm dịu tinh thần mà còn giúp:<br>\r\n\r\n▪️Lưu thông khí huyết, Tăng cường trao đổi chất trên tế bào da<br>\r\n\r\n▪️Giảm đau nhức mỏi,tê bì chân tay<br>\r\n\r\n▪️Giúp da sáng mịn,hồng hào<br>\r\n\r\n▪️Trẻ hóa làn da từ sâu bên trong,ngủ ngon sâu giấc', '1-01-3327.jpg', 'Một trong những bí thuật \"ĐẸP BÊN NGOÀI - KHỎE BÊN TRONG\" hàng đầu từ cổ chí kim.<br>\r\nKhông chỉ giúp thư giãn sâu, làm dịu tinh thần mà còn giúp:<br>\r\n▪️ Lưu thông khí huyết, tăng cường trao đổi chất trên tế bào da<br>\r\n▪️ Giảm đau nhức mỏi, tê bì chân tay<br>\r\n▪️ Giúp da sáng mịn, hồng hào<br>\r\n▪️ Trẻ hóa làn da từ sâu bên trong, ngủ ngon sâu giấc', '120844820_2508818859410337_3188523741337734410_n.jpg', '60', 199000, '2023-07-12 19:41:02', 2);
INSERT INTO `service` VALUES (14, 'TBG NHAU THAI TƯƠI (CHUYÊN SÂU)', 'Hồi sinh trẻ hóa làn da ngay lập tức từ lần trải nghiệm đầu tiên với công nghệ NÂNG CƠ ĐỈNH CAO BÍ MẬT', 'web5-01-01-3921.jpg', NULL, NULL, '90', 399000, '2023-07-25 19:41:05', 2);
INSERT INTO `service` VALUES (15, 'TẢO VOLAYON PREMIUM (CHUYÊN SÂU)', '(Volayon)Da trắng sáng - mịn màng.Hỗ trợ điều trị da giãn mao mạch\r\n Tăng độ đàn hồi của da - phục hồi da hư tổn\r\n Cải thiện sắc tố da, da trắng hồng khỏe mạnh', 'web-7-01-3972.jpg', NULL, NULL, '90', 490000, '2023-07-14 19:41:09', 2);
INSERT INTO `service` VALUES (16, 'COLLAGEN NGUYÊN SINH TINH KHIẾT (CHUYÊN SÂU)', 'CẤY COLLAGEN TƯƠI – BÍ QUYẾT TRẺ HÓA LÀN DA HIỆU QUẢ<br>\r\n\r\nMột liệu trình Cấy collagen tươi có thể giúp làn da của bạn trẻ lại 10 tuổi. Cải thiện rõ rệt các tình trạng như đồi mồi, chảy xệ, nếp nhăn, chùng nhão trên da.<br>\r\n\r\n► Làm tươi sáng vùng da sậm màu, thâm đen, nám và tàn nhang hiệu quả<br>\r\n\r\n► Cải thiện vùng da không đều màu, làm đầy sẹo lõm<br>\r\n\r\n►  Bạn sẽ sở hữu ngay làn da tươi sáng, mịn màng, khỏe mạnh', '3-01-01-4044.jpg', NULL, NULL, '90', 499000, '2023-07-10 19:41:13', 2);
INSERT INTO `service` VALUES (17, 'VI TẢO FUSION (CHUYÊN SÂU)', 'Vi tảo Fusion ( thay da tảo biển ) là phương pháp đưa các dưỡng chất từ tảo biển vào sâu trong da để nuôi dưỡng, kích thích hoạt động tái tạo da.<br>\r\n➡ Kích thích sản sinh collagen<br>\r\n➡ Căng bóng làn da, se khít lỗ chân lông<br>\r\n➡ Làm da chắc khỏe, không bị lão hóa chảy sệ<br>\r\n➡ Cải thiện sắc tố , nếp nhăn<br>\r\n✔️ Phương pháp làm đẹp không xâm lấn', 'web-6-01-6285.jpg', NULL, NULL, '90', 899000, '2023-07-09 19:41:16', 2);
INSERT INTO `service` VALUES (18, 'GỘI ĐẦU THẢO MỘC', 'Gội đầu dưỡng sinh thảo mộc là liệu trình đặc biệt nhà Lá Quê Spa, kéo dài trong 45 phút, bao gồm việc làm sạch da đầu, tóc kết hợp với massage mặt và vùng đầu dưỡng sinh\r\nLiệu trình này giúp chăm sóc da đầu và tóc sâu từ bên trong, kích thích mọc tóc, mang đến cảm giác thư thái cũng như giúp giảm đau nhức vùng đầu.\r\nĐiểm khác biệt của liệu trình này tại Lá Quê Spa là sử dụng các nguyên liệu thảo dược truyền thống như bồ kết, sả chanh,bồ kết, cỏ ngũ sắc, cỏ mần trầu, hương nhu; tinh dầu bưởi,… đã được chứng minh với tác dụng chống nấm, ngăn ngừa gàu, làm khỏe chân tóc, kích thích mọc tóc và làm bồng bềnh, bóng mượt mái tóc.', 'toc-2-01-9448.jpg', NULL, NULL, '45', 99000, '2023-07-28 19:41:21', 3);
INSERT INTO `service` VALUES (19, 'COMBO NGƯỜI ĐẸP TÓC MÂY', 'Combo gội đầu \"NGƯỜI ĐẸP TÓC MÂY\"\r\nĐưa con người trở về với nguồn gốc thiên nhiên thuần khiết xa xưa của thế giới chúng ta\r\nQuy trình dịch vụ làm sạch đầu được kết hợp với massage trị liệu cho toàn bộ vùng đầu , vai , gáy , cổ và mặt . Sử dụng kỹ thuật day , bấm huyệt , xoa bóp tổng thể để tác động đến các huyệt vị , kinh lạc , hệ tuần hoàn, hệ bạch huyết , hệ thần kinh sau khi đã làm sạch tóc và da đầu.', 'toc1-01-8473.jpg', '•• COMBO GỘI ĐẦU NGƯỜI ĐẸP TÓC MÂY ••<br>\r\nĐưa con người trở về với nguồn gốc thiên nhiên thuần khiết xa xưa của thế giới chúng ta<br>\r\n-------------------------------------<br>\r\nQuy trình dịch vụ làm sạch đầu được kết hợp với massage trị liệu cho toàn bộ vùng đầu, vai, gáy, cổ và mặt. Sử dụng kỹ thuật day, bấm huyệt, xoa bóp tổng thể để tác động đến các huyệt vị, kinh lạc, hệ tuần hoàn, hệ bạch huyết, hệ thần kinh sau khi đã làm sạch tóc và da đầu.<br>\r\nLiệu pháp này có tác dụng đả thông kinh mạch, tăng cường tuần hoàn máu thông qua các mao mạch, chân tóc hay huyệt vị.', '350307974_748233787045897_6011587704811284960_n.jpg', '90', 199000, '2023-07-08 19:41:25', 3);
INSERT INTO `service` VALUES (20, 'COMBO EM VỀ TINH KHÔI', 'Combo \"EM VỀ TINH KHÔI\" \r\nNhắc đến cụm từ “EM VỀ TINH KHÔI”chắc chắn chúng ta sẽ nghĩ ngay đến hình ảnh cô gái Việt với mái tóc dài cùng làn da trắng mịn màng.....phải không ạ ?\r\nCombo “Gội đầu dưỡng sinh thảo mộc kết hợp điều trị da Detox cleansing” sẽ giúp bạn trở nên tỏa sáng như mong ước', 'toc-3-01-3568.jpg', 'Combo \"EM VỀ TINH KHÔI\" \r\nNhắc đến cụm từ “EM VỀ TINH KHÔI”chắc chắn chúng ta sẽ nghĩ ngay đến hình ảnh cô gái Việt với mái tóc dài cùng làn da trắng mịn màng.....phải không ạ ?\r\nCombo “Gội đầu dưỡng sinh thảo mộc kết hợp điều trị da Detox cleansing” sẽ giúp bạn trở nên tỏa sáng như mong ước', '339577471_523374119754366_3946983535163178441_n.jpg', '90', 299000, '2023-06-28 19:41:28', 3);
INSERT INTO `service` VALUES (21, 'COMBO GỘI DƯỠNG SINH TRUNG HOA \"LẠC THIÊN TIÊN CẢNH\"', 'Không đơn thuần chỉ là làm sạch tóc. Gội dưỡng sinh trung hoa còn đem lại những giá trị sức khoẻ lâu dài khác, như:<br>\r\n\r\n• Đả thông kinh lạc, tuần hoàn mạch máu<br>\r\n\r\n• Tái tạo mái tóc, xóa tan các bệnh da đầu<br>\r\n\r\n• Ngăn chặn lão hóa và ổn định huyết áp<br>\r\n\r\n• Cải thiện khả năng tập trung, giảm lo âu, mệt mỏi<br>\r\n\r\n• Loại bỏ các độc tố, giúp thanh lọc cơ thể.', '31723291730582507478004767529870801244807321n-6790.jpg', 'Gội đầu Trung Hoa giúp bạn thư giãn, xóa tan mọi lo âu, mệt mỏi suốt ngày dài. Những nguyên liệu thảo mộc từ thiên nhiên nuôi dưỡng mái tóc suôn mượt, chắc khỏe. Hương thơm nhẹ nhàng, dễ chịu giúp bạn thư giãn trong suốt quá trình trải nghiệm dịch vụ.<br>\r\nNgoài ra, Gội đầu Trung Hoa còn kết hợp phương pháp massage, ấn huyệt cổ vai gáy, đả thông kinh mạch hỗ trợ lưu thông khí huyết, giảm căng thẳng và giúp bạn có một tinh thần thoải mái, tràn đầy năng lượng.<br><br>\r\nQuy trình 30 bước chuyên sâu<br><br>\r\nKhông đơn thuần chỉ là làm sạch tóc. Gội dưỡng sinh trung hoa còn đem lại những giá trị sức khoẻ lâu dài khác, như:<br>\r\n• Đả thông kinh lạc, tuần hoàn mạch máu<br>\r\n• Tái tạo mái tóc, xóa tan các bệnh da đầu<br>\r\n• Ngăn chặn lão hóa và ổn định huyết áp<br>\r\n• Cải thiện khả năng tập trung, giảm lo âu, mệt mỏi<br>\r\n• Loại bỏ các độc tố, giúp thanh lọc cơ thể.', '31723291730582507478004767529870801244807321n-6790.jpg', '90', 350000, '2023-06-26 19:41:33', 3);
INSERT INTO `service` VALUES (23, 'TẮM TRẮNG PHI THUYỀN HOÀNG CUNG', 'Tắm trắng phi thuyền hoàng cung là phương pháp làm trắng da từ bên trong với sự hỗ trợ của máy phi thuyền hiện đại – giúp các dưỡng chất thẩm thấu vào da nhanh hơn, sâu hơn nhờ tác động nhiệt.Nâng 2 -3 tone da ngay sau lần tắm đầu tiên\r\nDưỡng trắng sáng toàn thân cho da căng mướt và tạo lớp màng bảo vệ da.', 'tam1-01-4679.jpg', NULL, NULL, '90', 449000, '2023-07-31 19:41:36', 4);
INSERT INTO `service` VALUES (24, 'Ủ TRẮNG THUỐC BẮC AN CUNG', 'Ủ trắng thuốc bắc An Cung tại Lá quê spa. Chiết xuất từ các loại thuốc bắc thảo dược quý giúp làn da trắng sáng mịn màng,hồng hào và đặc biệt an toàn, có thể sử dụng cho các mẹ đang mang thai và đang cho con bú.', 'tam-31-01-2213.jpg', NULL, NULL, '90', 380000, '2023-07-03 19:41:42', 4);
INSERT INTO `service` VALUES (25, 'Ủ NẠ TINH MẦM GẠO & SỮA DỪA', 'Liệu trình \"Ủ NẠ TINH MẦM GẠO & SỮA DỪA\" sử dụng các thành phần thiên nhiên lành tính, không chứa các thành phần tẩy trắng da như các spa thông thường, đảm bảo an toàn cho làn da. Da bạn sẽ được nuôi dưỡng, trắng sáng dần lên nhưng vẫn giữ sự khỏe mạnh hồng hào. “Thần dược” trong liệu trình là các thành phần giúp sát khuẩn làm dịu da, làm sạch dịu nhẹ với nhiều chất chống oxi hóa như vitamin E, C, A,... nên da mụn vẫn phù hợp để sử dụng. Đồng thời liệu trình cũng giúp kích thích tăng sinh collagen cho da thêm căng mịn, đàn hồi hơn.', 'tam2-01-01-7390.jpg', NULL, NULL, '90', 299000, '2023-07-17 19:41:46', 4);
INSERT INTO `service` VALUES (26, 'ĐIỀU TRỊ MỤN VI DIỆP LỤC ', 'Hết mụn tận gốc, da sáng hồng, mịn màng.\r\nSạch vết thâm mụn hiệu quả duy trì vĩnh viễn, không phải bôi kem hay uống thuốc trong quá trình điều trị. Không đau rát, không mất thời gian nghỉ dưỡng. Giải quyết triệt để hiện tượng da nhờn, da bóng dầu vùng trán và xung quanh mũi trong quá trình điều trị. Cấu trúc da ổn định, sáng hồng, mịn màng.', '34698232333601555375723585124688359455722602n-6702.jpg', '╔═══════════════╗<br>\r\nTINH CHẤT VI DIỆP LỤC<br>\r\nAHA<br>\r\nOMEGALIGHT + OXY TƯƠI<br>\r\n╚═══════════════╝<br><br>\r\nHết mụn tận gốc, da sáng hồng, mịn màng<br>\r\nSạch vết thâm mụn hiệu quả duy trì vĩnh viễn, không phải bôi kem hay uống thuốc trong quá trình điều trị<br>\r\nKhông đau rát, không mất thời gian nghỉ dưỡng<br>\r\nGiải quyết triệt để hiện tượng da nhờn, da bóng dầu vùng trán và xung quanh mũi trong quá trình điều trị<br>\r\nCấu trúc da ổn định, sáng hồng, mịn màng', '153336270_793033461392719_5310401081602721612_n.jpg', '90', 299000, '2023-07-02 19:41:49', 5);
INSERT INTO `service` VALUES (27, 'ĐIỀU TRỊ MỤN SIÊU VI SINH HỌC', 'TRỊ MỤN HIỆU QUẢ, AN TOÀN LÀ ĐIỂM MẠNH CỦA LÁ QUÊ SPA\r\nNhắc đến các dịch vụ tại LÁ QUÊ SPA thì không thể không nhắc đến 2 liệu trình trị Mụn được nhiều khách hàng yêu thích đó chính là Trị mụn siêu vi & Mụn vi diệp lục\r\nTrị mụn siêu vi sinh học chinh phục khách hàng da mụn cấp độ 1-2-3, mụn bít tắc, mụn ẩn, lỗ chân lông to bởi sự an toàn tuyệt đối, điều trị dứt điểm và không tái phát nhờ sử dụng sản phẩm Organic hoàn toàn tự nhiên. \r\nĐối với khách hàng gặp tình trạng da mụn cấp độ 4-5, mụn viêm sưng và nền da yếu, đừng quá lo lắng vì đã có Mụn vi diệp lục giải quyết vấn đề của bạn. Mọi người đều cảm thấy hài lòng bởi quy trình lấy nhân mụn chuẩn y khoa, không thâm, không sẹo, không đau. Phục hồi, tái tạo làn da mụn sau điều trị. \r\nĐến với Lá Quê Spa, bạn sẽ được thăm khám, phân tích tình trạng da bởi chuyên viên nhiều năm kinh nghiệm và tư vấn phác đồ trị liệu phù hợp. Bạn hoàn toàn yên tâm vì Lá Quê luôn chăm sóc, tái khám, theo dõi định kỳ trong quá trình trị liệu cũng như hỗ trợ chăm sóc và thăm khám trọn đời. \r\n Đến ngay Lá Quê Spa để có một làn da đẹp, sạch mụn, tự tin rạng ngời đón hè các bạn nhé.', '27750323228822978220624377610235827169904170n-3876.jpg', 'TRỊ MỤN HIỆU QUẢ, AN TOÀN LÀ ĐIỂM MẠNH CỦA LÁ QUÊ SPA<br>\r\nNhắc đến các dịch vụ tại LÁ QUÊ SPA thì không thể không nhắc đến 2 liệu trình trị Mụn được nhiều khách hàng yêu thích đó chính là Trị mụn siêu vi & Mụn vi diệp lục.<br>\r\nTrị mụn siêu vi sinh học chinh phục khách hàng da mụn cấp độ 1-2-3, mụn bít tắc, mụn ẩn, lỗ chân lông to bởi sự an toàn tuyệt đối, điều trị dứt điểm và không tái phát nhờ sử dụng sản phẩm Organic hoàn toàn tự nhiên.<br>\r\nĐối với khách hàng gặp tình trạng da mụn cấp độ 4-5, mụn viêm sưng và nền da yếu, đừng quá lo lắng vì đã có Mụn vi diệp lục giải quyết vấn đề của bạn. Mọi người đều cảm thấy hài lòng bởi quy trình lấy nhân mụn chuẩn y khoa, không thâm, không sẹo, không đau. Phục hồi, tái tạo làn da mụn sau điều trị.<br>\r\nĐến với Lá Quê Spa, bạn sẽ được thăm khám, phân tích tình trạng da bởi chuyên viên nhiều năm kinh nghiệm và tư vấn phác đồ trị liệu phù hợp. Bạn hoàn toàn yên tâm vì Lá Quê luôn chăm sóc, tái khám, theo dõi định kỳ trong quá trình trị liệu cũng như hỗ trợ chăm sóc và thăm khám trọn đời.', '101577049_2408683196090571_7138575846016548864_n.jpg', '90', 299000, '2023-07-09 20:49:57', 5);
INSERT INTO `service` VALUES (28, 'TRIỆT LÔNG ÁNH SÁNG CN SUPER NANO LIGHT', 'Lá Quê Spa sử dụng công nghệ triệt lông SNL (Super Nano Light) – công nghệ sử dụng năng lượng ánh sáng để tác động lên nang lông, làm gián đoạn quá trình phát triển và dần dần làm suy yếu khả năng tái hình thành lông mới.\r\n\r\nHiệu quả tối ưu nhất trong số các phương pháp loại bỏ vi - ô-lông.\r\nTriệt sạch lông cứng, lông mỏng, nhạt màu.\r\nTuyệt đối an toàn, không đau rát, không mẩn đỏ.\r\nThu nhỏ lỗ chân lông,giảm thâm, trẻ hoá vùng điều trị.\r\nBảo hành cam kết văn bản khi mua gói liệu trình\r\nĐừng để lông rậm rạp ngăn cản sự tự tin của bạn', '27620939628755538760701655473638855647332971n-8708.jpg', 'Chăm sóc, dưỡng da thì có thể tuy nhiên riêng về giải quyết phần lông ngày càng dài ra trên cơ thể tưởng dễ mà khó không tưởng<br><br>\r\nTự Triệt sẽ gây ra những vấn đề sau:<br>\r\nMọc càng đậm<br>\r\nLông mọc ngược<br>\r\nViêm nang lông<br><br>\r\n<b>Lá Quê Spa</b> sử dụng công nghệ triệt lông SNL (Super Nano Light) – công nghệ sử dụng năng lượng ánh sáng để tác động lên nang lông, làm gián đoạn quá trình phát triển và dần dần làm suy yếu khả năng tái hình thành lông mới.<br><br>\r\nĐặc biệt là Triệt lông tận gốc tại LÁ QUÊ SPA, hiện đang là sự lựa chọn hàng đầu hiện nay bởi những hiệu quả tuyệt vời mà công nghệ này mang lại:<br>\r\nHiệu quả tối ưu nhất trong số các phương pháp loại bỏ vi - ô-lông.<br>\r\nTriệt sạch lông cứng, lông mỏng, nhạt màu.<br>\r\nTuyệt đối an toàn, không đau rát, không mẩn đỏ.<br>\r\nThu nhỏ lỗ chân lông,giảm thâm, trẻ hoá vùng điều trị.<br>\r\nBảo hành cam kết văn bản khi mua gói liệu trình', '293452825_1079884679374261_1762346725341518182_n.jpg', '90', 299000, '2023-07-21 20:55:45', 6);
INSERT INTO `service` VALUES (29, 'GIẢM BÉO ĐÔNG Y VỚI COMBO VŨ ĐIỆU SAM NỮ', 'GIẢM BÉO ĐÔNG Y VỚI COMBO VŨ ĐIỆU SAM NỮ\r\nHỦY MỠ AN TOÀN - THẢI ĐỘC CƠ THỂ\r\n\r\nBạn biết không, số lượng khách hàng đến LÁ QUÊ SPA để giảm béo dưỡng sinh đang ngày càng gia tăng. Vậy giảm béo dưỡng sinh là gì? Quy trình thực hiện như thế nào? chắc hẳn là câu hỏi mà nhiều bạn đọc rất tò mò. Hãy tìm hiểu qua bài viết sau đây nhé!', '9365100223787695357486045008535486134747136n-2523.jpg', 'LÁ QUÊ SPA hiện đang có chương trinh ưu đãi tham gia trải nghiệm 1 buổi của liệu trình 90p chuyên sâu chỉ với 499.000 vnđ. Đăng ký ngay tại đây để được trải nghiệm liệu pháp dưỡng sinh đông y chăm sóc sắc đẹp này:<br>\r\nPhương pháp này chỉ dựa trên sự kết hợp các thao tác massage chuyên sâu và ấn huyệt Đông y cổ truyền chính xác vào các huyệt đạo trên cơ thể giúp đánh bay tế bào mỡ thừa ngay cả ở tầng sâu nhất. Sau đó dùng 20 loại dược phẩm quý làm lỏng mô mỡ, lượng mỡ thừa được đào thải ra khỏi cơ thể dưới dạng phân tử cực nhỏ tuyến mồ hôi hoặc nước tiểu.<br>\r\nTự hào là một trung tâm spa thẩm mỹ uy tín, được hàng ngàn phụ nữ tin tưởng “chọn mặt gửi vàng”,LÁ QUÊ SPA chắc chắn sẽ là nơi hoàn hảo nhất giúp bạn lấy lại được vòng eo con kiến.', '93651002_2378769535748604_5008535486134747136_n.jpg', '90', 499000, '2023-07-25 21:03:19', 6);

-- ----------------------------
-- View structure for view_product
-- ----------------------------
DROP VIEW IF EXISTS `view_product`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_product` AS SELECT product.*,
	ROUND(

		IF(discount_percent IS NULL || 
			discount_from_date > CURRENT_DATE || 
			discount_to_date < CURRENT_DATE , 
			price, 
		price * (1-discount_percent/100))
		, -3) AS sale_price 
FROM product ;

SET FOREIGN_KEY_CHECKS = 1;
