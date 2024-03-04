/*
 Navicat Premium Data Transfer

 Source Server         : aoyu_mysql
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : aoyuresourcebase

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 28/11/2023 20:42:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_soft
-- ----------------------------
DROP TABLE IF EXISTS `t_soft`;
CREATE TABLE `t_soft`  (
  `softId` int NOT NULL AUTO_INCREMENT,
  `softName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `softCategory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `softIntroduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `softDownload` int NULL DEFAULT NULL,
  `softIcon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `softAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `softContents` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`softId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_soft
-- ----------------------------
INSERT INTO `t_soft` VALUES (1, 'Edge浏览器', '浏览器', 'Windows上更快、更安全的浏览器', 43, 'edge.png', 'Edge.exe', 'contents1');
INSERT INTO `t_soft` VALUES (2, 'Chrome', '浏览器', '一款由Google公司开发的网页浏览器', 125, 'chrome.png', 'Chrome.exe', 'contents1');
INSERT INTO `t_soft` VALUES (3, '火狐浏览器', '浏览器', '一款闪电般快、不会出卖您的浏览器', 10, 'firefox.png', 'Firefox.exe', 'contents1');
INSERT INTO `t_soft` VALUES (4, '火绒', '系统防护', '国内少有的自主研发新一代反病毒引擎', 9, 'huorong.png', 'Huorong.exe', 'contents1');
INSERT INTO `t_soft` VALUES (5, 'bandzip', '解压缩', '一个强大的多功能压缩文件管理工具', 1, 'bandzip.png', 'Bandzip.exe', 'contents1');
INSERT INTO `t_soft` VALUES (6, 'QQ', '社交聊天', '一款的多平台即时通信软件', 0, 'qq.png', 'QQ.exe', 'contents2');
INSERT INTO `t_soft` VALUES (7, '微信', '社交聊天', '一款全方位的手机通讯应用', 3, 'wechat.png', 'Wechat.exe', 'contents2');
INSERT INTO `t_soft` VALUES (8, 'TIM', '社交办公', '专注于团队办公协作的跨平台沟通工具', 0, 'tim.png', 'Tim.exe', 'contents2');
INSERT INTO `t_soft` VALUES (9, '腾讯视频', '视频播放', '中国领先的在线视频媒体平台', 1, 'tencent.png', 'Tencent.exe', 'contents3');
INSERT INTO `t_soft` VALUES (10, 'potplayer', '视频播放', '适用于多种格式的强大媒体播放器', 0, 'potplayer.png', 'Potplayer.exe', 'contents3');
INSERT INTO `t_soft` VALUES (11, 'Listen1', '音乐播放', '一款免费好用的手机聚合音乐播放器', 0, 'listen1.png', 'Listen1.exe', 'contents3');
INSERT INTO `t_soft` VALUES (12, 'Rainmeter', '桌面美化', '一款完美的系统美化工具', 2, 'rainmeter.png', 'Rainmeter.exe', 'contents4');
INSERT INTO `t_soft` VALUES (13, 'Lively', '动态壁纸', '动画桌面壁纸，让您的桌面栩栩如生', 0, 'lively.png', 'Lively.exe', 'contents4');
INSERT INTO `t_soft` VALUES (14, 'Nexus Dock', '桌面美化', '一款老牌的dock栏工具软件', 1, 'nexus.png', 'Nexus.exe', 'contents4');
INSERT INTO `t_soft` VALUES (15, 'BitDock', '桌面美化', '一款运行在Windows上的极简工具栏', 3, 'bitdock.png', 'Bitdock.exe', 'contents4');
INSERT INTO `t_soft` VALUES (16, 'Folder Painter', '系统美化', '一款可以更改系统文件夹颜色的软件', 1, 'folder.png', 'Folderpainter.zip', 'contents4');
INSERT INTO `t_soft` VALUES (17, 'StartAllBack', '系统美化', 'Windows1上使用的开始菜单增强工具', 0, 'startallback.png', 'Startallback.exe', 'contents4');
INSERT INTO `t_soft` VALUES (18, 'SpaceSniffer', '系统工具', '让您了解文件夹和文件在磁盘上空间分布', 5, 'spacesniffer.png', 'Spacesniffer.zip', 'contents5');
INSERT INTO `t_soft` VALUES (19, 'ARCHPR', '压缩包破解', '一种密码恢复工具，用于解密R压缩包的密码', 1, 'archpr.png', 'Archpr.msi', 'contents5');
INSERT INTO `t_soft` VALUES (20, 'Rufus', 'USB启动盘', '轻松创建USB启动盘重装系统', 0, 'rufus.png', 'Rufus.exe', 'contents5');
INSERT INTO `t_soft` VALUES (21, 'TrafficMonitor', '系统监控', '一个监视系统硬件信息的工具', 0, 'trafficmonitor.png', 'TrafficMonitor.zip', 'contents5');
INSERT INTO `t_soft` VALUES (22, 'Mem Reduct', '内存清理', '轻量级实时内存管理应用程序', 0, 'memreduct.png', 'Memreduct.exe', 'contents5');
INSERT INTO `t_soft` VALUES (23, 'Geek Pro', '应用卸载', '卸载功能强大，且又快又干净', 1, 'geek.png', 'Geek.exe', 'contents5');
INSERT INTO `t_soft` VALUES (24, 'DiskGenius', '磁盘管理', '一款专业级数据恢复和磁盘管理软件', 0, 'diskgenius.png', 'Diskgenius.exe', 'contents5');
INSERT INTO `t_soft` VALUES (25, 'Groupy', '系统工具', '将多个应用组织到桌面上的分组选项卡中', 0, 'groupy.png', 'Groupy.exe', 'contents5');
INSERT INTO `t_soft` VALUES (26, 'AutoHotKey', '键盘映射', '定义鼠标和键盘的热键、重新映射按键', 12, 'autohotkey.png', 'Autohotkey.exe', 'contents5');
INSERT INTO `t_soft` VALUES (27, 'Lriun Webcam', '系统工具', '将手机的摄像头用作 PC中的无线摄像头', 0, 'lriun.png', 'Lrinwebcam.exe', 'contents5');
INSERT INTO `t_soft` VALUES (28, 'IntelliJ IDEA', '开发工具', 'java编程语言的集成开发环境', 16, 'idea.png', 'Idea-2022.zip', 'contents6');
INSERT INTO `t_soft` VALUES (29, 'Pycharm', '开发工具', 'Python语言高效开发集成工具', 6, 'pycharm.png', 'Pycharm-2022.zip', 'contents6');
INSERT INTO `t_soft` VALUES (30, 'Clion', '开发工具', '一款专为开发C及C++所设计的跨平台IDE', 5, 'clion.png', 'Clion-2022.zip', 'contents6');
INSERT INTO `t_soft` VALUES (31, 'WebStorm', '开发工具', '一款被誉为Web前端开发神器的开发工具', 0, 'webstorm.png', 'Webstorm-2022.zip', 'contents6');
INSERT INTO `t_soft` VALUES (32, 'PhpStorm', '开发工具', '一款商业的PHP 集成开发工具', 0, 'phpstorm.png', 'Phpstorm-2022.zip', 'contents6');
INSERT INTO `t_soft` VALUES (33, 'VS Code', '代码编辑', '由微软开发的跨平台免费源代码编辑器', 1, 'vscode.png', 'Vscode.exe', 'contents6');
INSERT INTO `t_soft` VALUES (34, 'HBuilder X', '开发工具', 'DCloud推出的支持HTML5的Web开发IDE', 0, 'hbuilder.png', 'HbuilderX.zip', 'contents6');
INSERT INTO `t_soft` VALUES (35, 'Sublime Text', '文本编辑', '文本编辑器，同时也是先进的代码编辑器', 3, 'sublime.png', 'Sublime.exe', 'contents6');
INSERT INTO `t_soft` VALUES (36, 'Visual Studio', '开发工具', '微软开发的一个基本完整的开发工具集', 0, 'vsstudio.png', 'Visualstudio.exe', 'contents6');
INSERT INTO `t_soft` VALUES (37, 'exe4j', '打包工具', '可以创建没有安装程序的Java启动器', 0, 'exe4j.png', 'Exe4j.exe', 'contents6');
INSERT INTO `t_soft` VALUES (38, 'JDK', '开发环境', '一套用于开发java应用程序的开发包', 2, 'jdk.png', 'jdk-11.exe', 'contents6');
INSERT INTO `t_soft` VALUES (39, 'Python', '开发环境', 'Python 源代码和安装程序', 1, 'python.png', 'Python-3.10.5.exe', 'contents6');
INSERT INTO `t_soft` VALUES (40, 'MySQL', '数据库', 'MySQL是一个完全托管的数据库服务', 0, 'mysql.png', 'Mysql-8.0.30.0.msi', 'contents6');
INSERT INTO `t_soft` VALUES (41, 'Navicat', '数据库工具', '强大的直观数据库管理和设计工具 ', 3, 'navicat.png', 'Navicat16.zip', 'contents6');
INSERT INTO `t_soft` VALUES (42, 'Everything', '文件搜索', '基于文件、文件夹名称的快速搜索工具', 0, 'everything.png', 'Everything.exe', 'contents7');
INSERT INTO `t_soft` VALUES (43, 'Quicker', '实用工具', 'Windows效率神器，快速触发+自动化', 0, 'quicker.png', 'Quicker.msi', 'contents7');
INSERT INTO `t_soft` VALUES (44, 'UTools', '实用工具', '自由组合插件应用打造专属你的工具集', 4, 'utools.png', 'UTools.exe', 'contents7');
INSERT INTO `t_soft` VALUES (45, 'Snipaste', '截图工具', '一个简单但功能强大的截图工具', 0, 'snipaste.png', 'Snipaste.zip', 'contents7');
INSERT INTO `t_soft` VALUES (46, 'ScreenToGif', 'GIF录制', '带有集成编辑器的屏幕记录器', 0, 'screentogif.png', 'ScreenToGif.msi', 'contents7');
INSERT INTO `t_soft` VALUES (47, 'Listary6 Pro', '文件搜索', '真正令人惊奇和完善的文件搜索程序', 3, 'listary.png', 'Listary6Pro.zip', 'contents7');
INSERT INTO `t_soft` VALUES (48, 'IDM', '浏览器插件', 'IDM 下载文件的速度之快会让您惊叹不已', 20, 'idm.png', 'IDM.zip', 'contents8');
INSERT INTO `t_soft` VALUES (49, 'AdGuard', '浏览器插件', '安全无广告地上网冲浪，让网页更干净', 0, 'adguard.png', 'AdGuard.zip', 'contents8');
INSERT INTO `t_soft` VALUES (50, 'Google翻译', '浏览器插件', '超级好用的谷歌浏览器页面翻译插件', 0, 'google.png', 'GoogleTranslater.zip', 'contents8');
INSERT INTO `t_soft` VALUES (51, 'Tampermonkey', '浏览器插件', '免费的浏览器扩展和流行的脚本管理器', 0, 'tampermonkey.png', 'Tampermonkey.zip', 'contents8');
INSERT INTO `t_soft` VALUES (52, '百度网盘', '云盘存储', '一款省心、好用的超级云存储产品', 0, 'baidudisk.png', 'BaiduNetdisk.exe', 'contents9');
INSERT INTO `t_soft` VALUES (53, '阿里云盘', '云盘存储', '速度快、够安全、易于分享的个人网盘', 0, 'alidisk.png', 'ALiDrive.exe', 'contents9');
INSERT INTO `t_soft` VALUES (54, '夸克网盘', '云盘存储', '夸克推出的一款云服务产品', 0, 'kuakedisk.png', 'QuarkCloudDrive.exe', 'contents9');
INSERT INTO `t_soft` VALUES (55, 'Google云盘', '云盘存储', '谷歌公司推出的一项在线云存储服务', 0, 'googledisk.png', 'GoogleDrive.exe', 'contents9');
INSERT INTO `t_soft` VALUES (56, '城通网盘', '云盘存储', '一款免费网盘，即免费网络存储空间服务', 0, 'chentongdisk.png', 'Chentongdisk.exe', 'contents9');
INSERT INTO `t_soft` VALUES (57, 'Typora', '笔记工具', '简洁美观的Markdown 编辑器和阅读器', 0, 'typora.png', 'Typora.zip', 'contents10');
INSERT INTO `t_soft` VALUES (58, 'Xmind', '思维导图', '一款全功能的思维导图和头脑风暴软件', 0, 'xmind.png', 'Xmind2021.zip', 'contents10');
INSERT INTO `t_soft` VALUES (59, 'Obsidian', '笔记工具', '一个功能强大且可扩展的知识库', 0, 'obsidian.png', 'Obsidian.exe', 'contents10');
INSERT INTO `t_soft` VALUES (60, '有道云笔记', '云笔记', '网易旗下专注办公提效的笔记软件', 0, 'youdaoyun.png', 'YouDaoNote.exe', 'contents10');
INSERT INTO `t_soft` VALUES (61, 'Draw.io', '绘图软件', '免费、高质量的绘图软件', 0, 'draw.io.png', 'Draw.io.exe', 'contents10');
INSERT INTO `t_soft` VALUES (62, 'Clash for PC', '科学上网', '一款免费稳定的科学上网工具', 0, 'clash.png', 'Clash.for.Windows.exe', 'contents11');
INSERT INTO `t_soft` VALUES (63, 'V2rayN', '科学上网', '网络代理工具，科学上网', 0, 'v2rayn.png', 'v2rayN.zip', 'contents11');
INSERT INTO `t_soft` VALUES (65, 'Telegram', '国外通信', '国外消息传递软件', 1, 'telegram.png', 'Telegram.exe', 'contents11');
INSERT INTO `t_soft` VALUES (66, '迅雷', '磁力下载', '迅雷网络技术有限公司开发的一款下载软件', 7, 'xunlei.png', 'XunLei.exe', 'contents12');
INSERT INTO `t_soft` VALUES (67, 'qBittorrent', '磁力下载', '一个新的轻量级BitTorrent客户端', 0, 'qbittorrent.png', 'QBittorrent.exe', 'contents12');
INSERT INTO `t_soft` VALUES (68, 'Motrix', '全能下载', '一款全能的快速下载工具', 2, 'motrix.png', 'Motrix.exe', 'contents12');
INSERT INTO `t_soft` VALUES (70, 'PanDownload', '网盘下载', '老牌的不限速下载百度网盘专用工具', 0, 'pandownload.png', 'PanDownload.zip', 'contents12');
INSERT INTO `t_soft` VALUES (71, 'Chrome安卓版', '手机浏览器', '安卓平台的谷歌浏览器', 33, 'phonechrome.png', 'Chrome.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (72, 'Edge', '手机浏览器', '安卓平台的Edge浏览器', 3, 'phoneedge.png', 'Edge.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (74, 'Foxo VPN', '安卓科学上网', '免费快速无限和安全简单的VPN工具', 2, 'foxovpn.png', 'FoxoVPN.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (75, 'Clash', '安卓科学上网', '安卓的Clash，让手机快速稳定科学上网', 0, 'clash.png', 'Clash.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (76, 'XMind思维导图', '思维导图', '安卓的xmind，可以在手机上绘制脑图', 14, 'phonexmind.png', 'Xmind.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (77, 'Iriun Webcam', '电脑摄像头', '和PC端的lriun将手机摄像头用作PC摄像头', 0, 'lriun.png', 'LriunWebcam.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (78, '微软翻译', '语言翻译', '轻松将文本、语音和图片翻译成70种语言', 0, 'weiruantranslate.png', 'MicrsoftTranslator.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (79, 'TeraBox', '手机网盘', '国外版的百度网盘，注册获得1T空间', 0, 'tearbox.png', 'TearBox.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (80, 'PikPack', '手机网盘', '极速、私密、无限制的国外网盘', 0, 'pikpack.png', 'PikPak.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (81, 'Twitter', '国外社交', 'Twitter是你首选的社交网络应用', 0, 'twitter.png', 'Twitter.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (82, 'Telegram', '手机通信', '一个专注于速度和安全通信的应用程序', 1, 'phonetelegram.png', 'Telegram.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (83, 'YouTube', '视频播放', '国外视频平台，随时随地观看喜爱的视频', 0, 'youtube.png', 'Youtube.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (84, 'Word', '文档编辑', '安卓平台的Word，移动的文档编辑器', 0, 'word.png', 'Word.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (85, 'Steam', '游戏平台', 'Steam手机应用，随时随地使用Steam', 0, 'steam.png', 'Steam.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (86, 'Netflix', '影视平台', '提供业界领先的电影和电视节目订阅服务', 1, 'netflix.png', 'Netfilx.APK.zip', 'contents13');
INSERT INTO `t_soft` VALUES (87, '4K世界', '电影资源', '专注于分享全球4K电影资源', 0, '4ksj.png', 'www.4ksj.com', 'contents14');
INSERT INTO `t_soft` VALUES (88, 'YaNetflix', '电影网站', '每天更新热门Netf下载资源、热门电影', 0, 'yanetflix.png', 'yanetflix.com', 'contents14');
INSERT INTO `t_soft` VALUES (89, '翻墙机场', '节点网站', '稳定、便宜的科学上网节点网站', 0, 'fanqiang.png', '翻墙机场.com', 'contents14');
INSERT INTO `t_soft` VALUES (90, '致美化', '桌面美化资源', '丰富多彩的主题、壁纸等酷炫的美化素材', 0, 'zimeihua.png', 'zhutix.com', 'contents14');
INSERT INTO `t_soft` VALUES (91, '彼图岸网', '桌面壁纸', '资源丰富、高质量壁纸网站', 0, 'bituanwang.png', 'pic.netbian.com', 'contents14');
INSERT INTO `t_soft` VALUES (92, '极简壁纸', '桌面壁纸', '海量电脑桌面壁纸美图_4K超高清网站', 0, 'jijianbizhi.png', 'bz.zzzmh.cn', 'contents14');
INSERT INTO `t_soft` VALUES (93, 'Pixso', 'UI设计', '新一代设计协作工具', 0, 'pixso.png', 'pixso.cn', 'contents14');
INSERT INTO `t_soft` VALUES (94, '敬请期待', ' ~~~~~~', '~~~~~~', 0, 'fanqiang.png', '0', 'contents15');
INSERT INTO `t_soft` VALUES (95, '敬请期待', ' ~~~~~~', ' ~~~~~~', 0, 'fanqiang.png', '0', 'contents15');
INSERT INTO `t_soft` VALUES (96, '敬请期待', ' ~~~~~~', ' ~~~~~~', 0, 'fanqiang.png', '0', 'contents15');
INSERT INTO `t_soft` VALUES (97, '敬请期待', ' ~~~~~~', ' ~~~~~~', 0, 'fanqiang.png', '0', 'contents15');

-- ----------------------------
-- Table structure for t_soft_info
-- ----------------------------
DROP TABLE IF EXISTS `t_soft_info`;
CREATE TABLE `t_soft_info`  (
  `softName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `softCrack` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `softSystem` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `softVersion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `softSize` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `softImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `softOverview` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `softComments1` int NOT NULL,
  `softComments2` int NOT NULL,
  `softDownload` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_soft_info
-- ----------------------------
INSERT INTO `t_soft_info` VALUES ('Edge浏览器', '无需破解', 'windows', '101.0.12', '1.75MB', 'edge.png', '基于Chromium开源的Edge浏览器于2020年1月16日正式发布，是微软放弃自研的浏览器引擎，通过适配加入第三方内核的版本。Microsoft Edge在所有设备上都可用，并且会自动同步你的密码，收藏夹和设置。Microsoft Edge和Bing为你提供了在线保护隐私的工具。借助收藏夹等全新功能以及网络上最全面的内置学习和可访问性工具集，新的Microsoft Edge旨在帮助你完成工作。', 3, 1, 'Edge.exe');
INSERT INTO `t_soft_info` VALUES ('Chrome', '无需破解', 'windows', '107.0.53', '84.70MB', 'chrome.png', 'Google公司开发的网页浏览器。该浏览器是基于其他开放原始码软件所撰写，包括WebKit和Mozilla，目标是提升稳定性、速度和安全性，并创造出简单且有效率的使用者界面。软件的名称是来自于又称作「Chrome」的网路浏览器图形使用者界面（GUI）。', 2, 2, 'Chrome.exe');
INSERT INTO `t_soft_info` VALUES ('火狐浏览器', '无需破解', 'windows', '107.0.83', '401KB', 'firefox.png', 'Firefox 网页浏览器进行了大幅度改版，速度更快，易于使用，可自定义且可设置私密模式。Firefox 浏览器默认启用增强型跟踪保护功能，可阻止成千上万恼人的广告跟踪器和恶意软件，提供更安全、更快速的上网体验。Firefox 也是唯一由非营利性组织支持的主要浏览器。该组织旨在推动互联网开放与透明化，让人们自行掌控在线生活。', 0, 0, 'Firefox.exe');
INSERT INTO `t_soft_info` VALUES ('火绒', '无需破解', 'windows', '5.0.68.3', '20.90MB', 'huorong.png', '一款安全防御软件。与传统的杀毒软件不同，具有完善防御规则以及智能的行为分析技术。不需要庞大的病毒库，同时也可以很好的抵御恶意软件攻击。\r\n\r\n软件名称火绒互联网安全软件软件版本5.0.60.1更新时间2021-5-6 (568天前)下载大小18.25MB软件评分收费机制免费软件介绍一款安全防御软件。与传统的杀毒软件不同，具有完善防御规则以及智能的行为分析技术。不需要庞大的病毒库，同时也可以很好的抵御恶意软件攻击', 2, 1, 'Huorong.exe');
INSERT INTO `t_soft_info` VALUES ('bandzip', '无需破解', 'windows', '7.25.0.0', '6.43MB', 'bandzip.png', '一款免费的压缩解压软件。支持 ZIP, 7Z, RAR, ALZ, EGG, TAR, BH, LZH, GZ, BZ2, ISO, CAB, WIM, XZ, ARJ和Z后缀的压缩文档。并且可以制作exe格式自解压文件、支持unicode字符和批量分割压缩文件。\r\n\r\n软件名称BandiZip软件版本7.27.0.1更新时间2022-7-14 (134天前)下载大小10.40MB软件评分收费机制付费试用时长部分功能收费软件介绍一款免费的压缩解压软件。支持 ZIP, 7Z, RAR, ALZ, EGG, TAR, BH, LZH, GZ, BZ2, ISO, CAB, WIM, XZ, ARJ和Z后缀的压缩文档。并且可以制作exe格式自', 0, 0, 'Bandzip.exe');
INSERT INTO `t_soft_info` VALUES ('QQ', '无需破解', 'windows', '9.6.1.28', '189.42MB', 'qq.png', '腾讯推出的免费即时聊天软件。支持在线聊天、视频电话、点对点断点续传文件、共享文件、网络硬盘、自定义面板、QQ邮箱等多种功能。免费的通讯平台，给您带来更多沟通乐趣。', 4, 3, 'QQ.exe');
INSERT INTO `t_soft_info` VALUES ('微信', '无需破解', 'windows', '3.7.0.1', '157.84MB', 'wechat.png', '微信是腾讯旗下的一款跨平台的通讯工具。支持单人、多人参与。通过手机网络发送语音、图片、视频和文字。', 2, 2, 'Wechat.exe');
INSERT INTO `t_soft_info` VALUES ('TIM', '无需破解', 'windows', '3.4.0.22', '80.19MB', 'tim.png', '熟悉的QQ习惯：简洁的操作界面，轻量易用；QQ号登绿，好友、消息完全同步。高效的多人在线文档：支特多人在线编辑Word、Excl文档；支特Wb网页查看，还能导出文档。免费的音视频通话：免费的音视频通话；支持多人通话，及会议预定。', 0, 0, 'Tim.exe');
INSERT INTO `t_soft_info` VALUES ('腾讯视频', '无需破解', 'windows', '11.57.41', '78.39MB', 'tencent.png', '腾讯视频是中国领先的在线视频媒体平台，拥有丰富的优质流行内容和专业的媒体运营能力，是聚合热播影视、综艺娱乐、体育赛事、新闻资讯等为一体的综合视频内容平台，并通过PC端、移动端及客厅产品等多种形态为用户提供高清流畅的视频娱乐体验，以满足用户不同的体验需求。', 3, 1, 'Tencent.exe');
INSERT INTO `t_soft_info` VALUES ('potplayer', '无需破解', 'windows', '1.7.2148', '32.64MB', 'potplayer.png', '与KmPlayer齐名的一款播放器。它基本上继承了KMPlayer方便的滤镜以及外挂式的管理系统，同时简化了内部的解码器体系，现在基本依靠Bass和FFmpeg系滤镜解决播放问题，同时Potplayeri还完成了KMP无法实现的DXVA硬件解码以及多线程解码功能，使您能更流畅的观看高清影片。', 0, 0, 'Potplayer.exe');
INSERT INTO `t_soft_info` VALUES ('Listen1', '无需破解', 'windows', '2.26.2', '171MB', 'listen1.png', 'Listen1是一款特别好用的音乐软件，支持全平台。因为现在版权的重要性，很多音乐播放器都采取了版权垄断机制，很多时候我们都需要通过多个不同的播放器来找到自己想要的音乐资源，该软件最大的特点就在于它整合了网易云音乐、qq音乐和虾米音乐三大音乐播放器的资源。用户只需要通过这一款软件就可以实现跨平台的资源共享，并且用户还可以点击控制窗口上的链接查看歌曲原始网址，这就意味着用户能够通过更换不同的音乐源实现高质量音乐的享受', 0, 0, 'Listen1.exe');
INSERT INTO `t_soft_info` VALUES ('Rainmeter', '无需破解', 'windows', '4.5.16', '2.39MB', 'rainmeter.png', 'Rainmeter又名雨滴桌面秀，它是一款功能十分强大的个性化桌面定制工具，其原本是一个系统状态监视软件，但现在它的功能已经得到了极大的扩展，rss feeder、邮件监视器、天气预报、时钟、网络状态以及内存硬盘CPU监测等常用功能都能够实现，而低资源占用和简易的设计方式为它赢得了大批用户。该软件还可以美化你的桌面，用户完全是按照自己的意愿去定制一款您想要皮肤，这样就可以让您的桌面与众不同。同时软件中的皮肤大多都走抽象、简洁的设计路线，非常适合作为一款桌面美化软件，并允许您在桌面上显示可自定义的皮肤，从硬件使用表到功能齐全的音频可视化器，非常的实用，有需要的朋友欢迎前来下载体验。', 1, 3, 'Rainmeter.exe');
INSERT INTO `t_soft_info` VALUES ('Lively', '无需破解', 'windows', '2.0.50', '233MB', 'lively.png', 'Lively Wallpaper，这是一款非常好用的动态壁纸软件，不仅仅可以为用户提供好看且炫酷的静态壁纸，还支持动态壁纸的设定。如若你有喜欢的图片，支持将自己的高清视频、GIF 动图、Unity 程序或 HTML 动画网页等素材设置为 Windows 桌面，效果相当的炫酷，你想要什么样的就给你设置成什么样的，非常的方便简单。除此之外，Lively Wallpaper还是一款开源免费的window动态桌面、视频壁纸、桌面美化软件，它可以让你的pc桌面随时随地的“骚动起来”，或者清新扑面而来，多种炫酷动画效果带来视觉冲击，每天都能让你拥有好的心情，有感兴趣的朋友欢迎下载体验。', 0, 0, 'Lively.exe');
INSERT INTO `t_soft_info` VALUES ('Nexus Dock', '无需破解', 'windows', '22.7.00', '37.7MB', 'nexus.png', 'Nexus Dock,是一款模仿MacOSXDock工具。可以模以Leopard式样与特效，类以Y\'zDock的工具，能够伍曳任何程序图标到Dock上，能调整图标大小\n16×16直到最大的128×128。也能够设置透明度，D0ck名称、鼠标点击特效等。', 1, 1, 'Nexus.exe');
INSERT INTO `t_soft_info` VALUES ('BitDock', '无需破解', 'windows', '2.0.3.09', '83.5MB', 'bitdock.png', 'BitDock是一款运行在Windows系统中的停靠栏工具，这种停靠栏很有个性，而且很适用。它让你在使用Windows更加的动感，而目还支持使用拖曳的方式\n来自定义要启动的程序，或是资料夹，内置了多款实用工具，让你白己轻松打造一个动感味十足，界面漂亮，占用极少资源的个人专属快捷工具栏。', 1, 2, 'Bitdock.exe');
INSERT INTO `t_soft_info` VALUES ('Folder Painter', '无需破解', 'windows', '1.3.0.0', '5.26MB', 'folder.png', 'Folder Painter是一款可以变换文件夹颜色的小软件。Windows系统默认的文件夹颜色是黄色的，时间久了难免会视觉疲劳。如果你打算用不同的颜色分类\n文件夹，比如重要的文档放在红色文件夹里，休闲娱乐的放在绿色文件夹等等。Folder Painter©r设定文件夹顏色的操作很简单，在文件夹图标上点击最标右\n键选择自己喜欢的颜色就可以了，若是要恢复到原来的默认颜色，可以选择“Restore original color\'”。Folder Painter还支持自定义文件夹颜色.', 0, 0, 'Folderpainter.zip');
INSERT INTO `t_soft_info` VALUES ('StartAllBack', '已破解', 'windows', '3.5.4', '1.68MB', 'startallback.png', 'StartAllBack Windows11开始菜单增强工具是StartlsBack++公司的同类产品\nStartAllBack主要是适配Windows11而开发的，StartAllBack Windows11开始菜单增强工具\n主要为Vindows11恢复经典样式的Vindows7/10主题风格开始菜单，主要功能包括：恢复和改进开始菜\n单样式、个性化任务栏、资源管理器等功能。', 0, 0, 'Startallback.exe');
INSERT INTO `t_soft_info` VALUES ('SpaceSniffer', '无需破解', 'windows', '1.3.0.2', '1.58MB', 'spacesniffer.png', 'SpaceSniffer官方版是一款高效便捷的磁盘空间分析工具，SpaceSniffer官方版可以让您硬盘中文件和文件夹的分布情况的应用程序。SpaceSniffer最新版还可以很直观的以区块，数字和颜色来显示硬盘上文件夹，文件大小。软件还能用筛选器过滤出要找的文件', 0, 0, 'Spacesniffer.zip');
INSERT INTO `t_soft_info` VALUES ('ARCHPR', '无需破解', 'windows', '4.54.0', '22.8MB', 'archpr.png', 'ARCHPR是一个强大的压缩包密码破解工具，具有多种密码恢复方式，支持暴力破解和字典破解，ARCHPR破解版界面简洁，使用方便。支持所有版本的 ZIP/PKZip/WinZip、RAR/winrar 以及 ARJ/WinARJ 和 ACE/WinACE (1.x)。', 0, 0, 'Archpr.msi');
INSERT INTO `t_soft_info` VALUES ('Rufus', '无需破解', 'windows', '3.2.00', '1.33MB', 'rufus.png', '完全免费的自启动U盘系统制作工具，下载操作系统的iso镜像文件后把U盘连接电脑，运行这个软件，在“dvc”的下拉菜单中选择u盘所在的盘符。在界面上\n的create a bootable disk using:后面选择\"iso image”,在点击后面的图标选择iso镜像文件。点击\"start”\",软件就会对U盘进行格式化、制作可启动u盘的操\n作。不过在这之前你需要把重要资料备份到电脑中，毕竟格式化后什么都找不回来了', 0, 0, 'Rufus.exe');
INSERT INTO `t_soft_info` VALUES ('TrafficMonitor', '无需破解', 'windows', '1.8.4.0', '1.10MB', 'trafficmonitor.png', 'Traffic Monitor是一款用于Windows平台的网速监控悬浮窗软件，可以显示当前网速、CPU及内存利用率，支持嵌入到任务栏显示，支持更换皮肤、历史流量统计等功能。', 3, 0, 'TrafficMonitor.zip');
INSERT INTO `t_soft_info` VALUES ('Mem Reduct', '无需破解', 'windows', '3.4.0.0', '309KB', 'memreduct.png', '市面上大部分内存整理软件都是将物理内存强制转移到虚拟内存，以达到高效的“内存清理”的效果，可大家都知道，转移到虚拟内存就是转移到了硬盘上，不仅达不到加速的效果（硬盘的速度肯定比内存慢吧），还加重了硬盘的负担，拖慢系统速度，效果适得其反。\r\n\r\n　　本程序采用微软的内存整理内核，释放应用程序不能及时释放的资源，与那些第三方软件内存管理软件不同,本程序不会强迫系统全部释放资源，而是仅仅释放必要的资源，稳定、正确、真正地清理内存，提升系统性能。', 0, 0, 'Memreduct.exe');
INSERT INTO `t_soft_info` VALUES ('Geek Pro', '已破解', 'windows', '3.5.10.56', '4.52MB', 'geek.png', 'Geek Uninstallers是一款高效、快速、小巧、免费的软件卸载与清理工具，旨在帮助用户删除系统上安装的程序。不同于其他的卸载程序，Geek Uninstaller执行深入扫描进程，并清除软件卸载后留下的垃圾', 0, 0, 'Geek.exe');
INSERT INTO `t_soft_info` VALUES ('DiskGenius', '无需破解', 'windows', '5.4.6.0', '80.6MB', 'diskgenius.png', '非常好用的磁盘分区及数据恢复软件。具有基本分区建立、删除、隐藏、指定详细分区参数、快格、盘符分配、丢失分区恢复、坏道检测修复等实用功能。\n支持各种格式的磁盘分区，支持U盘、移动硬盘、存储卡、VM虚拟机等存储介质。', 0, 0, 'Diskgenius.exe');
INSERT INTO `t_soft_info` VALUES ('Groupy', '已破解', 'windows', '9.5.3.0', '6.63MB', 'groupy.png', 'Groupy是著名的Stardock公司开发的一款强大的Windows软件，它可以帮助您在Windows桌面上组织多个应用程序到分组选项卡中！只需要把一个窗口\n拖到另外一个已经打开的窗口上，窗口就会自动整合到一起，每个窗口都会自动转换为标签页，只需要在标签页点击不同的标签，即可切换程序。', 0, 0, 'Groupy.exe');
INSERT INTO `t_soft_info` VALUES ('AutoHotKey', '无需破解', 'windows', '1.1.34.3', '16.1MB', 'autohotkey.png', 'AutoHotkey中文版是一款界面简洁功能强大的热键脚本语言。AutoHotkey中文版帮助用户精确记\n录键盘、鼠标甚至游戏摇杆的移动以及点击动作。软件操作简单，用户可以使用任何按键或鼠标\n按钮做为辅助键，显著提升工作效率。', 0, 0, 'Autohotkey.exe');
INSERT INTO `t_soft_info` VALUES ('Lriun Webcam', '无需破解', 'windows', '2.7.5.0', '3.96MB', 'lriun.png', 'Iriun Webcam这个工具可以将你的安卓手机作为一个PC或者Mac的网络摄像头使用。如果你需要一个摄像头来使用一些程序，比如\nZoom或者Skype,这个程序就能帮助你做到，并且只需要一部手机。\n使用Iriun Webcam是非常简单的，只需几个步聚。首先，在手机和你计划使用的PC或者Mac上都下载这个程序。然后，确保两台设备\n是连接到同一个F网络当中的。\n两台设备都连接到同一个网络当中后你可以连接它们。在你想要使用的任何视频呼叫程序当中，将riun7 ebcam选择为默认的摄像\n头。然后，你的手机马上就会开始广播到你的电脑上。这个程序最多可以兼容到4K,所以视频的画面质量应该是非常优秀的。\nriun Webcam使用起来再简单不过了，如果你没有网络摄像头，但是需要一个，这个程序是非常有帮助的。连接了设备之后，你可以\n随时将手机作为网络摄像头使用。', 0, 0, 'Lrinwebcam.exe');
INSERT INTO `t_soft_info` VALUES ('IntelliJ IDEA', '已破解', 'windows', '2022.2.2', '703MB', 'idea.png', 'IntelliJ在业界被公认为最好的java开发工具之一，尤其在智能代码助手、代码自动提示、重构、J2EE支持、Ant、JUnit、CVS整合、代码审查、创新的GUI\n设计等方面的功能可以说是超常的。DEA是JetBrains公司的产品，这家公司总部位于捷克共和国的首都布拉格，开发人员是以严谨著称的东欧程序员为主。', 0, 0, 'Idea-2022.zip');
INSERT INTO `t_soft_info` VALUES ('Pycharm', '已破解', 'windows', '2022.1.3', '440MB', 'pycharm.png', 'PyCharm是一种Python IDE,带有一整套可以帮助用户在使用Pythoni语言开发时提高其效率的工具，比如调试、语法高亮、Project管理、代码跳转、智能提\n示、自动完成、单元测试、版本控制。此外，该刻DE提供了一些高级功能，以用于支持Django框架下的专业Wb开发.', 0, 0, 'Pycharm-2022.zip');
INSERT INTO `t_soft_info` VALUES ('Clion', '已破解', 'windows', '2022.2.4', '695MB', 'clion.png', '它是基于IntelliJ平台，包含了许多智功能，能够提高开发者的生产力。这种强大的IDE利用JetBrains在代码质量、高效编码导航、代码智能填充、高速编\n码分析、迅速修复建议、广泛的代码生成建议、优秀的代码重构、并支持CMk系统等方面的优点，来帮助开发人员在Vindows.上高效快捷地开发C/C++。', 1, 0, 'Clion-2022.zip');
INSERT INTO `t_soft_info` VALUES ('WebStorm', '已破解', 'windows', '2022.2.3', '388MB', 'webstorm.png', 'WebStorm是一款来自jetbrains.公司出品的JS开发工具。该软件被称为Web前端开发神器”、“最强大的HTL5编辑器”，通过最少的配置和周到的IDE集成，\n使用VebStorm可以更轻松地完成这些任务，非常适合程序员使用。', 0, 0, 'Webstorm-2022.zip');
INSERT INTO `t_soft_info` VALUES ('PhpStorm', '已破解', 'windows', '2022.2.3', '419MB', 'phpstorm.png', '集智能HTML/CSS/JavaScript/PHP编辑、代码质量分析、版本控制集成(SVN、GIT)、调试和测试等多种功能于一体，支持所有PHP语言，深厚世界各地\nPHP程序开发人员的喜欢，被广泛的用来开发和部署网站。软件功强大，包括补全代码、重构PHP、检测重复编码、生成phpdoc注释、本地历史记录等', 1, 1, 'Phpstorm-2022.zip');
INSERT INTO `t_soft_info` VALUES ('VS Code', '无需破解', 'windows', '1.67.2.0', '75.8MB', 'vscode.png', 'Visual Studio Code(简称VS Code)是一款由微软开发且跨平台的免费源代码编辑器7。该软件支持语法高亮、代码白动补全（又称\nIntelliSense(英语：IntelliSense))、代码重构功能，并且内置了命令行工具和Git版本控制系统8。用户可以更改主题和键盘快捷方式实现\n个性化设置，也可以通过内置的扩展程序商店安装扩展以拓展软件功能。', 0, 0, 'Vscode.exe');
INSERT INTO `t_soft_info` VALUES ('HBuilder X', '无需破解', 'windows', '1.0.0.0', '32.1MB', 'hbuilder.png', 'HBuilderX是DCloud(数字天堂)推出的一款支持HTML5的Web开发DE。\nHBuilder的编写用到了Java、C、Web和Ruby。HBuilder本身主体是由Java编写\n它基于Eclipse,所以顶其自然地兼容了Eclipse的插件。快，是HBuilder的最大优势\n通过完整的语法提示和代码输入法、代码块等，大幅提升HTML、js、css的开发效率。', 0, 0, 'HbuilderX.zip');
INSERT INTO `t_soft_info` VALUES ('Sublime Text', '无需破解', 'windows', '4.1.4.3', '18.4MB', 'sublime.png', 'Sublime Text是一个代码编辑器.也是HTML和散文先进的文本编辑器。可建立多标签、自动保存、多插件支特等。漂亮的用户界面和非丹的功能，例如迷你\n地图，多选择，Pytho的插件，代码段等等。完全可自定义键绑定，菜单和工具栏。', 1, 1, 'Sublime.exe');
INSERT INTO `t_soft_info` VALUES ('Visual Studio', '无需破解', 'windows', '17.3.32', '2.02MB', 'vsstudio.png', '使用Visual Studio开发适用于Android、.iOS、Vindows、Wb和云的应用。快速编码、轻松调试和诊断、时常测试，并且可以放心地进行发布。还\n可通过构建白己的扩展，以便扩展和白定义Visual Studio。', 0, 0, 'Visualstudio.exe');
INSERT INTO `t_soft_info` VALUES ('exe4j', '无需破解', 'windows', '8.0.1', '57.0MB', 'exe4j.png', 'exe4j是一个帮助你集成Java应用程序到Vindows:操作环境的java可执行文件生成工具，无论这些应用是用于服务器，还是\n形用户界面(GU川)或命令行的应用程序。如果你想在任务管理器中及Vindows XP分组的用户友好任务栏里以你的进程名取代\nava.exe的出现，那么exe4j可以完成这个工作。exe4帮助你以一种安全的方式启动你的java应用程序，来显示本地启动画面，\n检测及发布合适的JRE和JDK,以及进行启动时所发生的错误处理等，以至于更多。', 1, 1, 'Exe4j.exe');
INSERT INTO `t_soft_info` VALUES ('JDK', '无需破解', 'windows', '11.0.16', '140MB', 'jdk.png', 'JDK全称Java SE Development kit(JDK),即java标准版开发包，是Dracle提供的一套用于开发java应用程序的开发包，它提供编译，运\n行java程序所需要的各种工具和资源，包括java编译器，java运行时环境，以及常用的java类库等。<br>jdk11是Java大版本周期变化后的第一个长期支持版本，非常值得关注,最新发布\n的Java11将带来ZGC、Http Client等重要特性。', 0, 0, 'jdk-11.exe');
INSERT INTO `t_soft_info` VALUES ('Python', '无需破解', 'windows', '3.10.5', '27.3MB', 'python.png', '种面向对象、直译式计算机程序设计语言，也是一种功能强大而完善的通用型语言，已经具有十多年的发展历史，成熟且稳定。这种语言具有非常简捷而\n清晰的语法特点，适合完成洛种高层任务，几乎可以在所有的操作系统中运行。目前，基于这种语言的相关技术正在飞速的发展，用户数量尧剧扩大，相关\n的资源非常多。', 0, 0, 'Python-3.10.5.exe');
INSERT INTO `t_soft_info` VALUES ('MySQL', '无需破解', 'windows', '8.0.30', '448MB', 'mysql.png', '支特SQL语言的开放源代码数据库。MySQL按照GPL许可使用，这意味着只要不开发和出售基于ySQL的应用程序，你就可以免费使用MySQL。然而，如\n果你想出售基于小ySQL的应用程序，侧则可购买商用许可。', 2, 1, 'Mysql-8.0.30.0.msi');
INSERT INTO `t_soft_info` VALUES ('Navicat', '已破解', 'windows', '16.0.14', '91.8MB', 'navicat.png', 'Navicat Premium是一套数据库开发工具，让你从单一应用程序中同时连接MySQL、MariaDB、MongoDB、SQL Server、Oracle、PostgreSQL和SQLite\n数据库。它与Amazon RDS、Amazon Aurora、Amazon Redshift、Microsoft Azure、Oracle Cloud、MongoDB Atlas、.阿里云、腾云和华为云等云数据库\n兼容。你可以快速轻松地创建、管理和维护数据库。', 0, 0, 'Navicat16.zip');
INSERT INTO `t_soft_info` VALUES ('Everything', '无需破解', 'windows', '1.4.1.1', '1.69MB', 'everything.png', '一款速度非常快的文件搜索工具。官网描述为“基于名称实时定位文件和目录(Locate files and folders by name instantly)\"。它体积小巧，界面简洁易用，\n快速建立索引，快速搜索，同时占用极低的系统资源，实时跟踪文件变化，并且还可以通过tt或tp形式分享搜索，目前此软件支持NTFS盘符。', 0, 0, 'Everything.exe');
INSERT INTO `t_soft_info` VALUES ('Quicker', '无需破解', 'windows', '1.36.5.0', '19.0MB', 'quicker.png', 'Quck是一款功能济全的桌面快速启动工具软件，这款软件能够根据不同的软件实现不同的快捷切换面板更快，而且用户也可以在上面为常用的操作建立捷\n径，实现键启动，让办公效率更高。', 0, 0, 'Quicker.msi');
INSERT INTO `t_soft_info` VALUES ('UTools', '无需破解', 'windows', '2.6.3', '62.4MB', 'utools.png', 'uTools是一个极简、插件化的现代桌面软件，通过自由选配丰富的插件，打造得心应手的工具集合。通过快捷键（默\n认at+space)就可以快速呼出这个搜索框。你可以往输入框内粘贴文本、图片、截图、文件、文件夹等等，能的够处\n理此内容的插件也早已准备就绪，统一的设计风格和操作方式，助你高效的得到结果。', 1, 1, 'UTools.exe');
INSERT INTO `t_soft_info` VALUES ('Snipaste', '无需破解', 'windows', '2.7.3', '15.1MB', 'snipaste.png', 'Snipaste,是个简单但强大的截图工具，也可以L你将截图贴回到屏幕上。下载并打开Snipaste,按下F1来开始截图\n选择“复制到剪贴板”，再按2，截图就在桌面置顶显示了。你还可以将剪贴板里的文字或者颜色信息转化为图片窗口.\n你可以缩放、旋转这些贴图窗口，或者把它们变成半透明，甚至让扇标能穿透它们。如果你是程序员、设计师，或者你\n大部分工作时间都是花在电脑上，相信你能体会到Snipaste给你带来的率提升。', 0, 0, 'Snipaste.zip');
INSERT INTO `t_soft_info` VALUES ('ScreenToGif', '无需破解', 'windows', '2.37.0', '69.4MB', 'screentogif.png', 'Snipaste,是个简单但强大的截图工具，也可以L你将截图贴回到屏幕上。下载并打开Snipaste,按下F1来开始截图\n选择“复制到剪贴板”，再按2，截图就在桌面置顶显示了。你还可以将剪贴板里的文字或者颜色信息转化为图片窗口.\n你可以缩放、旋转这些贴图窗口，或者把它们变成半透明，甚至让扇标能穿透它们。如果你是程序员、设计师，或者你\n大部分工作时间都是花在电脑上，相信你能体会到Snipaste给你带来的率提升。它不仅可以录制屏幕，同时也包含了摄像头录制，白板书写录制等功能，并且在录制后，可以对录制内容进行增删、修改、压缩等处理。<br><br>在编辑中有很多对帧的操作如:增加删除、循环、反转，特别是移除重复帧功能，能很好的减小gif占用内存大小；<br>而在图片选项中则包含了水印、微动、模糊、字幕、自由文本、自由绘制等功能；</br>ScreenToGif还支持简单的过渡动画；<br>统计功能则提供了总帧数、总时长、帧大小、延时、帧分辨率等数据的统计；<br>在编辑结束后，我们可以根据需求选择适合的类型及编码进行保存；<br>到目前为止，ScreenToGif已适配20多种语言，并提供上传服务。', 0, 0, 'ScreenToGif.msi');
INSERT INTO `t_soft_info` VALUES ('Listary6 Pro', '已破解', 'windows', '6.0.9.25', '4.32MB', 'listary.png', 'Listary是一款实用的搜索工具，它能给“我的电脑”（资源管理器）加上许多智能命令，含有收藏文件夹，快速打开最近\n浏览的文件夹，快速显示/隐藏文件扩展名等等实用功能。能给你日常的收藏和整理文件提高效率。', 0, 0, 'Listary6Pro.zip');
INSERT INTO `t_soft_info` VALUES ('IDM', '已破解', 'windows', '6.40.12', '95.6KB', 'idm.png', 'Internet Download Manager(DM)是Windows平台上的一款优秀下载软件，它支持所有主流的浏览器，几乎能下载\n网页中的所有数据，包括视频、图片等。DM支持特最多32线程同时下载，独有专利可有效提升下载速度5倍左右，续\n传功能可以恢复因网络问题、计算机意外断电等造成的下载中段情况。在使用DM间，软件不会以任何形式单出广\n告，在设置中还可以选择不显示下载开始完成的对话框，实现「静默下载」，尽量避免对用户的干扰。', 1, 1, 'IDM.zip');
INSERT INTO `t_soft_info` VALUES ('AdGuard', '无需破解', 'windows', '4.1.46', '9.35MB', 'adguard.png', 'adguard是一款专业高效的广告拦截工具。这款软件可以有效拦截广告和危险网站，可以轻松阻挡广告、减少页面加载\n时间或其他非标准类型的广告，让你的电脑时刻处于安全的状态，该软件提供了广泛的可配置功能。', 0, 0, 'AdGuard.zip');
INSERT INTO `t_soft_info` VALUES ('Google翻译', '无需破解', 'windows', '2.0.12', '220KB', 'google.png', '浏览网页时可轻松查看翻译版本。由Google翻译小组提供。\n此扩展程序会在您的浏览器工具栏中添加一个按钮。每当您想翻译您正在方\n问的页面时，请单击翻译图标。\n该扩展程序还会自动检测您所在页面的语言是否与您在Google Chrome界面\n上使用的语言不同。如果是，则横幅会出现在页面顶部。单击横幅中的翻译\n按钮，使页面上的所有文本都以新语言显示。', 1, 1, 'GoogleTranslater.zip');
INSERT INTO `t_soft_info` VALUES ('Tampermonkey', '无需破解', 'windows', '4.18.0', '1.36MB', 'tampermonkey.png', 'Tampermonkey(油猴)是最受欢迎的浏览器扩展之一，拥有超过1000万用\n户。\nTampermonkey用于在网站上运行所谓的用户脚本（有时也称为\nGreasemonkey脚本)\n用户脚本是小型计算机程序，可以更改页面的布局，添加或删除新功能和内\n容或自动执行操作。', 0, 0, 'Tampermonkey.zip');
INSERT INTO `t_soft_info` VALUES ('百度网盘', '无需破解', 'windows', '7.16.2.4', '202MB', 'baidudisk.png', '百度网盘是百度公司推出的一款云服务产品。支持便捷地查看、上传、下载百度云端各类数据。通过百度云管家存入的文件，不会占用本地空间。上传、下\n载文件过程更稳定，不会因为浏览器、网络等突发问题中途中断，大文件传输更稳定。', 0, 0, 'BaiduNetdisk.exe');
INSERT INTO `t_soft_info` VALUES ('阿里云盘', '无需破解', 'windows', '3.5.0.3', '93.3MB', 'alidisk.png', '阿里云盘是一款速度快、不打扰、够安全、易于分享的网盘，你可以在这里存储、管理和探索内容，尽情打造丰富的数\n字世界。', 0, 0, 'ALiDrive.exe');
INSERT INTO `t_soft_info` VALUES ('夸克网盘', '无需破解', 'windows', '2.1.5', '65.9MB', 'kuakedisk.png', '夸克网盘是一个向广大用户提供数据存储、同步、管理和分享等的在线服务。夸克网盘是信息存储平台，其本身不直接\n上传、提供内容，对您传输内容不对任何修改编辑', 1, 1, 'QuarkCloudDrive.exe');
INSERT INTO `t_soft_info` VALUES ('Google云盘', '无需破解', 'windows', '66.0.3', '294MB', 'googledisk.png', 'Google Drive是谷歌公司推出的一项在线云存储服务，通过这项服务，用户可以获得15GB的免费存储空间。同时，如果用户有更大的需求，则可以通过付费的方式获得更大的存储空间。用户可以通过统一的谷歌账户进行登录。Google Drive服务会有本地客户端版本、也有网络界面版本，后者与Google Docs界面相似。会针对Google Apps客户推出，配上特殊域名。另外，Google还会向第三方提供API接口，允许人们从其它程序上存内容到Google Drive。', 0, 0, 'GoogleDrive.exe');
INSERT INTO `t_soft_info` VALUES ('城通网盘', '无需破解', 'windows', '1.0.0.1', '483KB', 'chentongdisk.png', '城通网盘(CTDISK)网络硬盘是美国乐都集团(Ledo Inc.)与中国长途电信公司合作推出的一款免费网络硬盘，即免费网络存储\n空间服务。注册后可获得支持外链的400GB免费空间，最大单文件可达4GB,同时为用户提供每万次点击下载200元的收益。已\n为国内外数千万用户提供超过1000TB的网络储存空间。', 0, 0, 'Chentongdisk.exe');
INSERT INTO `t_soft_info` VALUES ('Typora', '已破解', 'windows', '1.1.5.0', '68.0MB', 'typora.png', 'Typora windows是好用极简免费的跨平台Markdown编辑器，支持markdown的标准语法，同时Typora中文版还支持动态预览功能，一键预览，是一款不可\n多得的优质markdown编辑器。', 0, 0, 'Typora.zip');
INSERT INTO `t_soft_info` VALUES ('Xmind', '已破解', 'windows', '10.2.1', '448MB', 'xmind.png', '专为企业及个人打造全新的可视化创意平台。协助用户快速捕捉创意与灵感，通过直观、友好的图形化操作界面，将思想、策略及商务信息转化为行动蓝\n图，全面提升学习和工作效率。软件简单实用，支持简体中文，可用绘制的思维导图、鱼骨图、二维图、树形图、逻辑图、组织结构图等以结构化的方式来\n展示具体的内容，让您通过XMND可以随时开展头脑风暴。', 0, 0, 'Xmind2021.zip');
INSERT INTO `t_soft_info` VALUES ('Obsidian', '已破解', 'windows', '1.0.3', '64.5MB', 'obsidian.png', 'Obsidian,是一款科研笔记和知识管理软件，最近obsidian终于抛掉beta版的帽子，开启了1.0时代。\nObsidian是基于Markdown文件的本地知识管理软件，并且开发者若Obsidian对于个人使用者永久免\n费。<br>1.0版本在桌面和移动设备上进行了彻底的重新设计。新设计不仅看起来更美观，而且更稳定，更易于访问，更易于主题化。可以在标签页中打开笔记！这样可以更轻松地一次探索许多想法。黑曜石成为你大脑的浏览器。标签也可以堆叠，所以你可以很容易地在你的想法上跳跃。', 0, 0, 'Obsidian.exe');
INSERT INTO `t_soft_info` VALUES ('有道云笔记', '无需破解', 'windows', '7.1.6', '91.5MB', 'youdaoyun.png', '网易旗下有道推出的云笔记软件，支特办公文档，可直接查看和编辑。提供多终端同步服务，不限制登绿设备数量，拥有3G初始免费存诸空间，办公资料随\n乌携带，云瑞备价永久存储，手机时随地轻松查看。', 0, 0, 'YouDaoNote.exe');
INSERT INTO `t_soft_info` VALUES ('Draw.io', '无需破解', 'windows', '20.2.3', '80.9MB', 'draw.io.png', 'Draw.io 是一款非常好用的在线流程图绘制工具，允许用户能够快速、自由的创建简单的图标、流程图、网页模版构架图、框架图等，并可通过浏览器 Chrome 插件就可以快速创建想要的效果图，适用于商务、工程、电气、网络设计、软件设计等诸多领域的专业绘图。<br>该软件支持将流程图导出到很多格式，比如 pdf，svg，html 等，还内置了相当丰富的绘图资源，包括流程图、UML 类图、组织结构图、泳道图、E-R 图、文氏图等等，通过它，你可以绘制一系列的图表图形，且每一张图对应的源文件是 XML 格式，通过 XML 能够清楚的了解每张图的数据结构。', 0, 0, 'Draw.io.exe');
INSERT INTO `t_soft_info` VALUES ('Clash for PC', '无需破解', 'windows', '0.20.3', '75.6MB', 'clash.png', 'Clash是一款用Go语言开发的支持Linux/,MacOS/Windows/Android/,网关路由器等多平台的代理工\n具，支持Shadowsocks(SS)VMess/Trojan/,Snellt协议（不支持ShadowsocksR(SSR),支持规则分\n流（类似于Surge的配置），所以Clash for Windows不仅是一款V2Ray客户端，同时也是Shado\nwsocks/Trojan/Snell客户端。<br>Clash for Windows,简称CFW,以前Clash在Windows上只有命令行界面，后来由Fndroid大神\n开发了图形界面，让我们能更加高效地使用Clash for Windows。<br>注意：使用clash代理工具需要配置节点，节点来源可前往翻墙机场购买', 0, 0, 'Clash.for.Windows.exe');
INSERT INTO `t_soft_info` VALUES ('V2rayN', '无需破解', 'windows', '5.26.0', '46.2MB', 'v2rayn.png', 'v2rayN是Windows平台上一款基于v2ray核心的简洁好用、功能强大的v2ray客户端，支\n持Vmess、Shadowsocks、Socks5、trojan等多种协议，也支持服务器订阅。本教程详细介\n绍v2rayN的安装和配置步骤，如果配置完后无法上网，清参考：PC端科学上网常见问\n题。<br>注意：使用V2rayN代理工具需要配置节点，节点来源可前往翻墙机场购买', 0, 0, 'v2rayN.zip');
INSERT INTO `t_soft_info` VALUES ('Telegram', '无需破解', 'windows', '4.3.1', '36.0MB', 'telegram.png', 'Telegram（非正式简称TG或电报）是跨平台的即时通讯软件，其客户端是自由及开放源代码软件，但服务器端是专有软件。用户可以相互交换加密与自毁消息（类似于“阅后即焚”），发送照片、影片等所有类型文件。官方提供手机版（Android、iOS、Windows Phone）、桌面版（Microsoft Windows、macOS、Linux）和网页版 [1]  等多种平台客户端；同时官方开放应用程序接口（API），因此拥有许多第三方的客户端可供选择 [2]  ，其中多款内置中文。', 0, 0, 'Telegram.exe');
INSERT INTO `t_soft_info` VALUES ('迅雷', '无需破解', 'windows', '11.3.18', '136.26MB', 'xunlei.png', '使用全新的迅雷11，您将发现主界面蜕变为简洁清爽的风格，并且在练好“下载”的基本功之上，我们开创性的将“云盘”融合其中，而且所有用户都可以免费使用“云盘”功能！ 在“迅雷云盘”里，您可以流畅地“观看视频、欣赏音乐、浏览图片”，而且您还可以使用“Android、iOS”设备上的迅雷App，随时访问您保存在云盘中的内容。 特别值得一提的是，得益于迅雷领先的下载技术，您从云盘取回文件的速度，也将前所未有的快！', 0, 0, 'XunLei.exe');
INSERT INTO `t_soft_info` VALUES ('qBittorrent', '无需破解', 'windows', '4.4.3.1', '30.1MB', 'qbittorrent.png', 'qBittorrent是一个跨平台的自由BitTorrent客户端，其图形用户接口是由Qt4所写成的。使用libtorrent作为后端。是由Christophe Dumez在贝尔福 - 蒙贝利亚尔理工大学时开始开发。从2006年3月开始，截至2019年9月都仍在积极的开发。', 0, 0, 'QBittorrent.exe');
INSERT INTO `t_soft_info` VALUES ('Motrix', '无需破解', 'windows', '1.6.11', '102MB', 'motrix.png', '是一款十分出色的全能下载工具，otx官方版支持10个任务同时下载，跨平台支持HTTP、FTP、BT、磁力链、百度网盘等资源的下载。复制下载资源地\n止即可立即下载，非常适合需要批量下载资源的朋友使用。', 0, 0, 'Motrix.exe');
INSERT INTO `t_soft_info` VALUES ('PanDownload', '无需破解', 'windows', '2.2.2.0', '12.7MB', 'pandownload.png', 'Pandownload用户在没有百度会员权限情况下，可以自如进行文件在线解压，且可以进行多任务不限速同时下载。且\nPandownload带有百度云资源搜索功能，可直接搜索百度网盘资源进行下载。[21', 0, 0, 'PanDownload.zip');
INSERT INTO `t_soft_info` VALUES ('Chrome安卓版', '无需破解', 'Android', '78.0.39', '84.4MB', 'phonechrome.png', 'Google Chrome 是一款快速、易用且安全的网络浏览器。此版 Chrome 是专为 Android 设计的，不仅可为您量身推荐新闻报道，还有快速链接指向您所收藏的网站和下载的内容，甚至还内置了 Google 搜索和谷歌翻译。立即下载此版 Chrome，在您的所有设备上享受一致的 Chrome 网络浏览器体验吧。\r\n', 1, 2, 'Chrome.APK.zip');
INSERT INTO `t_soft_info` VALUES ('Edge', '无需破解', 'Android', '101.0.1', '282MB', 'phoneedge.png', 'Microsoft Edge 就是那个帮您保护您的数据、让您既节约时间又省钱、既安全速度又快的网络浏览器。\r\n\r\n从手机、电脑到其他登入的设备，您随时随地都可以浏览网站，尽享无缝衔接的体验。\r\n\r\nMicrosoft Edge 是个安全的浏览器，提供让您保护在线隐私和安全的各种工具。Microsoft Edge 提供反追踪、AdBlock（广告拦截）、InPrivate 隐私浏览模式和 InPrivate 隐私检索。请用我们安全的网络浏览器来让您的浏览记录更安全，并保护您在线搜索的隐私。', 0, 0, 'Edge.APK.zip');
INSERT INTO `t_soft_info` VALUES ('Foxo VPN', '无需破解', 'Android', '1.0.7', '37.3MB', 'foxovpn.png', '最好的无限制免费VPN来解锁站点、热点安全、保护隐私<br><br>\n1O0%免费VPN!高VPN速度！最好的无限免费VPN。<br><br>\n最快-作为具有高VPN速度的连接。\n最简单-一键连接到VPN代理服务器。\n最智能-自动选择最佳服务器。\n最安全-连接以解锁站点、热点安全和保护隐私。\n最稳定-拥有大量免费的云代理服务器以提供更好的VPN服务。<br><br>\n绕过防火墙作为学校wfi和学校计算机的学校免费VPN代理。\n使用免费的VPN代理服务器解锁网站。它还可以取消阻止您所在国家/地区不可用的视频。<br>\n保护您在WF热点下的网络流量匿名安全浏览，不被跟踪。\n享受私密浏览。<br>\n适用于WiFi、LTE、3G和所有移动数据载体。', 0, 0, 'FoxoVPN.APK.zip');
INSERT INTO `t_soft_info` VALUES ('Clash', '无需破解', 'Android', '2.5.8', '28.2MB', 'clash.png', '精简的用户界面，它是基于规则的网络隧道。<br>\n<br>\n\n具有/不具有身份验证的本地HTTP/HTTPS/SOCKS服务器\nVMess,Shadowsocks,Trojan(实验性)，Snellt协议支持远程连接。支持UDP。<br>\n内置DNS服务器旨在最大程度地减少DNS污染攻击，并支持上游DoH/DoT。还支持伪ip。<br>\n基于域，GEOIP,IP CIDR或端口的规则，以将数据包转发到其他代理\n远程组允许用户实施功能强大的规则。<br>支持自动回退，负载平衡或基于延迟的自动选择代理\n远程提供程序，允许用户远程获取代理/规则列表，而不是在配置中进行硬编码', 0, 0, 'Clash.APK.zip');
INSERT INTO `t_soft_info` VALUES ('XMind思维导图', '已破解', 'Android', '1.4.0', '33.5MB', 'phonexmind.png', 'Xmind 代表着我们对思维导图的理解。是极简设计，是流畅体验，是集强大功能于一身，在所有设备上都好用的思维导图、头脑风暴脑图效率办公软件。<br> <br>Xmind是一款全功能的思维导图&头脑风暴软件，是全平台都好用的思维工具。从头脑风暴发散想法，到整理想法梳理框架，再到一键演示你的思维脉络，Xmind 都可为你提供从未有过的高效脑图体验。', 0, 0, 'Xmind.APK.zip');
INSERT INTO `t_soft_info` VALUES ('Iriun Webcam', '无需破解', 'Android', '2.5.0', '9.5MB', 'lriun.png', '将您的Android手机的相机用作PC或Mac中的无线网络摄像头。安装所需的驱动程序，并将手机与\nSkype,MSN Messenger等视频应用程序配合使用。它支持高达4K的分辨率。（最大分辨率取决于手\n机)。\n<br><br>\n使用网络摄像头：<br>\n1.在手机中启动Iriun网络摄像头应用程序<br>\n2.在PC上启动Iriun Webcam Server<br>\n3.手机使用无线WFi网络自动连接到PC,相机即可使用。<br>\n4.配置Windows应用程序以使用Iriun Webcam作为音频和视频源<br>\nIriun Webcam也支持USB连接。连接电缆并按照手机上的说明操作。', 0, 0, 'LriunWebcam.APK.zip');
INSERT INTO `t_soft_info` VALUES ('微软翻译', '无需破解', 'Android', '3.3.460', '95.7MB', 'weiruantranslate.png', '微软翻译是一款免费的个人翻译应用，使用微软最新的人工智能技术，可将文本、语音、会话、照片和截\n屏翻译成60种语言，帮助你交流和学外语。您还可以免费下载离线语言包以便在旅行途中使用！<br><br>\n将文本翻译成60余种语言，可在线或离线使用。<br>\n拍照翻译功能，可直接翻译相片和截屏内的文字<br>\n语音翻译功能可实现单人使用，以及双人对话的分屏模式实时翻译。<br>\n多人多语言会话翻译一一连接多个设备并跨越多个语种与最多100人进行面对面会话，每个人都可以选择\n自己的语言。<br>\n收录了多种出国旅游场景的常用语手册与发音指3引，帮助您在旅途中学习外语。<br>\n查看单词的多种翻译与意思，为您找到用于表达自我的最佳翻译。<br>\n下载离线语言包，以便您在没有网络连接时使用。<br>\n听取译文的读音，帮助您学外语，旅游和海外购物。<br>\n与其他应用共享翻译结果<br>\n标注并保存您最常用的译文以便以后使用。\n通过上下文菜单翻译功能翻译其他应用中的文本。', 0, 0, 'MicrsoftTranslator.APK.zip');
INSERT INTO `t_soft_info` VALUES ('TeraBox', '无需破解', 'Android', '3.2.3', '155MB', 'tearbox.png', '注册获得1024GB永久免费云存储空间！自动备份您的照片和视颜。支特在线图片预览和视频播放。\n您的手机存储空间不足吗？您是否需要Extra Space Photo Storage来保存您最喜爱的照片备份？别担\n心，我们为您提供了免费的“云存储”。您可以快速共享文件并在安全的云存储上轻松备份所有数据。请继\n续关注以获得高达1024GB的免费存储空间。<br><br>\n使用TeraBox,您可以存储大约：3,000,000多张照片、2500多个视频文件或650万页文档。我们为您<br><br>\n的所有文件和存储提供一个安全的地方，并防止您的数据被盗。您可以安全地备份、同步、访问和共享您\n的重要内容。<br><br>\n免费获取安全的云存储并进行安全备份以避免丢失！\'任何人都可以将文件上传和传输到TeraBox并与\n朋友和家人分享。将照片、视频、文档等文件备份至云存储，随时随地访问与任何电脑或移动设备同步的\n文件！<br><br>\nTeraBox云存储亮点：<br>\n1024GB永久免费云存储；<br>\n从您的Android设备上传照片、视频、文档和其他文件：<br>\n访问您存储在云存储中的所有内容，无论它来自什么设备；<br>\n预览照片和在线视频播放；<br>\n创建文件夹并在它们之间移动文件；<br>\n将文件传输到不同的文件存储；<br>', 0, 0, 'TearBox.APK.zip');
INSERT INTO `t_soft_info` VALUES ('PikPack', '无需破解', 'Android', '10.2.3', '132MB', 'pikpack.png', 'PikPak-私密云盘，便捷保存你喜欢的文件。支持在线播放和图片查看。<br><br>\n你可以通过Telegram-bot将喜欢的文件转发到PikPak,或通过系统共享保存；然后在PikPak中找到它们。<br><br>\nPikPak采用安全备份技术，避免文件丢失。<br><br>\nPikPak的亮点：<br>\n高达10TB的云存储：你可以存储多达8000个视频文件。<br>\n强大的Telegram Bot:一键转发，从Telegram、Twitter、TikTok、Facebook等保存文件和链接。<br>\n领先的加速技术，通过云传输快速保存所有文件。<br>\n方便的图像和视频预览。<br>\n通过创建文件夹管理收集的文件。<br>', 0, 0, 'PikPak.APK.zip');
INSERT INTO `t_soft_info` VALUES ('Twitter', '无需破解', 'Android', '1.3.54', '143MB', 'twitter.png', '加入对话！Twitter是您的首选社交网络应用，也是了解世界动态的来源。无论是全球新闻、最新天气状\n况、体育赛事、政坛风云，还是篮球新闻和篮球现场比分，Twitte都会第一时间发布最新信息。交友或关\n注大咖一一只言片语皆可影响世界！<br><br>\n私聊或群聊，还可与您的关注者发起群组对话。在好友或其他Twitter关注者的社交媒体帖子下发表评论。\n和成百上千有趣的Twitter用户一起关注您喜爱的名人新闻，一目了然地浏览相关内容。Twitter是与远近\n的朋友和名人联系的社交媒体平台。用热门故事、现场新闻、笑话、动图、照片和视频，活跃您的社交网\n络。获取今日头条，永远不错过任何最新消息。分享国内新闻或直播，发现您的哪些推文被点赞或转推。', 0, 0, 'Twitter.APK.zip');
INSERT INTO `t_soft_info` VALUES ('Telegram', '无需破解', 'Android', '3.5.64', '236MB', 'phonetelegram.png', '纯即时消息简单，快速，安全并在所有设备上同步。全球下载量最高的十大应用之一，活跃用户超过5\n亿。<br><br>\n快速：Telegram是市场上最快的消息传递应用程序，它通过遍布全球的独特的分布式数据中心网络与人\n们联系。<br><br>\n已同步：您可以一次从所有手机，平板电脑和计算机访问您的消息。电报应用程序是独立的，因此您无需\n保持手机连接状态。在一台设备上开始打字，然后从另一台设备完成消息。再也不会丢失您的数据。<br><br>\n无限：您可以发送媒体和文件，而对其类型和大小没有任何限制。您的整个聊天历史记录将不需要设备上\n的磁盘空间，并且将在需要时安全地存储在Telegram:云中。<br><br>\n安全：我们的使命是提供最佳的安全性和易用性。Telegram上的所有内容（包括聊天，群组，媒体等）\n都使用256位对称AES加密，2048位RSA加密和Diffie-Hellmani安全密钥交换的组合进行加密。<br><br>\n100%免费和开放：Telegram为开发人员，开放源代码应用程序和可验证的版本提供了完整的文档和免费\nAP1,以证明您下载的应用程序是从发布的完全相同的源代码构建的。<br><br>\n强大：您最多可以创建与200,000名成员进行的群聊，共享大型视频，每个最大2GB的任何类型的文档\n(.DOCX,.MP3,.ZIP等)，甚至可以针对特定任务设置浸游器。Telegram是托管在线社区和协调团队\n合作的理想工具。<br><br>\n可靠：Telegram专为使用尽可能少的数据传递消息而设计，是有史以来最可靠的消息传递系统。即使在\n最弱的移动连接上也可以使用。<br><br>\n有趣：Telegram.具有功能强大的照片和视频编辑工具，动画贴纸和表情符号，完全可自定义的主题以更\n改应用程序的外观，以及开放的贴纸/GF平台可满足您所有的表达需求。', 0, 0, 'Telegram.APK.zip');
INSERT INTO `t_soft_info` VALUES ('YouTube', '无需破解', 'Android', '17.41.36', '131MB', 'youtube.png', '下载适用于Android手机和平板电脑的YouTube官方应用。看世界之所看，享世界之所享-从最热门的\n音乐视频，到时下流行的游戏、时尚、美容、新闻和学习等类型的内容，全部尽揽眼底。您可以订阅喜爱\n的频道、创作自己的内容、与朋友分享精彩内容，还可以在任意设备上观看视频。', 0, 0, 'Youtube.APK.zip');
INSERT INTO `t_soft_info` VALUES ('Word', '无需破解', 'Android', '16.0.15', '94.5MB', 'word.png', '使用受信任的Wod应用，可快速轻松地创建、编辑、查看和与他人共享文件。还可以查看和编辑附加到\n电子邮件的Office文档。使用Word,Office如影随形。无论你是博主、作家、记者、专栏作家、学生还\n是处理文档的项目经理，其方便都能做如你所愿。Wod引入了PDF阅读器，让你能够更轻松地阅读PDF。\n它可以让你在旅途中、睡觉前或任何你想要的地方阅读PDF和电子书。<br>\n制作有影响力的文本文档、剧本、博客、评论文章或简历。使用功能强大的工具自定义你的文档、信件、\n简历或笔记，让你能够使用最佳格式选项写出最好的作品。<br><br>\n自信创作<br>\n使用设计精美的新式模板，快速开始创作项目、作业、信件、博客、剧本、笔记、评论文章或简历。使用\n丰富的格式和布局选项来记下你的想法并以书面形式表达。无论使用什么设备，文档格式和布局都将保持\n原样并且美观大方。<br>\n舒适地阅读、编写和编辑<br>\n使用阅读视图，可在设备上轻松阅读长文本文档、PDF、信件、剧本等。通过将PDF转换成Wod文档文\n件来编辑，轻松进行更改。编辑后将文档转换为PDF文件，仅需点击几下即可共享。', 0, 0, 'Word.APK.zip');
INSERT INTO `t_soft_info` VALUES ('Steam', '无需破解', 'Android', '61.2.4', '342MB', 'steam.png', '有了免费的Steam手机应用，您可以随时随地使用Steam。购买PC游戏并获得最新的游戏和社区新\n闻，同时保护您的Steam帐户。<br><br>\n在Steam上购物<br>\n在手机上浏览Steam PC游戏目录。从此不错过任何特卖.\nSteam令牌<br>\n保护您的Steam帐户，并使用双因素验证让登录更为快捷。<br>\n双因素验证，确保您是唯一有权访问您的帐户的人。<br>\n二维码登录-扫描二维码登录Steam而不是输入密码或.<br>\n登录确认-使用简单的“批准”或“拒绝\"确认您的常规Steam登录。<br>\n库和远程下载<br>\n全新的库视图让您可以轻松查看游戏内容、讨论、指南、客服帮助等。此外，您还可以用手机管理PC上\n的游戏下载和更新。<br>\n交易与市场确认<br>\n通过手机确认，加快物品交易与销售处理速度。', 0, 0, 'Steam.APK.zip');
INSERT INTO `t_soft_info` VALUES ('Netflix', '无需破解', 'Android', '12.43.2', '311MB', 'netflix.png', '想要找到全球最受关注的电视节目和电影？它们都在Netfliⅸ上。<br><br>\n我们为您带来屡获殊荣的系列节目、电影、纪录片和单口喜剧特辑。您会因为以下原因爱上Netflix:<br>\n我们在不断添加电视节目和电影。浏览新的影视剧或搜索收藏夹，然后直接在您的设备上流媒体播放。<br>\n您观看的次数越多，Netflix为您推荐电视节目和电影的能力就越强。<br>\n为一个帐户最多创建五套个人资料。个人资料可为您家庭的不同成员提供自己个性化的Netflix体验。<br>\n适合家庭的娱乐内容为孩子们带来安全的观看体验。<br>\n预览我们电视节目和电影的简单视频，并获得有关新剧集和新内容的通知。<br>\n保存您的数据。将影视剧下载到您的移动设备上，无论身在何处都可以离线观看。', 0, 0, 'Netfilx.APK.zip');
INSERT INTO `t_soft_info` VALUES ('', '', '', '', '', '', '', 0, 0, '');

-- ----------------------------
-- Table structure for t_user_login
-- ----------------------------
DROP TABLE IF EXISTS `t_user_login`;
CREATE TABLE `t_user_login`  (
  `userId` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userPassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_login
-- ----------------------------
INSERT INTO `t_user_login` VALUES (1, 'a', 'a@qq.com', '123123');
INSERT INTO `t_user_login` VALUES (2, 'b', 'b@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (3, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (4, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (5, 'd', 'd@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (6, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (7, 'd', 'd@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (8, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (9, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (10, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (11, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (12, 'c', 'C@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (13, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (14, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (15, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (16, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (17, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (18, 'dd', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (19, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (20, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (21, 'c', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (22, 'cc', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (23, 'ccc', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (24, 'cccc', 'c@qq.com', '1111111111');
INSERT INTO `t_user_login` VALUES (25, 'cccccc', 'W@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (26, 'cs', 'cs@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (27, 'ddff', 'W@qq.comf', '111111');
INSERT INTO `t_user_login` VALUES (28, 'aoyu', 'aoyu@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (29, 'aoyu1', 'aoyu1@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (30, 'cccd', '111@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (31, 'f', '121@qq.com', '222222');
INSERT INTO `t_user_login` VALUES (32, 'g', '123@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (33, 'Admin_AoYu', 'admin_aoyu@xiaopozhan.com', '339983216');
INSERT INTO `t_user_login` VALUES (34, ' c', '11@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (35, 'caa', 'aa111@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (36, 'ccsd', '11111@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (37, 'ccbbbbb', '1fasf11@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (38, 'ccbbbbb', '1fasf11@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (39, 'cfsadf', 'adsf@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (40, 'cfas', '11111@qq.co', '111111');
INSERT INTO `t_user_login` VALUES (41, 'cfas', '11111@qq.co', '111111');
INSERT INTO `t_user_login` VALUES (42, 'cx', '111d11@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (43, 'cx', '111d11@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (44, 'cx', '111d11@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (45, 'cx', '111d11@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (46, 'cx', '111d11@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (47, 'cx', '111d11@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (48, 'cx', '111d11@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (49, 'cfdsa', '1ds1111@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (50, 'cfdsa', '1ds1111@qq.com', '111111');
INSERT INTO `t_user_login` VALUES (51, 'cfdsa', '1ds1111@qq.com', '111111');

SET FOREIGN_KEY_CHECKS = 1;
