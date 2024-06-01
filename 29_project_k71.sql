-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2024 at 11:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `29_project_k71`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) NOT NULL,
  `question_id` int(10) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `is_true` int(11) NOT NULL,
  `ordinalNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `is_true`, `ordinalNumber`) VALUES
(301, 134, 'for ($i = 2; $i <= 10; $i++) {', 1, 1),
(302, 134, 'if ($i % 2 == 0) {', 1, 2),
(303, 134, 'echo $i . ;', 1, 3),
(304, 134, ' }}', 1, 4),
(305, 135, 'Personal Home Page', 0, NULL),
(306, 135, 'Preprocessor Hypertext', 0, NULL),
(307, 135, 'PHP: Hypertext Preprocessor', 1, NULL),
(308, 135, 'Private Hypertext Page', 0, NULL),
(309, 135, 'Programming Hyper Processor', 1, NULL),
(310, 136, 'HELLO WORLD!', 1, NULL),
(311, 136, 'hello world!', 0, NULL),
(312, 136, 'hello wolrd', 0, NULL),
(313, 136, 'Không chạy được, báo lỗi', 0, NULL),
(314, 137, 'none', 0, NULL),
(315, 137, 'null', 1, NULL),
(316, 137, 'undef', 0, NULL),
(317, 137, 'Không có khái niệm như vậy trong PHP', 0, NULL),
(318, 138, 'false ', 0, NULL),
(319, 138, 'true', 1, NULL),
(320, 138, 'Không có giá trị', 0, NULL),
(321, 138, 'true false', 0, NULL),
(322, 139, 'const', 0, NULL),
(323, 139, 'constants', 1, NULL),
(324, 139, 'define', 0, NULL),
(325, 139, 'def', 0, NULL),
(326, 140, 'file_exists()', 1, NULL),
(327, 140, 'is_file()', 1, NULL),
(328, 140, 'file_is()', 0, NULL),
(329, 140, 'file_check()', 0, NULL),
(330, 140, 'check_file()', 0, NULL),
(331, 141, 'if $x == 5 then', 0, NULL),
(332, 141, 'if $x = 5', 0, NULL),
(333, 141, ' if ($x == 5) {...', 1, NULL),
(334, 141, ' if ($x = 5);', 0, NULL),
(335, 141, 'if ($x === 5)', 1, NULL),
(336, 142, 'array()', 1, NULL),
(337, 142, '[ ]', 1, NULL),
(338, 142, 'new Array()', 0, NULL),
(339, 142, 'createArray()', 0, NULL),
(340, 142, 'makeArray()', 0, NULL),
(341, 143, 'Chuyển một mảng thành một chuỗi, sử dụng một ký tự nối', 1, NULL),
(342, 143, 'Tách một chuỗi thành một mảng, sử dụng một biểu thức chính quy', 1, NULL),
(343, 143, ' Kiểm tra xem một giá trị có tồn tại trong mảng hay không', 0, NULL),
(344, 143, 'Đảo ngược một chuỗi', 0, NULL),
(345, 143, 'Sắp xếp các phần tử trong một mảng theo thứ tự giảm dần', 1, NULL),
(346, 144, 'Kiểm tra xem biến có được định nghĩa hay không', 1, NULL),
(347, 144, 'Kiểm tra xem một biến có giá trị là null hay không', 0, NULL),
(348, 144, 'Kiểm tra xem một biến có tồn tại và không phải là null hay không', 1, NULL),
(349, 144, 'Kiểm tra xem một mảng có chứa một phần tử cụ thể hay không', 1, NULL),
(350, 144, 'Chuyển đổi một biến thành kiểu boolean', 0, NULL),
(351, 145, '74', 1, NULL),
(352, 146, 'GET ', 0, NULL),
(353, 146, 'POST ', 1, NULL),
(354, 146, 'REQUEST ', 0, NULL),
(355, 146, 'SEND ', 0, NULL),
(356, 147, 'global $variable;', 1, NULL),
(357, 147, '$variable = global;', 0, NULL),
(358, 147, 'set_global($variable);', 0, NULL),
(359, 147, 'create_global($variable);', 0, NULL),
(360, 148, 'Có', 0, NULL),
(361, 148, 'Không', 1, NULL),
(377, 152, '<?php ', 1, 1),
(378, 152, '$colors = array(\"Red\", \"Green\", \"Blue\");', 1, 2),
(379, 152, 'foreach ($colors as $key => $value)', 1, 3),
(380, 152, '{', 1, 4),
(381, 152, 'echo $key . \": \" . $value . \"<br>\";', 1, 5),
(382, 152, ' } ', 1, 6),
(383, 152, '?>', 1, 7),
(384, 153, '7 is a prime number.', 1, NULL),
(385, 154, '==', 0, NULL),
(386, 154, 'in_array()', 1, NULL),
(387, 154, '=', 0, NULL),
(388, 154, '===', 0, NULL),
(389, 155, 'Dữ liệu được truyền qua URL.', 0, NULL),
(390, 155, 'Dữ liệu không được hiển thị trong URL.', 1, NULL),
(391, 155, 'Có thể sử dụng để truyền dữ liệu giữa các trang.', 1, NULL),
(392, 155, 'Dữ liệu được lưu trữ trong biến toàn cục $_GET.', 0, NULL),
(393, 156, 'Khi biết chính xác số lần lặp.', 1, NULL),
(394, 156, 'Khi số lần lặp phụ thuộc vào một điều kiện.', 0, NULL),
(395, 156, 'Khi muốn lặp qua các phần tử của mảng.', 0, NULL),
(396, 156, 'Khi muốn lặp qua các số nguyên liên tục.', 0, NULL),
(397, 157, 'a2a1a3', 1, NULL),
(398, 158, 'Một cách duy nhất', 0, NULL),
(399, 158, 'Hai cách', 0, NULL),
(400, 158, 'Ba cách', 0, NULL),
(401, 158, 'Nhiều hơn ba cách', 1, NULL),
(402, 159, '// This is a multi-line comment //', 0, NULL),
(403, 159, '/* This is a multi-line comment */', 1, NULL),
(404, 159, '# This is a multi-line comment #', 0, NULL),
(405, 159, '/* This is a multi-line comment //', 0, NULL),
(406, 160, '13179', 1, NULL),
(420, 167, 'đáp án 1', 1, NULL),
(421, 167, 'đáp án 2', 0, NULL),
(422, 167, 'đáp án 3', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course` varchar(50) NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `state`) VALUES
(106, 'KiemTra', 0),
(108, 'Công nghệ Web', 1),
(109, 'Quản trị mạng', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_users`
--

CREATE TABLE `course_users` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_users`
--

INSERT INTO `course_users` (`id`, `course_id`, `user_id`, `state`) VALUES
(12, 106, 13, 1),
(14, 108, 13, 1),
(17, 108, 14, 1),
(18, 109, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `id_course` int(11) NOT NULL,
  `numericalorder` int(11) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `name`, `video`, `description`, `id_course`, `numericalorder`, `file`) VALUES
(41, 'Bài 1: Lập trình website bán hàng full-stack - Giao diện trang chủ (P1)', '6ca7Roj_NfE', '', 108, 1, 'quizzCNW (1).docx'),
(42, 'Bài 1: Lập trình website bán hàng full-stack - Giao diện trang chủ (P2)', 'T4RIbr9VIT8', '', 108, 2, ''),
(43, 'Bài 1: Lập trình website bán hàng full-stack - Giao diện trang chủ (P3)', '3hx24mRfKGE', '', 108, 3, ''),
(44, 'Lập trình website bán hàng full stack Giao diện trang danh mục sản phẩm', 'HrzV05lzf2Y', '', 108, 6, '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `tittle`, `description`, `time`) VALUES
(154, 'Công nghệ Web', 'Admin đã thêm bài giảng mới', '2023-12-20 09:17:56'),
(155, 'Công nghệ Web', 'Admin đã thêm bài giảng mới', '2023-12-20 09:18:43'),
(156, 'Công nghệ Web', 'Admin đã thêm bài giảng mới', '2023-12-20 09:27:32'),
(157, 'Công nghệ Web', 'Admin đã thêm bài giảng mới', '2023-12-20 09:28:03'),
(158, 'Công nghệ Web', 'Admin đã thêm bài giảng mới', '2023-12-20 09:36:11'),
(159, 'Quản trị mạng', 'Mai Lý Hải đã đóng góp câu hỏi mới', '2023-12-20 12:10:48'),
(160, 'Quản trị mạng', 'Câu hỏi của bạn đã được duyệt', '2023-12-20 12:10:52'),
(161, 'Quản trị mạng', 'Mai Lý Hải đã đóng góp câu hỏi mới', '2023-12-20 15:04:35'),
(162, 'Quản trị mạng', 'Mai Lý Hải đã đóng góp câu hỏi mới', '2023-12-20 15:04:52'),
(163, 'Quản trị mạng', 'Câu hỏi của bạn đã được duyệt', '2023-12-20 15:04:54'),
(164, 'Quản trị mạng', 'Mai Lý Hải đã đóng góp câu hỏi mới', '2023-12-20 15:40:19'),
(165, 'Quản trị mạng', 'Câu hỏi của bạn đã được duyệt', '2023-12-20 15:40:21'),
(166, 'Quản trị mạng', 'Mai Lý Hải đã đóng góp câu hỏi mới', '2023-12-20 16:12:50'),
(167, 'Quản trị mạng', 'Câu hỏi của bạn đã được duyệt', '2023-12-20 16:12:52'),
(168, 'Công nghệ Web', 'Mai Lý Hải đã đóng góp câu hỏi mới', '2023-12-20 19:51:42'),
(169, 'Công nghệ Web', 'Admin đã thêm bài giảng mới', '2023-12-20 19:53:54'),
(170, 'Công nghệ Web', 'Mai Lý Hải đã đóng góp câu hỏi mới', '2023-12-20 19:54:48'),
(171, 'Quản trị mạng', 'Bạn đã được thêm vào khóa học', '2023-12-20 20:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) NOT NULL,
  `question` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `course_id` int(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `type`, `course_id`, `image`, `user_id`, `state`) VALUES
(134, 'Sắp xếp đoạn code sau: ', 'Sắp xếp', 108, NULL, 13, 1),
(135, 'PHP là viết tắt của gì?', 'Trắc nghiệm', 108, '', 13, 1),
(136, 'Đoạn mã sau, in ra giá trị nào sau đây', 'Trắc nghiệm', 108, 'image-6581e317a40e66.77241429.png', 13, 1),
(137, 'Mặc định của một biến không có giá trị được thể hiện với từ khóa', 'Trắc nghiệm', 109, '', 13, 1),
(138, 'Đoạn mã sau, in ra giá trị nào sau đây', 'Trắc nghiệm', 109, 'image-6581e3aba526f5.53260319.png', 13, 1),
(139, 'Hàm nào sau đây dùng để khai báo hằng số', 'Trắc nghiệm', 109, '', 13, 1),
(140, 'Hàm nào được sử dụng để kiểm tra xem một tập tin có tồn tại hay không trong PHP?', 'Trắc nghiệm', 109, '', 13, 1),
(141, 'Trong PHP, cách nào sau đây dùng để thực hiện lệnh điều kiện IF cho một biến?', 'Trắc nghiệm', 109, '', 13, 1),
(142, 'Để khai báo một mảng trong PHP, bạn sử dụng cú pháp nào sau đây?', 'Trắc nghiệm', 109, '', 13, 1),
(143, 'Trong PHP, hàm implode() được sử dụng để:', 'Trắc nghiệm', 109, '', 13, 1),
(144, 'Trong PHP, hàm isset() được sử dụng để:', 'Trắc nghiệm', 109, '', 13, 1),
(145, 'Trong PHP, sau khi thực hiện đoạn mã kết quả hiển thị sẽ là gì?', 'Điền', 109, 'image-6581e73f095273.15850388.png', 13, 1),
(146, 'Để gửi dữ liệu từ một trang web đến trang web khác trong PHP, bạn sử dụng phương thức nào?', 'Trắc nghiệm', 109, '', 13, 1),
(147, 'Trong PHP làm thế nào để tạo một biến toàn cục?', 'Trắc nghiệm', 109, '', 13, 1),
(148, 'Empty và isset có giống nhau không?', 'Trắc nghiệm', 109, '', 13, 1),
(152, 'Sắp xếp đoạn code sau', 'Sắp xếp', 109, NULL, 13, 1),
(153, 'Đoạn code dưới đây in ra gì ? (Nhập chính xác cả khoảng trắng và dấu)', 'Điền', 109, 'image-658247c3d60671.26933362.png', 13, 1),
(154, 'Toán tử nào được sử dụng để kiểm tra xem một giá trị có nằm trong mảng hay không ?', 'Trắc nghiệm', 109, '', 13, 1),
(155, 'Điều nào không đúng về GET trong PHP?', 'Trắc nghiệm', 109, '', 13, 1),
(156, 'Vòng lặp for trong PHP thường được sử dụng khi nào?', 'Trắc nghiệm', 109, '', 13, 1),
(157, 'Sau khi thực hiện đoạn mã kết quả trả về sẽ là gì?', 'Điền', 109, 'image-658248928500f2.67880190.png', 13, 1),
(158, 'Trong PHP, có bao nhiêu cách chính để tạo kết nối đến cơ sở dữ liệu?', 'Trắc nghiệm', 109, '', 13, 1),
(159, 'Làm thế nào để tạo comment trên nhiều dòng trong PHP?', 'Trắc nghiệm', 109, '', 13, 1),
(160, 'Đoạn code sau in ra gì ?', 'Điền', 109, 'image-65824909d0f749.63681223.png', 13, 1),
(167, 'Đoạn mã sau, in ra giá trị nào sau đây', 'Trắc nghiệm', 108, '', 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `score` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `timeSubmit` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `user_id`, `score`, `course_id`, `timeSubmit`) VALUES
(628, 13, 0, 106, '2024-01-13'),
(629, 13, 0, 106, '2024-01-13'),
(630, 13, 6, 106, '2024-01-13'),
(632, 13, 1, 108, '2024-01-13'),
(633, 14, 1, 108, '2024-01-13'),
(634, 14, 0, 108, '2024-01-13'),
(635, 14, 2, 109, '2024-01-13'),
(636, 14, 0, 108, '2024-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `result_detail`
--

CREATE TABLE `result_detail` (
  `id` int(11) NOT NULL,
  `result_id` int(11) NOT NULL,
  `question_id` longtext NOT NULL,
  `user_answer` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result_detail`
--

INSERT INTO `result_detail` (`id`, `result_id`, `question_id`, `user_answer`) VALUES
(3, 628, '[{\"id\":\"160\",\"question\":\"u0110ou1ea1n code sau in ra gu00ec ?\",\"type\":\"u0110iu1ec1n\",\"course_id\":\"109\",\"image\":\"image-65824909d0f749.63681223.png\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"406\",\"question_id\":\"160\",\"answer\":\"13179\",\"is_true\":\"1\",\"ordinalNumber\":null}]},{\"id\":\"142\",\"question\":\"u0110u1ec3 khai bu00e1o mu1ed9t mu1ea3ng trong PHP, bu1ea1n su1eed du1ee5ng cu00fa phu00e1p nu00e0o sau u0111u00e2y?\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"336\",\"question_id\":\"142\",\"answer\":\"array()\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"337\",\"question_id\":\"142\",\"answer\":\"[ ]\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"338\",\"question_id\":\"142\",\"answer\":\"new Array()\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"339\",\"question_id\":\"142\",\"answer\":\"createArray()\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"340\",\"question_id\":\"142\",\"answer\":\"makeArray()\",\"is_true\":\"0\",\"ordinalNumber\":null}]},{\"id\":\"139\",\"question\":\"Hu00e0m nu00e0o sau u0111u00e2y du00f9ng u0111u1ec3 khai bu00e1o hu1eb1ng su1ed1\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"322\",\"question_id\":\"139\",\"answer\":\"const\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"323\",\"question_id\":\"139\",\"answer\":\"constants\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"324\",\"question_id\":\"139\",\"answer\":\"define\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"325\",\"question_id\":\"139\",\"answer\":\"def\",\"is_true\":\"0\",\"ordinalNumber\":null}]},{\"id\":\"147\",\"question\":\"Trong PHP lu00e0m thu1ebf nu00e0o u0111u1ec3 tu1ea1o mu1ed9t biu1ebfn tou00e0n cu1ee5c?\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"356\",\"question_id\":\"147\",\"answer\":\"global $variable;\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"357\",\"question_id\":\"147\",\"answer\":\"$variable = global;\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"358\",\"question_id\":\"147\",\"answer\":\"set_global($variable);\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"359\",\"question_id\":\"147\",\"answer\":\"create_global($variable);\",\"is_true\":\"0\",\"ordinalNumber\":null}]},{\"id\":\"153\",\"question\":\"u0110ou1ea1n code du01b0u1edbi u0111u00e2y in ra gu00ec ? (Nhu1eadp chu00ednh xu00e1c cu1ea3 khou1ea3ng tru1eafng vu00e0 du1ea5u)\",\"type\":\"u0110iu1ec1n\",\"course_id\":\"109\",\"image\":\"image-658247c3d60671.26933362.png\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"384\",\"question_id\":\"153\",\"answer\":\"7 is a prime number.\",\"is_true\":\"1\",\"ordinalNumber\":null}]},{\"id\":\"148\",\"question\":\"Empty vu00e0 isset cu00f3 giu1ed1ng nhau khu00f4ng?\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"360\",\"question_id\":\"148\",\"answer\":\"Cu00f3\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"361\",\"question_id\":\"148\",\"answer\":\"Khu00f4ng\",\"is_true\":\"1\",\"ordinalNumber\":null}]},{\"id\":\"145\",\"question\":\"Trong PHP, sau khi thu1ef1c hiu1ec7n u0111ou1ea1n mu00e3 ku1ebft quu1ea3 hiu1ec3n thu1ecb su1ebd lu00e0 gu00ec?\",\"type\":\"u0110iu1ec1n\",\"course_id\":\"109\",\"image\":\"image-6581e73f095273.15850388.png\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"351\",\"question_id\":\"145\",\"answer\":\"74\",\"is_true\":\"1\",\"ordinalNumber\":null}]},{\"id\":\"152\",\"question\":\"Su1eafp xu1ebfp u0111ou1ea1n code sau\",\"type\":\"Su1eafp xu1ebfp\",\"course_id\":\"109\",\"image\":null,\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"377\",\"question_id\":\"152\",\"answer\":\"<?php \",\"is_true\":\"1\",\"ordinalNumber\":\"1\"},{\"id\":\"378\",\"question_id\":\"152\",\"answer\":\"$colors = array(\"Red\", \"Green\", \"Blue\");\",\"is_true\":\"1\",\"ordinalNumber\":\"2\"},{\"id\":\"379\",\"question_id\":\"152\",\"answer\":\"foreach ($colors as $key => $value)\",\"is_true\":\"1\",\"ordinalNumber\":\"3\"},{\"id\":\"380\",\"question_id\":\"152\",\"answer\":\"{\",\"is_true\":\"1\",\"ordinalNumber\":\"4\"},{\"id\":\"381\",\"question_id\":\"152\",\"answer\":\"echo $key . \": \" . $value . \"<br>\";\",\"is_true\":\"1\",\"ordinalNumber\":\"5\"},{\"id\":\"382\",\"question_id\":\"152\",\"answer\":\" } \",\"is_true\":\"1\",\"ordinalNumber\":\"6\"},{\"id\":\"383\",\"question_id\":\"152\",\"answer\":\"?>\",\"is_true\":\"1\",\"ordinalNumber\":\"7\"}]},{\"id\":\"134\",\"question\":\"Su1eafp xu1ebfp u0111ou1ea1n code sau: \",\"type\":\"Su1eafp xu1ebfp\",\"course_id\":\"108\",\"image\":null,\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"301\",\"question_id\":\"134\",\"answer\":\"for ($i = 2; $i <= 10; $i++) {\",\"is_true\":\"1\",\"ordinalNumber\":\"1\"},{\"id\":\"302\",\"question_id\":\"134\",\"answer\":\"if ($i % 2 == 0) {\",\"is_true\":\"1\",\"ordinalNumber\":\"2\"},{\"id\":\"303\",\"question_id\":\"134\",\"answer\":\"echo $i . ;\",\"is_true\":\"1\",\"ordinalNumber\":\"3\"},{\"id\":\"304\",\"question_id\":\"134\",\"answer\":\" }}\",\"is_true\":\"1\",\"ordinalNumber\":\"4\"}]},{\"id\":\"159\",\"question\":\"Lu00e0m thu1ebf nu00e0o u0111u1ec3 tu1ea1o comment tru00ean nhiu1ec1u du00f2ng trong PHP?\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"402\",\"question_id\":\"159\",\"answer\":\"// This is a multi-line comment //\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"403\",\"question_id\":\"159\",\"answer\":\"/* This is a multi-line comment */\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"404\",\"question_id\":\"159\",\"answer\":\"# This is a multi-line comment #\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"405\",\"question_id\":\"159\",\"answer\":\"/* This is a multi-line comment //\",\"is_true\":\"0\",\"ordinalNumber\":null}]},{\"id\":\"141\",\"question\":\"Trong PHP, cu00e1ch nu00e0o sau u0111u00e2y du00f9ng u0111u1ec3 thu1ef1c hiu1ec7n lu1ec7nh u0111iu1ec1u kiu1ec7n IF cho mu1ed9t biu1ebfn?\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"331\",\"question_id\":\"141\",\"answer\":\"if $x == 5 then\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"332\",\"question_id\":\"141\",\"answer\":\"if $x = 5\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"333\",\"question_id\":\"141\",\"answer\":\" if ($x == 5) {...\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"334\",\"question_id\":\"141\",\"answer\":\" if ($x = 5);\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"335\",\"question_id\":\"141\",\"answer\":\"if ($x === 5)\",\"is_true\":\"1\",\"ordinalNumber\":null}]},{\"id\":\"140\",\"question\":\"Hu00e0m nu00e0o u0111u01b0u1ee3c su1eed du1ee5ng u0111u1ec3 kiu1ec3m tra xem mu1ed9t tu1eadp tin cu00f3 tu1ed3n tu1ea1i hay khu00f4ng trong PHP?\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"326\",\"question_id\":\"140\",\"answer\":\"file_exists()\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"327\",\"question_id\":\"140\",\"answer\":\"is_file()\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"328\",\"question_id\":\"140\",\"answer\":\"file_is()\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"329\",\"question_id\":\"140\",\"answer\":\"file_check()\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"330\",\"question_id\":\"140\",\"answer\":\"check_file()\",\"is_true\":\"0\",\"ordinalNumber\":null}]},{\"id\":\"138\",\"question\":\"u0110ou1ea1n mu00e3 sau, in ra giu00e1 tru1ecb nu00e0o sau u0111u00e2y\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"image-6581e3aba526f5.53260319.png\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"318\",\"question_id\":\"138\",\"answer\":\"false \",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"319\",\"question_id\":\"138\",\"answer\":\"true\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"320\",\"question_id\":\"138\",\"answer\":\"Khu00f4ng cu00f3 giu00e1 tru1ecb\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"321\",\"question_id\":\"138\",\"answer\":\"true false\",\"is_true\":\"0\",\"ordinalNumber\":null}]},{\"id\":\"143\",\"question\":\"Trong PHP, hu00e0m implode() u0111u01b0u1ee3c su1eed du1ee5ng u0111u1ec3:\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"341\",\"question_id\":\"143\",\"answer\":\"Chuyu1ec3n mu1ed9t mu1ea3ng thu00e0nh mu1ed9t chuu1ed7i, su1eed du1ee5ng mu1ed9t ku00fd tu1ef1 nu1ed1i\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"342\",\"question_id\":\"143\",\"answer\":\"Tu00e1ch mu1ed9t chuu1ed7i thu00e0nh mu1ed9t mu1ea3ng, su1eed du1ee5ng mu1ed9t biu1ec3u thu1ee9c chu00ednh quy\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"343\",\"question_id\":\"143\",\"answer\":\" Kiu1ec3m tra xem mu1ed9t giu00e1 tru1ecb cu00f3 tu1ed3n tu1ea1i trong mu1ea3ng hay khu00f4ng\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"344\",\"question_id\":\"143\",\"answer\":\"u0110u1ea3o ngu01b0u1ee3c mu1ed9t chuu1ed7i\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"345\",\"question_id\":\"143\",\"answer\":\"Su1eafp xu1ebfp cu00e1c phu1ea7n tu1eed trong mu1ed9t mu1ea3ng theo thu1ee9 tu1ef1 giu1ea3m du1ea7n\",\"is_true\":\"1\",\"ordinalNumber\":null}]},{\"id\":\"137\",\"question\":\"Mu1eb7c u0111u1ecbnh cu1ee7a mu1ed9t biu1ebfn khu00f4ng cu00f3 giu00e1 tru1ecb u0111u01b0u1ee3c thu1ec3 hiu1ec7n vu1edbi tu1eeb khu00f3a\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"314\",\"question_id\":\"137\",\"answer\":\"none\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"315\",\"question_id\":\"137\",\"answer\":\"null\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"316\",\"question_id\":\"137\",\"answer\":\"undef\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"317\",\"question_id\":\"137\",\"answer\":\"Khu00f4ng cu00f3 khu00e1i niu1ec7m nhu01b0 vu1eady trong PHP\",\"is_true\":\"0\",\"ordinalNumber\":null}]},{\"id\":\"154\",\"question\":\"Tou00e1n tu1eed nu00e0o u0111u01b0u1ee3c su1eed du1ee5ng u0111u1ec3 kiu1ec3m tra xem mu1ed9t giu00e1 tru1ecb cu00f3 nu1eb1m trong mu1ea3ng hay khu00f4ng ?\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"385\",\"question_id\":\"154\",\"answer\":\"==\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"386\",\"question_id\":\"154\",\"answer\":\"in_array()\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"387\",\"question_id\":\"154\",\"answer\":\"=\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"388\",\"question_id\":\"154\",\"answer\":\"===\",\"is_true\":\"0\",\"ordinalNumber\":null}]},{\"id\":\"156\",\"question\":\"Vu00f2ng lu1eb7p for trong PHP thu01b0u1eddng u0111u01b0u1ee3c su1eed du1ee5ng khi nu00e0o?\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"393\",\"question_id\":\"156\",\"answer\":\"Khi biu1ebft chu00ednh xu00e1c su1ed1 lu1ea7n lu1eb7p.\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"394\",\"question_id\":\"156\",\"answer\":\"Khi su1ed1 lu1ea7n lu1eb7p phu1ee5 thuu1ed9c vu00e0o mu1ed9t u0111iu1ec1u kiu1ec7n.\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"395\",\"question_id\":\"156\",\"answer\":\"Khi muu1ed1n lu1eb7p qua cu00e1c phu1ea7n tu1eed cu1ee7a mu1ea3ng.\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"396\",\"question_id\":\"156\",\"answer\":\"Khi muu1ed1n lu1eb7p qua cu00e1c su1ed1 nguyu00ean liu00ean tu1ee5c.\",\"is_true\":\"0\",\"ordinalNumber\":null}]},{\"id\":\"155\",\"question\":\"u0110iu1ec1u nu00e0o khu00f4ng u0111u00fang vu1ec1 GET trong PHP?\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"389\",\"question_id\":\"155\",\"answer\":\"Du1eef liu1ec7u u0111u01b0u1ee3c truyu1ec1n qua URL.\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"390\",\"question_id\":\"155\",\"answer\":\"Du1eef liu1ec7u khu00f4ng u0111u01b0u1ee3c hiu1ec3n thu1ecb trong URL.\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"391\",\"question_id\":\"155\",\"answer\":\"Cu00f3 thu1ec3 su1eed du1ee5ng u0111u1ec3 truyu1ec1n du1eef liu1ec7u giu1eefa cu00e1c trang.\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"392\",\"question_id\":\"155\",\"answer\":\"Du1eef liu1ec7u u0111u01b0u1ee3c lu01b0u tru1eef trong biu1ebfn tou00e0n cu1ee5c $_GET.\",\"is_true\":\"0\",\"ordinalNumber\":null}]},{\"id\":\"146\",\"question\":\"u0110u1ec3 gu1eedi du1eef liu1ec7u tu1eeb mu1ed9t trang web u0111u1ebfn trang web khu00e1c trong PHP, bu1ea1n su1eed du1ee5ng phu01b0u01a1ng thu1ee9c nu00e0o?\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"109\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"352\",\"question_id\":\"146\",\"answer\":\"GET \",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"353\",\"question_id\":\"146\",\"answer\":\"POST \",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"354\",\"question_id\":\"146\",\"answer\":\"REQUEST \",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"355\",\"question_id\":\"146\",\"answer\":\"SEND \",\"is_true\":\"0\",\"ordinalNumber\":null}]},{\"id\":\"135\",\"question\":\"PHP lu00e0 viu1ebft tu1eaft cu1ee7a gu00ec?\",\"type\":\"Tru1eafc nghiu1ec7m\",\"course_id\":\"108\",\"image\":\"\",\"user_id\":\"13\",\"state\":\"1\",\"answers\":[{\"id\":\"305\",\"question_id\":\"135\",\"answer\":\"Personal Home Page\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"306\",\"question_id\":\"135\",\"answer\":\"Preprocessor Hypertext\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"307\",\"question_id\":\"135\",\"answer\":\"PHP: Hypertext Preprocessor\",\"is_true\":\"1\",\"ordinalNumber\":null},{\"id\":\"308\",\"question_id\":\"135\",\"answer\":\"Private Hypertext Page\",\"is_true\":\"0\",\"ordinalNumber\":null},{\"id\":\"309\",\"question_id\":\"135\",\"answer\":\"Programming Hyper Processor\",\"is_true\":\"1\",\"ordinalNumber\":null}]}]', '{\"countdown_expired\":\"1\",\"160\":\"\",\"153\":\"\",\"145\":\"\",\"sortedValues\":{\"152\":[\"5\",\"2\",\"7\",\"3\",\"4\",\"1\",\"6\"],\"134\":[\"4\",\"2\",\"3\",\"1\"]},\"result\":\"\"}'),
(4, 629, '[\"144\",\"158\",\"135\",\"160\",\"154\",\"145\",\"156\",\"134\",\"142\",\"153\",\"143\",\"148\",\"138\",\"137\",\"159\",\"155\",\"141\",\"136\",\"147\",\"139\"]', '{\"countdown_expired\":\"1\",\"160\":\"\",\"145\":\"\",\"sortedValues\":{\"134\":[\"2\",\"3\",\"1\",\"4\"]},\"result\":\"\",\"153\":\"\"}'),
(5, 630, '[\"142\",\"156\",\"141\",\"144\",\"148\",\"153\",\"134\",\"145\",\"138\",\"159\",\"157\",\"155\",\"135\",\"158\",\"139\",\"152\",\"160\",\"136\",\"147\",\"140\"]', '{\"countdown_expired\":\"1\",\"142\":[\"337\",\"338\",\"339\"],\"156\":[\"394\"],\"141\":[\"331\",\"332\",\"333\"],\"144\":[\"347\",\"348\"],\"148\":[\"360\"],\"153\":\"dvsfvsfvbsfv\",\"sortedValues\":{\"134\":[\"1\",\"2\",\"4\",\"3\"],\"152\":[\"5\",\"6\",\"2\",\"4\",\"3\",\"7\",\"1\"]},\"result\":\"\",\"145\":\"u1ea5ccacva\",\"138\":[\"319\"],\"159\":[\"403\"],\"157\":\"sdvsdv\",\"155\":[\"390\",\"391\"],\"135\":[\"306\",\"307\"],\"158\":[\"400\"],\"139\":[\"323\"],\"160\":\"dvvadvdv\",\"136\":[\"310\"],\"147\":[\"356\"],\"140\":[\"327\",\"328\"]}'),
(7, 632, '[\"135\",\"134\",\"136\"]', '{\"countdown_expired\":\"1\",\"135\":[\"306\",\"307\",\"308\"],\"sortedValues\":{\"134\":[\"3\",\"4\",\"1\",\"2\"]},\"result\":\"\",\"136\":[\"310\"]}'),
(8, 633, '[\"136\",\"135\",\"134\"]', '{\"countdown_expired\":\"1\",\"136\":[\"310\"],\"135\":[\"307\",\"308\"],\"sortedValues\":{\"134\":[\"3\",\"2\",\"1\",\"4\"]},\"result\":\"\"}'),
(9, 634, '[\"136\",\"134\",\"135\"]', '{\"countdown_expired\":\"1\",\"136\":[\"311\"],\"sortedValues\":{\"134\":[\"4\",\"1\",\"3\",\"2\"]},\"result\":\"\",\"135\":[\"306\"]}'),
(10, 635, '[\"142\",\"154\",\"137\",\"144\",\"147\",\"146\",\"139\",\"145\",\"158\",\"153\"]', '{\"countdown_expired\":\"1\",\"142\":[\"337\",\"339\"],\"154\":[\"386\"],\"137\":[\"316\"],\"144\":[\"347\",\"348\"],\"139\":[\"323\"],\"145\":\"sdvsdv\",\"158\":[\"398\"],\"153\":\"sdvsdvs\"}'),
(11, 636, '[\"135\",\"134\",\"136\"]', '{\"countdown_expired\":\"1\",\"sortedValues\":{\"134\":[\"4\",\"3\",\"1\",\"2\"]},\"result\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `number_question` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `limit_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `course_id`, `number_question`, `time`, `limit_number`) VALUES
(1, 106, 20, 20, 20),
(2, 108, 20, 20, 1000),
(3, 109, 20, 30, 100);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(10) DEFAULT NULL,
  `name_test` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `questions_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) NOT NULL,
  `title` longtext DEFAULT NULL,
  `descripsi` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `true_answers`
--

CREATE TABLE `true_answers` (
  `id` int(10) NOT NULL,
  `answer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `role`) VALUES
(13, 'adminnhom29', '748363302082753f82412f55e524e068', 'Mai Lý Hải', 1),
(14, 'mailyhai', '138c165426997c7a2eb71477cba12c7a', 'Mai Lý Hải', 0),
(15, 'mailyhaiadmin', 'a1c6898bc270eb1c63089bee97edeb79', 'Mai Lý Hải', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_read` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`notification_id`, `user_id`, `is_read`) VALUES
(154, 13, 0),
(154, 14, 0),
(155, 13, 0),
(155, 14, 0),
(156, 13, 0),
(156, 14, 0),
(157, 13, 0),
(157, 14, 0),
(158, 13, 0),
(158, 14, 0),
(159, 13, 0),
(160, 13, 0),
(161, 13, 0),
(162, 13, 0),
(163, 13, 0),
(164, 13, 0),
(165, 13, 0),
(166, 13, 0),
(167, 13, 0),
(168, 13, 0),
(169, 13, 0),
(169, 14, 0),
(170, 13, 0),
(171, 14, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKquestionId` (`question_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_users`
--
ALTER TABLE `course_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_USER` (`user_id`),
  ADD KEY `FK_COURSE` (`course_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_COURSES` (`id_course`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcourseId` (`course_id`),
  ADD KEY `FKuserId` (`user_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKuser` (`user_id`),
  ADD KEY `Fkcourse` (`course_id`);

--
-- Indexes for table `result_detail`
--
ALTER TABLE `result_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SETTING_FK` (`course_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD KEY `FKu` (`user_id`),
  ADD KEY `FKq` (`questions_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `true_answers`
--
ALTER TABLE `true_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtrueAnswersId` (`answer_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`notification_id`,`user_id`),
  ADD KEY `FK_USERSD` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `course_users`
--
ALTER TABLE `course_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=637;

--
-- AUTO_INCREMENT for table `result_detail`
--
ALTER TABLE `result_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `true_answers`
--
ALTER TABLE `true_answers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `FKquestionId` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_users`
--
ALTER TABLE `course_users`
  ADD CONSTRAINT `FK_COURSE` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `FK_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `FK_COURSES` FOREIGN KEY (`id_course`) REFERENCES `courses` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `FKcourseId` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKuserId` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `FKuser` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fkcourse` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `setting`
--
ALTER TABLE `setting`
  ADD CONSTRAINT `SETTING_FK` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `FKq` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `FKu` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `true_answers`
--
ALTER TABLE `true_answers`
  ADD CONSTRAINT `FKtrueAnswersId` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`);

--
-- Constraints for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD CONSTRAINT `FK_NOTIFICATIONS` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_USERSD` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
