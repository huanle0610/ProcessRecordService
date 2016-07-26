-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.24-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.5092
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;

-- Dumping structure for table test.processes
CREATE TABLE IF NOT EXISTS `processes` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hostname` varchar(50) DEFAULT NULL,
  `event_id` int(10) unsigned DEFAULT NULL,
  `session_id` int(10) unsigned DEFAULT NULL,
  `process_id` int(10) unsigned DEFAULT NULL,
  `caption` varchar(90) DEFAULT NULL,
  `owner` varchar(90) DEFAULT NULL,
  `executable_path` varchar(255) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2240 DEFAULT CHARSET=latin1;

-- Dumping data for table test.processes: ~0 rows (approximately)
DELETE FROM `processes`;
/*!40000 ALTER TABLE `processes` DISABLE KEYS */;
INSERT INTO `processes` (`pid`, `hostname`, `event_id`, `session_id`, `process_id`, `caption`, `owner`, `executable_path`, `creation_date`, `update_at`) VALUES
	(2132, 'HL-PC', 5, 1, 868, 'csrss.exe', 'unknown', '', '2016-07-25 23:22:42', '2016-07-27 00:46:23'),
	(2133, 'HL-PC', 5, 1, 416, 'winlogon.exe', 'unknown', 'C:\\WINDOWS\\system32\\winlogon.exe', '2016-07-25 23:22:43', '2016-07-27 00:46:23'),
	(2134, 'HL-PC', 5, 1, 1048, 'dwm.exe', 'unknown', 'C:\\WINDOWS\\system32\\dwm.exe', '2016-07-25 23:22:45', '2016-07-27 00:46:23'),
	(2135, 'HL-PC', 5, 1, 1312, 'atieclxx.exe', 'unknown', 'C:\\WINDOWS\\system32\\atieclxx.exe', '2016-07-25 23:22:45', '2016-07-27 00:46:23'),
	(2136, 'HL-PC', 5, 1, 4452, 'virtscrl.exe', 'unknown', 'C:\\PROGRA~1\\LENOVO\\VIRTSCRL\\virtscrl.exe', '2016-07-25 23:32:13', '2016-07-27 00:46:23'),
	(2137, 'HL-PC', 5, 1, 2928, 'lpdagent.exe', 'unknown', 'C:\\Program Files (x86)\\Lenovo\\LocationAware\\lpdagent.exe', '2016-07-25 23:32:13', '2016-07-27 00:46:23'),
	(2138, 'HL-PC', 5, 1, 4944, 'SynTPEnh.exe', 'unknown', 'C:\\Program Files\\Synaptics\\SynTP\\SynTPEnh.exe', '2016-07-25 23:32:13', '2016-07-27 00:46:23'),
	(2139, 'HL-PC', 5, 1, 2872, 'conhost.exe', 'unknown', 'C:\\WINDOWS\\system32\\conhost.exe', '2016-07-25 23:32:13', '2016-07-27 00:46:23'),
	(2140, 'HL-PC', 5, 1, 5056, 'taskhostex.exe', 'unknown', 'C:\\WINDOWS\\system32\\taskhostex.exe', '2016-07-25 23:32:13', '2016-07-27 00:46:23'),
	(2141, 'HL-PC', 5, 1, 1156, 'tpnumlkd.exe', 'unknown', 'C:\\Program Files\\LENOVO\\HOTKEY\\tpnumlkd.exe', '2016-07-25 23:32:13', '2016-07-27 00:46:23'),
	(2142, 'HL-PC', 5, 1, 1724, 'tposd.exe', 'unknown', 'C:\\PROGRA~1\\Lenovo\\HOTKEY\\TPOSD.EXE', '2016-07-25 23:32:13', '2016-07-27 00:46:23'),
	(2143, 'HL-PC', 5, 1, 4140, 'shtctky.exe', 'unknown', 'C:\\PROGRA~1\\Lenovo\\HOTKEY\\SHTCTKY.EXE', '2016-07-25 23:32:13', '2016-07-27 00:46:23'),
	(2144, 'HL-PC', 5, 1, 4892, 'igfxEM.exe', 'unknown', 'C:\\WINDOWS\\system32\\igfxEM.exe', '2016-07-25 23:32:14', '2016-07-27 00:46:23'),
	(2145, 'HL-PC', 5, 1, 4232, 'igfxHK.exe', 'unknown', 'C:\\WINDOWS\\system32\\igfxHK.exe', '2016-07-25 23:32:14', '2016-07-27 00:46:23'),
	(2146, 'HL-PC', 5, 1, 2716, 'SynTPHelper.exe', 'unknown', 'C:\\PROGRAM FILES\\SYNAPTICS\\SYNTP\\SYNTPHELPER.EXE', '2016-07-25 23:32:17', '2016-07-27 00:46:23'),
	(2147, 'HL-PC', 5, 1, 3076, 'SynTPLpr.exe', 'unknown', 'C:\\Program Files\\Synaptics\\SynTP\\SynTPLpr.exe', '2016-07-25 23:32:19', '2016-07-27 00:46:23'),
	(2148, 'HL-PC', 5, 1, 4948, 'devenv.exe', 'unknown', 'D:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\Common7\\IDE\\devenv.exe', '2016-07-25 23:32:23', '2016-07-27 00:46:23'),
	(2149, 'HL-PC', 5, 1, 5032, 'PerfWatson2.exe', 'unknown', 'D:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\Common7\\IDE\\PerfWatson2.exe', '2016-07-25 23:32:23', '2016-07-27 00:46:23'),
	(2150, 'HL-PC', 5, 1, 3080, 'rundll32.exe', 'unknown', 'C:\\Windows\\System32\\rundll32.exe', '2016-07-25 23:32:25', '2016-07-27 00:46:23'),
	(2151, 'HL-PC', 5, 1, 4044, 'TpShocks.exe', 'unknown', 'C:\\Windows\\System32\\TpShocks.exe', '2016-07-25 23:32:26', '2016-07-27 00:46:23'),
	(2152, 'HL-PC', 5, 1, 4660, 'YodaoDict.exe', 'unknown', 'D:\\Program Files\\Youdao\\Dict\\YodaoDict.exe', '2016-07-25 23:32:27', '2016-07-27 00:46:23'),
	(2153, 'HL-PC', 5, 1, 5260, 'YoudaoDictHelper.exe', 'unknown', 'D:\\Program Files\\Youdao\\Dict\\6.3.67.7016\\YoudaoDictHelper.exe', '2016-07-25 23:32:28', '2016-07-27 00:46:23'),
	(2154, 'HL-PC', 5, 1, 5276, 'YoudaoIE.exe', 'unknown', 'D:\\Program Files\\Youdao\\Dict\\6.3.67.7016\\YoudaoIE.exe', '2016-07-25 23:32:28', '2016-07-27 00:46:23'),
	(2155, 'HL-PC', 5, 1, 5488, 'WordBook.exe', 'unknown', 'D:\\Program Files\\Youdao\\Dict\\6.3.67.7016\\wordbook.exe', '2016-07-25 23:32:31', '2016-07-27 00:46:23'),
	(2156, 'HL-PC', 5, 1, 5676, 'pcee4.exe', 'unknown', 'C:\\Program Files (x86)\\Dolby Home Theater v4\\pcee4.exe', '2016-07-25 23:32:34', '2016-07-27 00:46:23'),
	(2157, 'HL-PC', 5, 1, 5472, 'VsHub.exe', 'unknown', 'C:\\Program Files (x86)\\Common Files\\Microsoft Shared\\VsHub\\1.0.0.0\\vshub.exe', '2016-07-25 23:32:40', '2016-07-27 00:46:23'),
	(2158, 'HL-PC', 5, 1, 6268, 'Microsoft.VsHub.Server.HttpHost.exe', 'unknown', 'C:\\Program Files (x86)\\Common Files\\Microsoft Shared\\VsHub\\1.0.0.0\\Microsoft.VsHub.Server.HttpHost.exe', '2016-07-25 23:32:43', '2016-07-27 00:46:23'),
	(2159, 'HL-PC', 5, 1, 6292, 'conhost.exe', 'unknown', 'C:\\WINDOWS\\system32\\conhost.exe', '2016-07-25 23:32:43', '2016-07-27 00:46:23'),
	(2160, 'HL-PC', 5, 1, 6736, 'YoudaoDictHelper.exe', 'unknown', 'D:\\Program Files\\Youdao\\Dict\\6.3.67.7016\\YoudaoDictHelper.exe', '2016-07-25 23:32:50', '2016-07-27 00:46:23'),
	(2161, 'HL-PC', 5, 1, 5440, 'TaobaoProtect.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Roaming\\TaobaoProtect\\TaobaoProtect.exe', '2016-07-25 23:32:56', '2016-07-27 00:46:23'),
	(2162, 'HL-PC', 5, 1, 7032, 'msvsmon.exe', 'unknown', 'D:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\Common7\\IDE\\Remote Debugger\\x64\\msvsmon.exe', '2016-07-25 23:33:05', '2016-07-27 00:46:23'),
	(2163, 'HL-PC', 5, 2, 6488, 'csrss.exe', 'unknown', '', '2016-07-25 23:33:13', '2016-07-27 00:46:23'),
	(2164, 'HL-PC', 5, 2, 4352, 'winlogon.exe', 'unknown', 'C:\\WINDOWS\\system32\\winlogon.exe', '2016-07-25 23:33:13', '2016-07-27 00:46:23'),
	(2165, 'HL-PC', 5, 2, 3408, 'dwm.exe', 'unknown', 'C:\\WINDOWS\\system32\\dwm.exe', '2016-07-25 23:33:14', '2016-07-27 00:46:23'),
	(2166, 'HL-PC', 5, 2, 4988, 'atieclxx.exe', 'unknown', 'C:\\WINDOWS\\system32\\atieclxx.exe', '2016-07-25 23:33:14', '2016-07-27 00:46:23'),
	(2167, 'HL-PC', 5, 2, 2752, 'explorer.exe', 'unknown', 'C:\\WINDOWS\\Explorer.EXE', '2016-07-25 23:33:20', '2016-07-27 00:46:23'),
	(2168, 'HL-PC', 5, 2, 7180, 'igfxEM.exe', 'unknown', 'C:\\WINDOWS\\system32\\igfxEM.exe', '2016-07-25 23:33:20', '2016-07-27 00:46:23'),
	(2169, 'HL-PC', 5, 2, 7188, 'igfxHK.exe', 'unknown', 'C:\\WINDOWS\\system32\\igfxHK.exe', '2016-07-25 23:33:20', '2016-07-27 00:46:23'),
	(2170, 'HL-PC', 5, 2, 7196, 'igfxTray.exe', 'unknown', 'C:\\WINDOWS\\system32\\igfxTray.exe', '2016-07-25 23:33:20', '2016-07-27 00:46:23'),
	(2171, 'HL-PC', 5, 2, 7324, 'virtscrl.exe', 'unknown', 'C:\\PROGRA~1\\LENOVO\\VIRTSCRL\\virtscrl.exe', '2016-07-25 23:33:20', '2016-07-27 00:46:23'),
	(2172, 'HL-PC', 5, 2, 7348, 'lpdagent.exe', 'unknown', 'C:\\Program Files (x86)\\Lenovo\\LocationAware\\lpdagent.exe', '2016-07-25 23:33:21', '2016-07-27 00:46:23'),
	(2173, 'HL-PC', 5, 2, 7368, 'taskhostex.exe', 'unknown', 'C:\\WINDOWS\\system32\\taskhostex.exe', '2016-07-25 23:33:21', '2016-07-27 00:46:23'),
	(2174, 'HL-PC', 5, 2, 7388, 'SynTPEnh.exe', 'unknown', 'C:\\Program Files\\Synaptics\\SynTP\\SynTPEnh.exe', '2016-07-25 23:33:21', '2016-07-27 00:46:23'),
	(2175, 'HL-PC', 5, 2, 7404, 'conhost.exe', 'unknown', 'C:\\WINDOWS\\system32\\conhost.exe', '2016-07-25 23:33:21', '2016-07-27 00:46:23'),
	(2176, 'HL-PC', 5, 2, 7428, 'tpnumlkd.exe', 'unknown', 'C:\\Program Files\\LENOVO\\HOTKEY\\tpnumlkd.exe', '2016-07-25 23:33:21', '2016-07-27 00:46:23'),
	(2177, 'HL-PC', 5, 2, 7464, 'tposd.exe', 'unknown', 'C:\\PROGRA~1\\Lenovo\\HOTKEY\\TPOSD.EXE', '2016-07-25 23:33:21', '2016-07-27 00:46:23'),
	(2178, 'HL-PC', 5, 2, 7472, 'shtctky.exe', 'unknown', 'C:\\PROGRA~1\\Lenovo\\HOTKEY\\SHTCTKY.EXE', '2016-07-25 23:33:21', '2016-07-27 00:46:23'),
	(2179, 'HL-PC', 5, 2, 7596, 'ChsIME.exe', 'unknown', 'C:\\Windows\\System32\\InputMethod\\CHS\\ChsIME.exe', '2016-07-25 23:33:21', '2016-07-27 00:46:23'),
	(2180, 'HL-PC', 5, 2, 7956, 'dllhost.exe', 'unknown', 'C:\\WINDOWS\\system32\\DllHost.exe', '2016-07-25 23:33:22', '2016-07-27 00:46:23'),
	(2181, 'HL-PC', 5, 2, 6836, 'SynTPHelper.exe', 'unknown', 'C:\\PROGRAM FILES\\SYNAPTICS\\SYNTP\\SYNTPHELPER.EXE', '2016-07-25 23:33:24', '2016-07-27 00:46:23'),
	(2182, 'HL-PC', 5, 2, 7772, 'LogonUI.exe', 'unknown', 'C:\\WINDOWS\\system32\\LogonUI.exe', '2016-07-25 23:33:24', '2016-07-27 00:46:23'),
	(2183, 'HL-PC', 5, 2, 7912, 'ChsIME.exe', 'unknown', 'C:\\Windows\\System32\\InputMethod\\CHS\\ChsIME.exe', '2016-07-25 23:33:24', '2016-07-27 00:46:23'),
	(2184, 'HL-PC', 5, 2, 8136, 'SynTPLpr.exe', 'unknown', 'C:\\Program Files\\Synaptics\\SynTP\\SynTPLpr.exe', '2016-07-25 23:33:27', '2016-07-27 00:46:23'),
	(2185, 'HL-PC', 5, 2, 8392, 'rundll32.exe', 'unknown', 'C:\\Windows\\System32\\rundll32.exe', '2016-07-25 23:33:32', '2016-07-27 00:46:23'),
	(2186, 'HL-PC', 5, 2, 8400, 'TpShocks.exe', 'unknown', 'C:\\Windows\\System32\\TpShocks.exe', '2016-07-25 23:33:32', '2016-07-27 00:46:23'),
	(2187, 'HL-PC', 5, 2, 8624, '360tray.exe', 'unknown', 'D:\\Program Files (x86)\\360\\360safe\\safemon\\360tray.exe', '2016-07-25 23:33:35', '2016-07-27 00:46:23'),
	(2188, 'HL-PC', 5, 1, 8928, 'aliwssv.exe', 'unknown', 'C:\\Program Files (x86)\\alipay\\aliedit\\5.3.0.3807\\aliwssv.exe', '2016-07-25 23:33:37', '2016-07-27 00:46:23'),
	(2189, 'HL-PC', 5, 1, 8936, 'conhost.exe', 'unknown', 'C:\\WINDOWS\\system32\\conhost.exe', '2016-07-25 23:33:37', '2016-07-27 00:46:23'),
	(2190, 'HL-PC', 5, 2, 9096, 'SoftMgrLite.exe', 'unknown', 'D:\\Program Files (x86)\\360\\360safe\\SoftMgr\\SML\\SoftMgrLite.exe', '2016-07-25 23:33:38', '2016-07-27 00:46:23'),
	(2191, 'HL-PC', 5, 2, 4728, 'pcee4.exe', 'unknown', 'C:\\Program Files (x86)\\Dolby Home Theater v4\\pcee4.exe', '2016-07-25 23:33:42', '2016-07-27 00:46:23'),
	(2192, 'HL-PC', 5, 1, 8048, 'Alipaybsm.exe', 'unknown', 'C:\\ProgramData\\alipay\\Alipaybsm.exe', '2016-07-25 23:37:55', '2016-07-27 00:46:23'),
	(2193, 'HL-PC', 5, 1, 6948, 'PhpStorm.exe', 'unknown', 'D:\\Program Files (x86)\\JetBrains\\PhpStorm 10.0.3\\bin\\PhpStorm.exe', '2016-07-25 23:40:25', '2016-07-27 00:46:23'),
	(2194, 'HL-PC', 5, 1, 8244, 'fsnotifier.exe', 'unknown', 'D:\\Program Files (x86)\\JetBrains\\PhpStorm 10.0.3\\bin\\fsnotifier.exe', '2016-07-25 23:40:37', '2016-07-27 00:46:23'),
	(2195, 'HL-PC', 5, 1, 6556, 'conhost.exe', 'unknown', 'C:\\WINDOWS\\system32\\conhost.exe', '2016-07-25 23:40:37', '2016-07-27 00:46:23'),
	(2196, 'HL-PC', 5, 1, 9644, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:15', '2016-07-27 00:46:23'),
	(2197, 'HL-PC', 5, 1, 9652, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:16', '2016-07-27 00:46:23'),
	(2198, 'HL-PC', 5, 1, 9776, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:16', '2016-07-27 00:46:23'),
	(2199, 'HL-PC', 5, 1, 9896, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:17', '2016-07-27 00:46:23'),
	(2200, 'HL-PC', 5, 1, 9916, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:17', '2016-07-27 00:46:23'),
	(2201, 'HL-PC', 5, 1, 9928, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:17', '2016-07-27 00:46:23'),
	(2202, 'HL-PC', 5, 1, 9936, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:17', '2016-07-27 00:46:23'),
	(2203, 'HL-PC', 5, 1, 9944, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:17', '2016-07-27 00:46:23'),
	(2204, 'HL-PC', 5, 1, 9952, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:17', '2016-07-27 00:46:23'),
	(2205, 'HL-PC', 5, 1, 9960, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:18', '2016-07-27 00:46:23'),
	(2206, 'HL-PC', 5, 1, 9968, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:18', '2016-07-27 00:46:23'),
	(2207, 'HL-PC', 5, 1, 9976, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:18', '2016-07-27 00:46:23'),
	(2208, 'HL-PC', 5, 1, 9984, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:18', '2016-07-27 00:46:23'),
	(2209, 'HL-PC', 5, 1, 9468, 'pythonw.exe', 'unknown', 'D:\\Program Files\\XX-Net-2.8.9\\python27\\1.0\\pythonw.exe', '2016-07-25 23:41:28', '2016-07-27 00:46:23'),
	(2210, 'HL-PC', 5, 1, 9524, 'chrome.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe', '2016-07-25 23:41:30', '2016-07-27 00:46:23'),
	(2211, 'HL-PC', 5, 1, 3228, 'pythonw.exe', 'unknown', 'D:\\Program Files\\XX-Net-2.8.9\\python27\\1.0\\pythonw.exe', '2016-07-25 23:41:36', '2016-07-27 00:46:23'),
	(2212, 'HL-PC', 5, 1, 10392, 'devenv.exe', 'unknown', 'D:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\Common7\\IDE\\devenv.exe', '2016-07-26 00:00:28', '2016-07-27 00:46:23'),
	(2213, 'HL-PC', 5, 1, 13236, 'MyProcessService.vshost.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\Documents\\Visual Studio 2015\\Projects\\MyProcessService\\MyProcessService\\bin\\Debug\\MyProcessService.vshost.exe', '2016-07-26 00:00:52', '2016-07-27 00:46:23'),
	(2214, 'HL-PC', 5, 1, 9716, 'msvsmon.exe', 'unknown', 'D:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\Common7\\IDE\\Remote Debugger\\x64\\msvsmon.exe', '2016-07-26 00:00:54', '2016-07-27 00:46:23'),
	(2215, 'HL-PC', 5, 2, 13068, 'SoftupNotify.exe', 'unknown', 'D:\\Program Files (x86)\\360\\360safe\\softmgr\\SoftupNotify.exe', '2016-07-26 00:03:49', '2016-07-27 00:46:23'),
	(2216, 'HL-PC', 5, 2, 12008, 'SDIS.exe', 'unknown', 'D:\\Program Files (x86)\\360\\360safe\\SoftMgr\\SDIS.exe', '2016-07-26 00:03:50', '2016-07-27 00:46:23'),
	(2217, 'HL-PC', 5, 1, 11152, 'Evernote.exe', 'unknown', 'C:\\Program Files (x86)\\Evernote\\Evernote\\Evernote.exe', '2016-07-26 00:04:52', '2016-07-27 00:46:23'),
	(2218, 'HL-PC', 5, 1, 7120, 'EvernoteTray.exe', 'unknown', 'C:\\Program Files (x86)\\Evernote\\Evernote\\EvernoteTray.exe', '2016-07-26 00:04:53', '2016-07-27 00:46:23'),
	(2219, 'HL-PC', 5, 1, 6468, 'EvernoteClipper.exe', 'unknown', 'C:\\Program Files (x86)\\Evernote\\Evernote\\EvernoteClipper.exe', '2016-07-26 00:04:53', '2016-07-27 00:46:23'),
	(2220, 'HL-PC', 5, 1, 14428, 'explorer.exe', 'unknown', 'C:\\WINDOWS\\explorer.exe', '2016-07-26 22:23:13', '2016-07-27 00:46:23'),
	(2221, 'HL-PC', 5, 1, 14360, 'heidisql.exe', 'unknown', 'D:\\Program Files\\HeidiSQL\\heidisql.exe', '2016-07-26 22:24:07', '2016-07-27 00:46:23'),
	(2222, 'HL-PC', 5, 1, 11852, 'mmc.exe', 'unknown', 'C:\\WINDOWS\\system32\\mmc.exe', '2016-07-26 22:24:51', '2016-07-27 00:46:23'),
	(2223, 'HL-PC', 5, 1, 6408, 'cmd.exe', 'unknown', 'C:\\WINDOWS\\system32\\cmd.exe', '2016-07-26 23:23:25', '2016-07-27 00:46:23'),
	(2224, 'HL-PC', 5, 1, 15320, 'conhost.exe', 'unknown', 'C:\\WINDOWS\\system32\\conhost.exe', '2016-07-26 23:23:25', '2016-07-27 00:46:23'),
	(2225, 'HL-PC', 5, 1, 13376, 'mmc.exe', 'unknown', 'C:\\WINDOWS\\system32\\mmc.exe', '2016-07-26 23:25:07', '2016-07-27 00:46:23'),
	(2226, 'HL-PC', 5, 1, 15248, 'FSCapture.exe', 'unknown', 'D:\\Program Files\\FSCapture84\\FSCapture.exe', '2016-07-26 23:42:52', '2016-07-27 00:46:23'),
	(2227, 'HL-PC', 5, 1, 3372, 'Skype.exe', 'unknown', 'C:\\Program Files (x86)\\Skype\\Phone\\Skype.exe', '2016-07-26 23:43:00', '2016-07-27 00:46:23'),
	(2228, 'HL-PC', 5, 1, 12996, 'MSBuild.exe', 'unknown', 'C:\\Program Files (x86)\\MSBuild\\14.0\\bin\\MSBuild.exe', '2016-07-27 00:10:05', '2016-07-27 00:46:23'),
	(2229, 'HL-PC', 5, 1, 11108, 'conhost.exe', 'unknown', 'C:\\WINDOWS\\system32\\conhost.exe', '2016-07-27 00:10:05', '2016-07-27 00:46:23'),
	(2230, 'HL-PC', 5, 1, 13320, 'VBCSCompiler.exe', 'unknown', 'C:\\Program Files (x86)\\MSBuild\\14.0\\bin\\VBCSCompiler.exe', '2016-07-27 00:10:07', '2016-07-27 00:46:23'),
	(2231, 'HL-PC', 5, 1, 3252, 'conhost.exe', 'unknown', 'C:\\WINDOWS\\system32\\conhost.exe', '2016-07-27 00:10:07', '2016-07-27 00:46:23'),
	(2232, 'HL-PC', 5, 1, 9428, 'ConsoleApplication1.vshost.exe', 'unknown', 'C:\\Users\\huanle0610.HL-PC\\documents\\visual studio 2015\\Projects\\ConsoleApplication1\\ConsoleApplication1\\bin\\Debug\\ConsoleApplication1.vshost.exe', '2016-07-27 00:26:01', '2016-07-27 00:46:23'),
	(2233, 'HL-PC', 5, 1, 12524, 'MSBuild.exe', 'unknown', 'C:\\Program Files (x86)\\MSBuild\\14.0\\bin\\MSBuild.exe', '2016-07-27 00:41:11', '2016-07-27 00:46:23'),
	(2234, 'HL-PC', 5, 1, 5920, 'conhost.exe', 'unknown', 'C:\\WINDOWS\\system32\\conhost.exe', '2016-07-27 00:41:11', '2016-07-27 00:46:23'),
	(2235, 'HL-PC', 5, 1, 13456, 'ScriptedSandbox64.exe', 'unknown', 'D:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\Common7\\IDE\\PrivateAssemblies\\ScriptedSandbox64.exe', '2016-07-27 00:41:18', '2016-07-27 00:46:23'),
	(2236, 'HL-PC', 5, 1, 7452, 'dfsvc.exe', 'unknown', 'C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\dfsvc.exe', '2016-07-27 00:41:39', '2016-07-27 00:46:23'),
	(2237, 'HL-PC', 5, 1, 9064, 'vmplayer.exe', 'unknown', 'D:\\Program Files (x86)\\VMware\\VMware Player\\vmplayer.exe', '2016-07-27 00:42:05', '2016-07-27 00:46:23'),
	(2238, 'HL-PC', 5, 1, 4512, 'vmware-unity-helper.exe', 'unknown', 'D:\\Program Files (x86)\\VMware\\VMware Player\\vmware-unity-helper.exe', '2016-07-27 00:42:39', '2016-07-27 00:46:23'),
	(2239, 'HL-PC', 5, 1, 6420, 'vmware-vmx.exe', 'unknown', 'D:\\Program Files (x86)\\VMware\\VMware Player\\x64\\vmware-vmx.exe', '2016-07-27 00:42:39', '2016-07-27 00:46:23');
/*!40000 ALTER TABLE `processes` ENABLE KEYS */;

-- Dumping structure for table test.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hostname` varchar(50) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `session_id` int(11) NOT NULL DEFAULT '0',
  `account` varchar(65) NOT NULL DEFAULT '0',
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- Dumping data for table test.sessions: ~1 rows (approximately)
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`sid`, `hostname`, `event_id`, `session_id`, `account`, `update_at`) VALUES
	(32, 'HL-PC', 5, 1, 'HL-PC\\huanle0610', '2016-07-27 00:46:23'),
	(33, 'HL-PC', 5, 2, 'HL-PC\\amtf', '2016-07-27 00:46:23');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
