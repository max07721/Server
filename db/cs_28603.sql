/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50701
 Source Host           : localhost:3306
 Source Schema         : cs_28603

 Target Server Type    : MySQL
 Target Server Version : 50701
 File Encoding         : 65001

 Date: 09/05/2023 09:31:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_token
-- ----------------------------
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token`  (
  `token_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '临时访问牌',
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `maxage` int(2) NOT NULL DEFAULT 2 COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 157 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登陆访问时长' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of access_token
-- ----------------------------
INSERT INTO `access_token` VALUES (57, '5accf85cb6a7f06f0aa2968deadaec1b', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (58, '46ff1d4d07714f046ba07b34bffe0af9', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (59, 'ed9d6cba9826fda1beafcd9326be7a86', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (60, 'c99763c1833ea0785d9e2b81da3fd28f', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (61, '33fbfaccd6d1cb9143e4129bd919d4b0', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (62, '493e13da5f293ba67a56a0fe3e1fa6cf', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (63, 'c4b48e9e2160db09c703041a8fee0a1f', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (64, 'd13cdaefd3823c360c959a02a262f71d', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (65, '6c6ff426fd77ea5a2025ce5ed2e42c8a', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (66, '80930065a61ffcdd5cbb75f60932973c', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (67, '94114763cf2e3b020495d8a27096d4ef', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (68, '761052c551c97c9317bc3aa475c85b84', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (69, '7c44ef14131a0ba7c16aa16cef104065', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (70, '96380f3d9542c80d04bdade1cf7635a5', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (71, 'bfdc7acfcbf5763fda81945b60961222', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (72, '170a598e51ae8ae2badde20a42fe171d', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (73, 'c82c357488c75926a92d8a9608d4b367', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (74, '4d35290c023f407a820f37dbbb1ceb09', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (75, '8d19162776682b695c0f62f3c7a92fec', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (76, 'a7ea2cdc9a2be179e19200e593ad5a69', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (77, 'c79a554f9832adc01f19682c5d576bc4', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (78, '1c7d95001fa09951a679841c8100ad1f', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (79, '776da1bcdd01ddb3cbf0a37fa13fc5b0', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (80, 'd336e88e57c329d0166931292c1fac41', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (81, '37a40f526a6c82fc6110b512802d35bf', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (82, '691ad331771f4109206d58aeee572371', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (83, '9942e458886219960d3344b4a6a6fbec', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (84, 'e9939a8b7ccf9f548f0bbb5664981f96', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (85, 'f5b27912060d1909bef61fab9d96faae', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (86, '7c5888682f1d449eb1b62f0054a79fbf', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (87, '00dfdc6ac21c4a9da80fd71c990764d1', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (88, '3cce592bc72840ab932ce96d85a194da', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (89, '43fdaa989a644ad683ef4b4d488e8629', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (90, 'd6a3cecadacff0dbd6b43b25372cc2a2', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (91, '5570bc5b07b3589f4ef8553bd46eb0d1', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (92, '5570bc5b07b3589f4ef8553bd46eb0d1', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (93, '26c553bd2ee2ab6605d18dfd310d85f9', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (94, '3fd52f81236ed2c37ff91a6696d4e47a', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (95, '893332e9ee67d60d8312b3700c58a359', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (96, 'b7844068ade535b2e517df4a40948703', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (97, '179b37a5e1893c3af6b946bd5a1c8625', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (98, '3a47b8a040a83ebbc9194cb255dc668c', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (99, 'afa60196afb77dcc2b520ed13a817560', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (100, '7fc6d9b324f8c0a3a1784d04ef132692', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (101, '84e31b291f2bde6b7ceb27af5fe8eee3', NULL, 2, '2023-04-28 18:21:49', '2023-04-28 18:21:49', 1);
INSERT INTO `access_token` VALUES (103, '42a4271623df4769987b8fa0754898fb', NULL, 2, '2023-04-27 12:23:26', '2023-04-27 12:23:26', 1);
INSERT INTO `access_token` VALUES (104, 'aafd293d243a4657841246368edfc697', NULL, 2, '2023-04-27 12:25:41', '2023-04-27 12:25:41', 1);
INSERT INTO `access_token` VALUES (105, '20d1ccf47bd2458eb0b9f17d0ecb3684', NULL, 2, '2023-04-27 18:19:47', '2023-04-27 18:19:47', 1);
INSERT INTO `access_token` VALUES (123, '6c6bd5b9208c498c94ce958034f4baf7', NULL, 2, '2023-04-28 15:25:53', '2023-04-28 15:25:53', 1);
INSERT INTO `access_token` VALUES (125, 'bebc7dcce2524f30aa2680c2df5d4be2', NULL, 2, '2023-05-03 21:03:58', '2023-05-03 21:03:58', 1);
INSERT INTO `access_token` VALUES (130, 'c6f1c43fcd3e489891884e17ef62c24f', NULL, 2, '2023-05-07 21:52:00', '2023-05-07 21:52:00', 1);
INSERT INTO `access_token` VALUES (131, '27f5c269306f40bbb4c71e8cf76b6c86', NULL, 2, '2023-05-07 22:46:32', '2023-05-07 22:46:32', 1);
INSERT INTO `access_token` VALUES (133, '68a217ca03d14996a94492bfc879496f', NULL, 2, '2023-05-07 23:11:19', '2023-05-07 23:11:19', 1);
INSERT INTO `access_token` VALUES (154, '3a4bf236872249399f4821d3f1829064', NULL, 2, '2023-05-08 17:51:33', '2023-05-08 17:51:33', 3);
INSERT INTO `access_token` VALUES (155, 'b46cea05b89547f2838dda23c85e74d9', NULL, 2, '2023-05-08 19:38:13', '2023-05-08 19:38:13', 1);
INSERT INTO `access_token` VALUES (156, '62db7f4b56ec4d459f5fd70e1c5abfda', NULL, 2, '2023-05-08 21:50:47', '2023-05-08 21:50:47', 1);

-- ----------------------------
-- Table structure for answer_record
-- ----------------------------
DROP TABLE IF EXISTS `answer_record`;
CREATE TABLE `answer_record`  (
  `answer_record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '解答记录ID',
  `teacher_account` int(11) NULL DEFAULT 0 COMMENT '教师账号',
  `teachers_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `student_account` int(11) NULL DEFAULT 0 COMMENT '学生账号',
  `student_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `course_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `experimental_topic` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验题目',
  `experimental_location` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验地点',
  `experimental_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '实验内容',
  `experimental_time` datetime NULL DEFAULT NULL COMMENT '实验时间',
  `experimental_solution` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '实验解答',
  `examine_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '未审核' COMMENT '审核状态',
  `examine_reply` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '审核回复',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`answer_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '解答记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of answer_record
-- ----------------------------
INSERT INTO `answer_record` VALUES (1, 0, '教师姓名1', 0, '学生姓名1', '课程名称1', '实验题目1', '实验地点1', '实验内容1', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区1', '未审核', '', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `answer_record` VALUES (2, 0, '教师姓名2', 0, '学生姓名2', '课程名称2', '实验题目2', '实验地点2', '实验内容2', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区2', '未审核', '', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `answer_record` VALUES (3, 0, '教师姓名3', 0, '学生姓名3', '课程名称3', '实验题目3', '实验地点3', '实验内容3', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区3', '未审核', '', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `answer_record` VALUES (4, 0, '教师姓名4', 0, '学生姓名4', '课程名称4', '实验题目4', '实验地点4', '实验内容4', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区4', '未审核', '', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `answer_record` VALUES (5, 0, '教师姓名5', 0, '学生姓名5', '课程名称5', '实验题目5', '实验地点5', '实验内容5', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区5', '未审核', '', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `answer_record` VALUES (6, 0, '教师姓名6', 0, '学生姓名6', '课程名称6', '实验题目6', '实验地点6', '实验内容6', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区6', '未审核', '', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `answer_record` VALUES (7, 0, '教师姓名7', 0, '学生姓名7', '课程名称7', '实验题目7', '实验地点7', '实验内容7', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区7', '未审核', '', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `answer_record` VALUES (8, 0, '教师姓名8', 0, '学生姓名8', '课程名称8', '实验题目8', '实验地点8', '实验内容8', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区8', '未审核', '', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `answer_record` VALUES (9, 3, '张一', 2, '张三', '云计算', '实验题目1', '信息楼206', '云计算的定义', '2023-04-28 00:00:00', '<p>分布式技术</p>', '已通过', '', 0, '2023-04-28 15:19:49', '2023-04-28 15:24:39');
INSERT INTO `answer_record` VALUES (10, 3, '张一', 2, '张三', '云计算', '实验题目1', '信息楼206', '云计算的定义', '2023-04-29 00:00:00', '<p>ffqfqfqfqfqffqff</p>', '未审核', '', 0, '2023-04-28 15:25:30', '2023-04-28 15:25:30');
INSERT INTO `answer_record` VALUES (11, 3, '张一', 4, '张四', '云计算', '实验题目1', '博文505', '云计算的应用', '2023-05-08 00:00:00', '<p>sfaf</p>', '未审核', '', 0, '2023-05-08 17:38:20', '2023-05-08 17:38:20');

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth`  (
  `auth_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否可增加：',
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否可删除：',
  `set` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否可修改：',
  `get` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否可查看：',
  `field_add` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '添加字段：',
  `field_set` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '修改字段：',
  `field_get` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '查询字段：',
  `table_nav_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跨表导航：',
  `option` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户权限管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth
-- ----------------------------
INSERT INTO `auth` VALUES (1, '管理员', '学生用户', 'student_users', '学生用户', '/student_users/table', '', '_blank', 1, 1, 1, 1, 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (2, '管理员', '学生用户', 'student_users', '学生用户详情', '/student_users/view', '', '_blank', 1, 1, 1, 1, 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (3, '管理员', '教师用户', 'teacher_users', '教师用户', '/teacher_users/table', '', '_blank', 1, 1, 1, 1, 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (4, '管理员', '教师用户', 'teacher_users', '教师用户详情', '/teacher_users/view', '', '_blank', 1, 1, 1, 1, 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (5, '管理员', '课程信息', 'course_information', '课程信息', '/course_information/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (6, '管理员', '课程信息', 'course_information', '课程信息详情', '/course_information/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (7, '管理员', '选课信息', 'course_selection', '选课信息', '/course_selection/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', NULL, '0', '{\"examine\":true}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (8, '管理员', '选课信息', 'course_selection', '选课信息详情', '/course_selection/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (9, '管理员', '学生签到', 'student_check_in', '学生签到', '/student_check_in/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', NULL, '0', '{\"examine\":true}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (10, '管理员', '学生签到', 'student_check_in', '学生签到详情', '/student_check_in/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (11, '管理员', '考勤记录', 'check_work_attendance', '考勤记录', '/check_work_attendance/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', NULL, '0', '{\"figure\":true}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (12, '管理员', '考勤记录', 'check_work_attendance', '考勤记录详情', '/check_work_attendance/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (13, '管理员', '实验信息', 'experimental_information', '实验信息', '/experimental_information/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (14, '管理员', '实验信息', 'experimental_information', '实验信息详情', '/experimental_information/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (15, '管理员', '解答记录', 'answer_record', '解答记录', '/answer_record/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', NULL, '0', '{\"examine\":true}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (16, '管理员', '解答记录', 'answer_record', '解答记录详情', '/answer_record/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (17, '管理员', '实验报告', 'experimental_report', '实验报告', '/experimental_report/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (18, '管理员', '实验报告', 'experimental_report', '实验报告详情', '/experimental_report/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (19, '管理员', '整体评价', 'overall_evaluation', '整体评价', '/overall_evaluation/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', NULL, '0', '{\"figure\":true}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (20, '管理员', '整体评价', 'overall_evaluation', '整体评价详情', '/overall_evaluation/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (21, '管理员', '课程名称', 'course_name', '课程名称', '/course_name/table', '', '_blank', 1, 1, 1, 1, 'course_name', 'course_name', 'course_name', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (22, '管理员', '课程名称', 'course_name', '课程名称详情', '/course_name/view', '', '_blank', 1, 1, 1, 1, 'course_name', 'course_name', 'course_name', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (23, '管理员', '实验题目', 'experimental_topic', '实验题目', '/experimental_topic/table', '', '_blank', 1, 1, 1, 1, 'course_name,experimental_topic', 'course_name,experimental_topic', 'course_name,experimental_topic', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (24, '管理员', '实验题目', 'experimental_topic', '实验题目详情', '/experimental_topic/view', '', '_blank', 1, 1, 1, 1, 'course_name,experimental_topic', 'course_name,experimental_topic', 'course_name,experimental_topic', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (25, '管理员', '评论', 'comment', '评论列表', '/comment/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (26, '管理员', '评论', 'comment', '评论详情', '/comment/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (27, '管理员', '评论', 'comment', '我的评论', '/comment/list', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (28, '管理员', '评论', 'comment', '评论详情', '/comment/details', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (29, '游客', '学生用户', 'student_users', '学生用户', '/student_users/table', '', '_blank', 1, 0, 0, 0, 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (30, '游客', '学生用户', 'student_users', '学生用户详情', '/student_users/view', '', '_blank', 1, 0, 0, 0, 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (31, '游客', '教师用户', 'teacher_users', '教师用户', '/teacher_users/table', '', '_blank', 1, 0, 0, 0, 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (32, '游客', '教师用户', 'teacher_users', '教师用户详情', '/teacher_users/view', '', '_blank', 1, 0, 0, 0, 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (33, '游客', '课程信息', 'course_information', '课程信息', '/course_information/table', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (34, '游客', '课程信息', 'course_information', '课程信息详情', '/course_information/view', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (35, '游客', '选课信息', 'course_selection', '选课信息', '/course_selection/table', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', NULL, '0', '{\"examine\":false}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (36, '游客', '选课信息', 'course_selection', '选课信息详情', '/course_selection/view', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (37, '游客', '学生签到', 'student_check_in', '学生签到', '/student_check_in/table', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', NULL, '0', '{\"examine\":false}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (38, '游客', '学生签到', 'student_check_in', '学生签到详情', '/student_check_in/view', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (39, '游客', '考勤记录', 'check_work_attendance', '考勤记录', '/check_work_attendance/table', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', NULL, '0', '{\"figure\":false}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (40, '游客', '考勤记录', 'check_work_attendance', '考勤记录详情', '/check_work_attendance/view', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', NULL, '0', '{}', '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `auth` VALUES (41, '游客', '实验信息', 'experimental_information', '实验信息', '/experimental_information/table', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (42, '游客', '实验信息', 'experimental_information', '实验信息详情', '/experimental_information/view', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (43, '游客', '解答记录', 'answer_record', '解答记录', '/answer_record/table', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', NULL, '0', '{\"examine\":false}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (44, '游客', '解答记录', 'answer_record', '解答记录详情', '/answer_record/view', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (45, '游客', '实验报告', 'experimental_report', '实验报告', '/experimental_report/table', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (46, '游客', '实验报告', 'experimental_report', '实验报告详情', '/experimental_report/view', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (47, '游客', '整体评价', 'overall_evaluation', '整体评价', '/overall_evaluation/table', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', NULL, '0', '{\"figure\":false}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (48, '游客', '整体评价', 'overall_evaluation', '整体评价详情', '/overall_evaluation/view', '', '_blank', 0, 0, 0, 0, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (49, '游客', '课程名称', 'course_name', '课程名称', '/course_name/table', '', '_blank', 0, 0, 0, 0, 'course_name', 'course_name', 'course_name', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (50, '游客', '课程名称', 'course_name', '课程名称详情', '/course_name/view', '', '_blank', 0, 0, 0, 0, 'course_name', 'course_name', 'course_name', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (51, '游客', '实验题目', 'experimental_topic', '实验题目', '/experimental_topic/table', '', '_blank', 0, 0, 0, 0, 'course_name,experimental_topic', 'course_name,experimental_topic', 'course_name,experimental_topic', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (52, '游客', '实验题目', 'experimental_topic', '实验题目详情', '/experimental_topic/view', '', '_blank', 0, 0, 0, 0, 'course_name,experimental_topic', 'course_name,experimental_topic', 'course_name,experimental_topic', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (53, '游客', '评论', 'comment', '评论列表', '/comment/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (54, '游客', '评论', 'comment', '评论详情', '/comment/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (55, '游客', '评论', 'comment', '我的评论', '/comment/list', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (56, '游客', '评论', 'comment', '评论详情', '/comment/details', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (57, '学生用户', '学生用户', 'student_users', '学生用户', '/student_users/table', '', '_blank', 0, 0, 0, 0, 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (58, '学生用户', '学生用户', 'student_users', '学生用户详情', '/student_users/view', '', '_blank', 0, 0, 0, 0, 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (59, '学生用户', '教师用户', 'teacher_users', '教师用户', '/teacher_users/table', '', '_blank', 0, 0, 0, 0, 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (60, '学生用户', '教师用户', 'teacher_users', '教师用户详情', '/teacher_users/view', '', '_blank', 0, 0, 0, 0, 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (61, '学生用户', '课程信息', 'course_information', '课程信息', '/course_information/table', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (62, '学生用户', '课程信息', 'course_information', '课程信息详情', '/course_information/view', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (63, '学生用户', '选课信息', 'course_selection', '选课信息', '/course_selection/table', '', '_blank', 1, 1, 0, 1, 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', NULL, '0', '{\"examine\":false}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (64, '学生用户', '选课信息', 'course_selection', '选课信息详情', '/course_selection/view', '', '_blank', 1, 1, 0, 1, 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (65, '学生用户', '学生签到', 'student_check_in', '学生签到', '/student_check_in/table', '', '_blank', 1, 1, 0, 1, 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', NULL, '0', '{\"examine\":false}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (66, '学生用户', '学生签到', 'student_check_in', '学生签到详情', '/student_check_in/view', '', '_blank', 1, 1, 0, 1, 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (67, '学生用户', '考勤记录', 'check_work_attendance', '考勤记录', '/check_work_attendance/table', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', NULL, '0', '{\"figure\":false}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (68, '学生用户', '考勤记录', 'check_work_attendance', '考勤记录详情', '/check_work_attendance/view', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (69, '学生用户', '实验信息', 'experimental_information', '实验信息', '/experimental_information/table', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (70, '学生用户', '实验信息', 'experimental_information', '实验信息详情', '/experimental_information/view', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (71, '学生用户', '解答记录', 'answer_record', '解答记录', '/answer_record/table', '', '_blank', 1, 1, 0, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', NULL, '0', '{\"examine\":false}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (72, '学生用户', '解答记录', 'answer_record', '解答记录详情', '/answer_record/view', '', '_blank', 1, 1, 0, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (73, '学生用户', '实验报告', 'experimental_report', '实验报告', '/experimental_report/table', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (74, '学生用户', '实验报告', 'experimental_report', '实验报告详情', '/experimental_report/view', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (75, '学生用户', '整体评价', 'overall_evaluation', '整体评价', '/overall_evaluation/table', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', NULL, '0', '{\"figure\":false}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (76, '学生用户', '整体评价', 'overall_evaluation', '整体评价详情', '/overall_evaluation/view', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (77, '学生用户', '课程名称', 'course_name', '课程名称', '/course_name/table', '', '_blank', 0, 0, 0, 0, 'course_name', 'course_name', 'course_name', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (78, '学生用户', '课程名称', 'course_name', '课程名称详情', '/course_name/view', '', '_blank', 0, 0, 0, 0, 'course_name', 'course_name', 'course_name', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (79, '学生用户', '实验题目', 'experimental_topic', '实验题目', '/experimental_topic/table', '', '_blank', 0, 0, 0, 0, 'course_name,experimental_topic', 'course_name,experimental_topic', 'course_name,experimental_topic', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (80, '学生用户', '实验题目', 'experimental_topic', '实验题目详情', '/experimental_topic/view', '', '_blank', 0, 0, 0, 0, 'course_name,experimental_topic', 'course_name,experimental_topic', 'course_name,experimental_topic', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (81, '学生用户', '评论', 'comment', '评论列表', '/comment/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (82, '学生用户', '评论', 'comment', '评论详情', '/comment/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (83, '学生用户', '评论', 'comment', '我的评论', '/comment/list', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (84, '学生用户', '评论', 'comment', '评论详情', '/comment/details', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (85, '教师用户', '学生用户', 'student_users', '学生用户', '/student_users/table', '', '_blank', 0, 0, 0, 0, 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (86, '教师用户', '学生用户', 'student_users', '学生用户详情', '/student_users/view', '', '_blank', 0, 0, 0, 0, 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', 'student_id,student_name,student_gender', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (87, '教师用户', '教师用户', 'teacher_users', '教师用户', '/teacher_users/table', '', '_blank', 0, 0, 0, 0, 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (88, '教师用户', '教师用户', 'teacher_users', '教师用户详情', '/teacher_users/view', '', '_blank', 0, 0, 0, 0, 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', 'teachers_name,teacher_id,gender_of_teacher', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (89, '教师用户', '课程信息', 'course_information', '课程信息', '/course_information/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (90, '教师用户', '课程信息', 'course_information', '课程信息详情', '/course_information/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', 'teacher_account,teachers_name,course_name,experimental_arrangement,class_location,course_arrangement', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (91, '教师用户', '选课信息', 'course_selection', '选课信息', '/course_selection/table', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', NULL, '0', '{\"examine\":true}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (92, '教师用户', '选课信息', 'course_selection', '选课信息详情', '/course_selection/view', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', 'teacher_account,teachers_name,course_name,experimental_arrangement,student_id,student_account,student_name', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (93, '教师用户', '学生签到', 'student_check_in', '学生签到', '/student_check_in/table', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', NULL, '0', '{\"examine\":true}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (94, '教师用户', '学生签到', 'student_check_in', '学生签到详情', '/student_check_in/view', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', 'teacher_account,teachers_name,course_name,student_account,student_name,submission_time,confirm_attendance', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (95, '教师用户', '考勤记录', 'check_work_attendance', '考勤记录', '/check_work_attendance/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', NULL, '0', '{\"figure\":true}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (96, '教师用户', '考勤记录', 'check_work_attendance', '考勤记录详情', '/check_work_attendance/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', 'teacher_account,teachers_name,course_name,student_account,student_name,class_time,attendance_situation', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (97, '教师用户', '实验信息', 'experimental_information', '实验信息', '/experimental_information/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (98, '教师用户', '实验信息', 'experimental_information', '实验信息详情', '/experimental_information/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (99, '教师用户', '解答记录', 'answer_record', '解答记录', '/answer_record/table', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', NULL, '0', '{\"examine\":true}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (100, '教师用户', '解答记录', 'answer_record', '解答记录详情', '/answer_record/view', '', '_blank', 0, 0, 0, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (101, '教师用户', '实验报告', 'experimental_report', '实验报告', '/experimental_report/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (102, '教师用户', '实验报告', 'experimental_report', '实验报告详情', '/experimental_report/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_location,experimental_content,experimental_time,experimental_solution,review_comments,experimental_results', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (103, '教师用户', '整体评价', 'overall_evaluation', '整体评价', '/overall_evaluation/table', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', NULL, '0', '{\"figure\":true}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (104, '教师用户', '整体评价', 'overall_evaluation', '整体评价详情', '/overall_evaluation/view', '', '_blank', 1, 1, 1, 1, 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', 'teacher_account,teachers_name,student_account,student_name,course_name,experimental_topic,experimental_performance,evaluation_rules,evaluation_score', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (105, '教师用户', '课程名称', 'course_name', '课程名称', '/course_name/table', '', '_blank', 0, 0, 0, 1, 'course_name', 'course_name', 'course_name', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (106, '教师用户', '课程名称', 'course_name', '课程名称详情', '/course_name/view', '', '_blank', 0, 0, 0, 1, 'course_name', 'course_name', 'course_name', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (107, '教师用户', '实验题目', 'experimental_topic', '实验题目', '/experimental_topic/table', '', '_blank', 0, 0, 0, 1, 'course_name,experimental_topic', 'course_name,experimental_topic', 'course_name,experimental_topic', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (108, '教师用户', '实验题目', 'experimental_topic', '实验题目详情', '/experimental_topic/view', '', '_blank', 0, 0, 0, 1, 'course_name,experimental_topic', 'course_name,experimental_topic', 'course_name,experimental_topic', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (109, '教师用户', '评论', 'comment', '评论列表', '/comment/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (110, '教师用户', '评论', 'comment', '评论详情', '/comment/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (111, '教师用户', '评论', 'comment', '我的评论', '/comment/list', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `auth` VALUES (112, '教师用户', '评论', 'comment', '评论详情', '/comment/details', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, '0', '{}', '2023-04-26 22:06:11', '2023-04-26 22:06:11');

-- ----------------------------
-- Table structure for check_work_attendance
-- ----------------------------
DROP TABLE IF EXISTS `check_work_attendance`;
CREATE TABLE `check_work_attendance`  (
  `check_work_attendance_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考勤记录ID',
  `teacher_account` int(11) NULL DEFAULT 0 COMMENT '教师账号',
  `teachers_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `course_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `student_account` int(11) NULL DEFAULT 0 COMMENT '学生账号',
  `student_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `class_time` datetime NULL DEFAULT NULL COMMENT '上课时间',
  `attendance_situation` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考勤情况',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`check_work_attendance_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考勤记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of check_work_attendance
-- ----------------------------
INSERT INTO `check_work_attendance` VALUES (1, 0, '教师姓名1', '课程名称1', 0, '学生姓名1', '2023-04-26 22:06:10', '考勤情况1', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `check_work_attendance` VALUES (2, 0, '教师姓名2', '课程名称2', 0, '学生姓名2', '2023-04-26 22:06:10', '考勤情况2', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `check_work_attendance` VALUES (3, 0, '教师姓名3', '课程名称3', 0, '学生姓名3', '2023-04-26 22:06:10', '考勤情况3', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `check_work_attendance` VALUES (4, 0, '教师姓名4', '课程名称4', 0, '学生姓名4', '2023-04-26 22:06:10', '考勤情况4', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `check_work_attendance` VALUES (5, 0, '教师姓名5', '课程名称5', 0, '学生姓名5', '2023-04-26 22:06:10', '考勤情况5', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `check_work_attendance` VALUES (6, 0, '教师姓名6', '课程名称6', 0, '学生姓名6', '2023-04-26 22:06:10', '考勤情况6', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `check_work_attendance` VALUES (7, 0, '教师姓名7', '课程名称7', 0, '学生姓名7', '2023-04-26 22:06:10', '考勤情况7', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `check_work_attendance` VALUES (8, 0, '教师姓名8', '课程名称8', 0, '学生姓名8', '2023-04-26 22:06:10', '考勤情况8', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');

-- ----------------------------
-- Table structure for course_information
-- ----------------------------
DROP TABLE IF EXISTS `course_information`;
CREATE TABLE `course_information`  (
  `course_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程信息ID',
  `teacher_account` int(11) NULL DEFAULT 0 COMMENT '教师账号',
  `teachers_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `course_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `experimental_arrangement` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验安排',
  `class_location` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上课地点',
  `course_arrangement` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程安排',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`course_information_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_information
-- ----------------------------
INSERT INTO `course_information` VALUES (1, 3, '张一', '云计算', '实验安排1', '信息楼206', '课程安排1', 0, '2023-04-26 22:06:10', '2023-04-28 15:11:58');
INSERT INTO `course_information` VALUES (2, 3, '张一', '操作系统', '实验安排2', '信息楼207', '课程安排2', 0, '2023-04-26 22:06:10', '2023-04-28 15:12:25');

-- ----------------------------
-- Table structure for course_name
-- ----------------------------
DROP TABLE IF EXISTS `course_name`;
CREATE TABLE `course_name`  (
  `course_name_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程名称ID',
  `course_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`course_name_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程名称' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_name
-- ----------------------------
INSERT INTO `course_name` VALUES (1, '课程名称1', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `course_name` VALUES (2, '云计算', 0, '2023-04-26 22:06:10', '2023-04-28 15:10:56');
INSERT INTO `course_name` VALUES (3, '操作系统', 0, '2023-04-26 22:06:10', '2023-04-28 15:11:05');
INSERT INTO `course_name` VALUES (4, '数据结构', 0, '2023-04-26 22:06:10', '2023-04-28 15:11:12');
INSERT INTO `course_name` VALUES (5, '计算机网络', 0, '2023-04-26 22:06:10', '2023-04-28 15:11:18');
INSERT INTO `course_name` VALUES (6, '计算机组成原理', 0, '2023-04-26 22:06:10', '2023-04-28 15:11:28');
INSERT INTO `course_name` VALUES (7, '课程名称7', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `course_name` VALUES (8, '课程名称8', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `course_name` VALUES (9, '网络规划', 0, '2023-04-27 12:26:23', '2023-04-27 12:26:23');

-- ----------------------------
-- Table structure for course_selection
-- ----------------------------
DROP TABLE IF EXISTS `course_selection`;
CREATE TABLE `course_selection`  (
  `course_selection_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '选课信息ID',
  `teacher_account` int(11) NULL DEFAULT 0 COMMENT '教师账号',
  `teachers_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `course_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `experimental_arrangement` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验安排',
  `student_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生学号',
  `student_account` int(11) NULL DEFAULT 0 COMMENT '学生账号',
  `student_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `examine_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '未审核' COMMENT '审核状态',
  `examine_reply` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '审核回复',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`course_selection_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '选课信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_selection
-- ----------------------------
INSERT INTO `course_selection` VALUES (5, 0, '教师姓名5', '课程名称5', '实验安排5', '学生学号5', 0, '学生姓名5', '未审核', '', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `course_selection` VALUES (9, 3, '张一', '云计算', '实验安排1', '111111', 2, '张三', '已通过', '', 0, '2023-04-28 15:13:25', '2023-04-28 15:22:52');
INSERT INTO `course_selection` VALUES (10, 3, '张一', '云计算', '实验安排1', '444444', 4, '张四', '已通过', '', 0, '2023-05-08 17:29:06', '2023-05-08 17:30:36');

-- ----------------------------
-- Table structure for experimental_information
-- ----------------------------
DROP TABLE IF EXISTS `experimental_information`;
CREATE TABLE `experimental_information`  (
  `experimental_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '实验信息ID',
  `teacher_account` int(11) NULL DEFAULT 0 COMMENT '教师账号',
  `teachers_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `student_account` int(11) NULL DEFAULT 0 COMMENT '学生账号',
  `student_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `course_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `experimental_topic` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验题目',
  `experimental_location` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验地点',
  `experimental_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '实验内容',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`experimental_information_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实验信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of experimental_information
-- ----------------------------
INSERT INTO `experimental_information` VALUES (1, 3, '张一', 2, '张三', '云计算', '实验题目1', '信息楼206', '云计算的定义', 0, '2023-04-26 22:06:10', '2023-04-28 15:15:55');
INSERT INTO `experimental_information` VALUES (2, 0, '教师姓名2', 0, '学生姓名2', '课程名称2', '实验题目2', '实验地点2', '实验内容2', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_information` VALUES (3, 0, '教师姓名3', 0, '学生姓名3', '课程名称3', '实验题目3', '实验地点3', '实验内容3', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_information` VALUES (4, 0, '教师姓名4', 0, '学生姓名4', '课程名称4', '实验题目4', '实验地点4', '实验内容4', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_information` VALUES (5, 0, '教师姓名5', 0, '学生姓名5', '课程名称5', '实验题目5', '实验地点5', '实验内容5', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_information` VALUES (6, 0, '教师姓名6', 0, '学生姓名6', '课程名称6', '实验题目6', '实验地点6', '实验内容6', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_information` VALUES (7, 0, '教师姓名7', 0, '学生姓名7', '课程名称7', '实验题目7', '实验地点7', '实验内容7', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_information` VALUES (8, 0, '教师姓名8', 0, '学生姓名8', '课程名称8', '实验题目8', '实验地点8', '实验内容8', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_information` VALUES (9, 3, '张一', 4, '张四', '云计算', '实验题目1', '博文505', '云计算的应用', 0, '2023-05-08 17:31:00', '2023-05-08 17:37:13');

-- ----------------------------
-- Table structure for experimental_report
-- ----------------------------
DROP TABLE IF EXISTS `experimental_report`;
CREATE TABLE `experimental_report`  (
  `experimental_report_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '实验报告ID',
  `teacher_account` int(11) NULL DEFAULT 0 COMMENT '教师账号',
  `teachers_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `student_account` int(11) NULL DEFAULT 0 COMMENT '学生账号',
  `student_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `course_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `experimental_topic` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验题目',
  `experimental_location` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验地点',
  `experimental_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '实验内容',
  `experimental_time` datetime NULL DEFAULT NULL COMMENT '实验时间',
  `experimental_solution` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '实验解答',
  `review_comments` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '批阅评语',
  `experimental_results` int(11) NULL DEFAULT 0 COMMENT '实验成绩',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`experimental_report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实验报告' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of experimental_report
-- ----------------------------
INSERT INTO `experimental_report` VALUES (1, 0, '教师姓名1', 0, '学生姓名1', '课程名称1', '实验题目1', '实验地点1', '实验内容1', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区1', '批阅评语1', 1, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_report` VALUES (2, 0, '教师姓名2', 0, '学生姓名2', '课程名称2', '实验题目2', '实验地点2', '实验内容2', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区2', '批阅评语2', 2, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_report` VALUES (3, 0, '教师姓名3', 0, '学生姓名3', '课程名称3', '实验题目3', '实验地点3', '实验内容3', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区3', '批阅评语3', 3, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_report` VALUES (4, 0, '教师姓名4', 0, '学生姓名4', '课程名称4', '实验题目4', '实验地点4', '实验内容4', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区4', '批阅评语4', 4, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_report` VALUES (5, 0, '教师姓名5', 0, '学生姓名5', '课程名称5', '实验题目5', '实验地点5', '实验内容5', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区5', '批阅评语5', 5, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_report` VALUES (6, 0, '教师姓名6', 0, '学生姓名6', '课程名称6', '实验题目6', '实验地点6', '实验内容6', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区6', '批阅评语6', 6, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_report` VALUES (7, 0, '教师姓名7', 0, '学生姓名7', '课程名称7', '实验题目7', '实验地点7', '实验内容7', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区7', '批阅评语7', 7, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_report` VALUES (8, 0, '教师姓名8', 0, '学生姓名8', '课程名称8', '实验题目8', '实验地点8', '实验内容8', '2023-04-26 22:06:10', '此处可上传文字、图片、视频、超链接、表格等内容区8', '批阅评语8', 8, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_report` VALUES (9, 3, '张一', 2, '张三', '云计算', '实验题目1', '信息楼206', '云计算的定义', '2023-04-29 00:00:00', '<p>ffqfqfqfqfqffqff</p>', '良', 10, 0, '2023-04-28 15:26:28', '2023-04-28 15:26:28');
INSERT INTO `experimental_report` VALUES (10, 3, '张一', 4, '张四', '云计算', '实验题目1', '博文505', '云计算的应用', '2023-05-08 00:00:00', '<p>sfaf</p>', 'hao', 3, 0, '2023-05-08 17:38:53', '2023-05-08 17:38:53');

-- ----------------------------
-- Table structure for experimental_topic
-- ----------------------------
DROP TABLE IF EXISTS `experimental_topic`;
CREATE TABLE `experimental_topic`  (
  `experimental_topic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '实验题目ID',
  `course_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `experimental_topic` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验题目',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`experimental_topic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实验题目' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of experimental_topic
-- ----------------------------
INSERT INTO `experimental_topic` VALUES (1, '课程名称1', '实验题目1', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_topic` VALUES (2, '课程名称2', '实验题目2', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_topic` VALUES (3, '课程名称3', '实验题目3', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_topic` VALUES (4, '课程名称4', '实验题目4', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_topic` VALUES (5, '课程名称5', '实验题目5', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_topic` VALUES (6, '课程名称6', '实验题目6', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_topic` VALUES (7, '课程名称7', '实验题目7', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `experimental_topic` VALUES (8, '课程名称8', '实验题目8', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');

-- ----------------------------
-- Table structure for hits
-- ----------------------------
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits`  (
  `hits_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '用户点击' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hits
-- ----------------------------

-- ----------------------------
-- Table structure for overall_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `overall_evaluation`;
CREATE TABLE `overall_evaluation`  (
  `overall_evaluation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '整体评价ID',
  `teacher_account` int(11) NULL DEFAULT 0 COMMENT '教师账号',
  `teachers_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `student_account` int(11) NULL DEFAULT 0 COMMENT '学生账号',
  `student_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `course_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `experimental_topic` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验题目',
  `experimental_performance` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '实验表现',
  `evaluation_rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评价规则',
  `evaluation_score` int(11) NULL DEFAULT 0 COMMENT '整体成绩',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`overall_evaluation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '整体评价' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of overall_evaluation
-- ----------------------------
INSERT INTO `overall_evaluation` VALUES (1, 3, '张一', 2, '张三', '云计算', '云计算的定义', '良好', '回答完整', 10, 0, '2023-04-26 22:06:10', '2023-04-28 15:27:50');
INSERT INTO `overall_evaluation` VALUES (2, 0, '教师姓名2', 0, '学生姓名2', '课程名称2', '实验题目2', '实验表现2', '评价规则2', 2, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `overall_evaluation` VALUES (3, 0, '教师姓名3', 0, '学生姓名3', '课程名称3', '实验题目3', '实验表现3', '评价规则3', 3, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `overall_evaluation` VALUES (4, 0, '教师姓名4', 0, '学生姓名4', '课程名称4', '实验题目4', '实验表现4', '评价规则4', 4, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `overall_evaluation` VALUES (5, 0, '教师姓名5', 0, '学生姓名5', '课程名称5', '实验题目5', '实验表现5', '评价规则5', 5, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `overall_evaluation` VALUES (6, 0, '教师姓名6', 0, '学生姓名6', '课程名称6', '实验题目6', '实验表现6', '评价规则6', 6, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `overall_evaluation` VALUES (7, 0, '教师姓名7', 0, '学生姓名7', '课程名称7', '实验题目7', '实验表现7', '评价规则7', 7, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `overall_evaluation` VALUES (8, 0, '教师姓名8', 0, '学生姓名8', '课程名称8', '实验题目8', '实验表现8', '评价规则8', 8, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');

-- ----------------------------
-- Table structure for student_check_in
-- ----------------------------
DROP TABLE IF EXISTS `student_check_in`;
CREATE TABLE `student_check_in`  (
  `student_check_in_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生签到ID',
  `teacher_account` int(11) NULL DEFAULT 0 COMMENT '教师账号',
  `teachers_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `course_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `student_account` int(11) NULL DEFAULT 0 COMMENT '学生账号',
  `student_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `submission_time` datetime NULL DEFAULT NULL COMMENT '提交时间',
  `confirm_attendance` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '确认到场',
  `examine_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '未审核' COMMENT '审核状态',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`student_check_in_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生签到' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student_check_in
-- ----------------------------
INSERT INTO `student_check_in` VALUES (1, 0, '教师姓名1', '课程名称1', 0, '学生姓名1', '2023-04-26 22:06:10', '确认到场1', '未审核', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `student_check_in` VALUES (2, 0, '教师姓名2', '课程名称2', 0, '学生姓名2', '2023-04-26 22:06:10', '确认到场2', '未审核', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `student_check_in` VALUES (3, 0, '教师姓名3', '课程名称3', 0, '学生姓名3', '2023-04-26 22:06:10', '确认到场3', '未审核', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `student_check_in` VALUES (4, 0, '教师姓名4', '课程名称4', 0, '学生姓名4', '2023-04-26 22:06:10', '确认到场4', '未审核', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `student_check_in` VALUES (5, 0, '教师姓名5', '课程名称5', 0, '学生姓名5', '2023-04-26 22:06:10', '确认到场5', '未审核', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `student_check_in` VALUES (6, 0, '教师姓名6', '课程名称6', 0, '学生姓名6', '2023-04-26 22:06:10', '确认到场6', '未审核', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `student_check_in` VALUES (7, 0, '教师姓名7', '课程名称7', 0, '学生姓名7', '2023-04-26 22:06:10', '确认到场7', '未审核', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `student_check_in` VALUES (8, 0, '教师姓名8', '课程名称8', 0, '学生姓名8', '2023-04-26 22:06:10', '确认到场8', '未审核', 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');

-- ----------------------------
-- Table structure for student_users
-- ----------------------------
DROP TABLE IF EXISTS `student_users`;
CREATE TABLE `student_users`  (
  `student_users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生用户ID',
  `student_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生学号',
  `student_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `student_gender` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生性别',
  `examine_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '已通过' COMMENT '审核状态',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`student_users_id`) USING BTREE,
  UNIQUE INDEX `student_id`(`student_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student_users
-- ----------------------------
INSERT INTO `student_users` VALUES (1, '111111', '张三', '男', '已通过', 0, 2, '2023-04-28 15:03:54', '2023-04-28 15:03:54');
INSERT INTO `student_users` VALUES (2, '444444', '张四', '男', '已通过', 0, 4, '2023-05-08 17:28:28', '2023-05-08 17:28:28');

-- ----------------------------
-- Table structure for teacher_users
-- ----------------------------
DROP TABLE IF EXISTS `teacher_users`;
CREATE TABLE `teacher_users`  (
  `teacher_users_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师用户ID',
  `teachers_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `teacher_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师工号',
  `gender_of_teacher` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师性别',
  `examine_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '已通过' COMMENT '审核状态',
  `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`teacher_users_id`) USING BTREE,
  UNIQUE INDEX `teacher_id`(`teacher_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher_users
-- ----------------------------
INSERT INTO `teacher_users` VALUES (1, '张一', '222222', '男', '已通过', 0, 3, '2023-04-28 15:06:41', '2023-04-28 15:06:41');

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload`  (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) NULL DEFAULT 0 COMMENT '父级ID',
  `dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件上传' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES (1, 'movie.mp4', '/upload/movie.mp4', '', NULL, 0, NULL, 'video');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户账户：用于保存用户登录信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 1, '管理员', '2023-04-07 16:29:25', NULL, 0, 'admin', 'admin', 'bfd59291e825b5f2bbf1eb76569f8fe7', '', 0, '/api/upload/admin_avatar.jpg', '2023-04-28 17:35:13');
INSERT INTO `user` VALUES (2, 1, '学生用户', '2023-04-28 15:03:54', '17660107531', 0, '111111', '张三', '96e79218965eb72c92a549dd5a330112', '165165@qq.com', 0, NULL, '2023-04-28 15:03:54');
INSERT INTO `user` VALUES (3, 1, '教师用户', '2023-04-28 15:06:41', '15853164317', 2, '222222', '张一', 'e3ceb5881a0a1fdaad01296d7554868d', '941451168@qq.com', 2, '', '2023-04-28 15:06:41');
INSERT INTO `user` VALUES (4, 1, '学生用户', '2023-05-08 17:28:28', '13256325478', 0, '123456', '张四', 'e10adc3949ba59abbe56e057f20f883e', '941451169@qq.com', 0, NULL, '2023-05-08 17:28:28');

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) UNSIGNED NOT NULL DEFAULT 100 COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  `register` smallint(1) UNSIGNED NULL DEFAULT 0 COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组：用于用户前端身份和鉴权' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES (1, 100, '管理员', NULL, '', '', 0, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `user_group` VALUES (2, 100, '游客', NULL, '', '', 0, 0, '2023-04-26 22:06:10', '2023-04-26 22:06:10');
INSERT INTO `user_group` VALUES (3, 100, '学生用户', NULL, 'student_users', 'student_users_id', 0, 1, '2023-04-26 22:06:11', '2023-04-26 22:06:11');
INSERT INTO `user_group` VALUES (4, 100, '教师用户', NULL, 'teacher_users', 'teacher_users_id', 0, 1, '2023-04-26 22:06:11', '2023-04-26 22:06:11');

SET FOREIGN_KEY_CHECKS = 1;
