-- ----------------------------
-- Create database structure for
-- the purposes of TestSqlDataHelper.cs
-- ----------------------------
CREATE DATABASE rsqlserverdb;
GO
USE rsqlserverdb;
GO

-- ----------------------------
-- Table structure for CS_BIG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CS_BIG]') AND type IN ('U'))
	DROP TABLE [dbo].[CS_BIG]
GO

CREATE TABLE [dbo].[CS_BIG] (
  [value]	int  					NULL,
  [key]		nvarchar(255) NULL
)
GO

ALTER TABLE [dbo].[CS_BIG] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
-- Table structure for CS_DATE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CS_DATE]') AND type IN ('U'))
	DROP TABLE [dbo].[CS_DATE]
GO

CREATE TABLE [dbo].[CS_DATE] (
  [cdate] nvarchar(255) NULL
)
GO

ALTER TABLE [dbo].[CS_DATE] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
-- Table structure for CS_EXOTIC
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CS_EXOTIC]') AND type IN ('U'))
	DROP TABLE [dbo].[CS_EXOTIC]
GO

CREATE TABLE [dbo].[CS_EXOTIC] (
  [col_varchar]	nvarchar(100) NULL,
  [col_int]			int  					NULL,
  [col_bigint]	bigint				NULL,
  [col_bit]			bit						NULL,
  [col_numeric]	numeric(10,6) NULL,
  [col_decimal]	decimal(10,6) NULL
)
GO

ALTER TABLE [dbo].[CS_EXOTIC] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
-- Table structure for CS_MTCARS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CS_MTCARS]') AND type IN ('U'))
	DROP TABLE [dbo].[CS_MTCARS]
GO

CREATE TABLE [dbo].[CS_MTCARS] (
  [mpg]		decimal(18,1) NULL,
  [cyl]		int						NULL,
  [disp]	decimal(18,1) NULL,
  [hp]		int						NULL,
  [drat]	decimal(18,2)	NULL,
  [wt]		decimal(18,3)	NULL,
  [qsec]	decimal(18,2)	NULL,
  [vs]		int						NULL,
  [am]		int						NULL,
  [gear]	int						NULL,
  [carb]	int						NULL
)
GO

ALTER TABLE [dbo].[CS_MTCARS] SET (LOCK_ESCALATION = TABLE)
GO

-- ----------------------------
-- Records of [CS_DATE]
-- ----------------------------
INSERT INTO [dbo].[CS_DATE] VALUES
	(N'2017-01-01T00:00:00Z'),
	(N'2017-01-01T14:53:09Z'),
	(N'2017-01-02T05:46:19Z'),
	(N'2017-01-02T20:39:29Z'),
	(N'2017-01-03T11:32:39Z'),
	(N'2017-01-04T02:25:49Z'),
	(N'2017-01-04T17:18:59Z'),
	(N'2017-01-05T08:12:09Z'),
	(N'2017-01-05T23:05:19Z'),
	(N'2017-01-06T13:58:28Z'),
	(N'2017-01-07T04:51:38Z'),
	(N'2017-01-07T19:44:48Z'),
	(N'2017-01-08T10:37:58Z'),
	(N'2017-01-09T01:31:08Z'),
	(N'2017-01-09T16:24:18Z'),
	(N'2017-01-10T07:17:28Z'),
	(N'2017-01-10T22:10:38Z'),
	(N'2017-01-11T13:03:48Z'),
	(N'2017-01-12T03:56:57Z'),
	(N'2017-01-12T18:50:07Z'),
	(N'2017-01-13T09:43:17Z'),
	(N'2017-01-14T00:36:27Z'),
	(N'2017-01-14T15:29:37Z'),
	(N'2017-01-15T06:22:47Z'),
	(N'2017-01-15T21:15:57Z'),
	(N'2017-01-16T12:09:07Z'),
	(N'2017-01-17T03:02:17Z'),
	(N'2017-01-17T17:55:26Z'),
	(N'2017-01-18T08:48:36Z'),
	(N'2017-01-18T23:41:46Z'),
	(N'2017-01-19T14:34:56Z'),
	(N'2017-01-20T05:28:06Z'),
	(N'2017-01-20T20:21:16Z'),
	(N'2017-01-21T11:14:26Z'),
	(N'2017-01-22T02:07:36Z'),
	(N'2017-01-22T17:00:45Z'),
	(N'2017-01-23T07:53:55Z'),
	(N'2017-01-23T22:47:05Z'),
	(N'2017-01-24T13:40:15Z'),
	(N'2017-01-25T04:33:25Z'),
	(N'2017-01-25T19:26:35Z'),
	(N'2017-01-26T10:19:45Z'),
	(N'2017-01-27T01:12:55Z'),
	(N'2017-01-27T16:06:05Z'),
	(N'2017-01-28T06:59:14Z'),
	(N'2017-01-28T21:52:24Z'),
	(N'2017-01-29T12:45:34Z'),
	(N'2017-01-30T03:38:44Z'),
	(N'2017-01-30T18:31:54Z'),
	(N'2017-01-31T09:25:04Z'),
	(N'2017-02-01T00:18:14Z'),
	(N'2017-02-01T15:11:24Z'),
	(N'2017-02-02T06:04:34Z'),
	(N'2017-02-02T20:57:43Z'),
	(N'2017-02-03T11:50:53Z'),
	(N'2017-02-04T02:44:03Z'),
	(N'2017-02-04T17:37:13Z'),
	(N'2017-02-05T08:30:23Z'),
	(N'2017-02-05T23:23:33Z'),
	(N'2017-02-06T14:16:43Z'),
	(N'2017-02-07T05:09:53Z'),
	(N'2017-02-07T20:03:02Z'),
	(N'2017-02-08T10:56:12Z'),
	(N'2017-02-09T01:49:22Z'),
	(N'2017-02-09T16:42:32Z'),
	(N'2017-02-10T07:35:42Z'),
	(N'2017-02-10T22:28:52Z'),
	(N'2017-02-11T13:22:02Z'),
	(N'2017-02-12T04:15:12Z'),
	(N'2017-02-12T19:08:22Z'),
	(N'2017-02-13T10:01:31Z'),
	(N'2017-02-14T00:54:41Z'),
	(N'2017-02-14T15:47:51Z'),
	(N'2017-02-15T06:41:01Z'),
	(N'2017-02-15T21:34:11Z'),
	(N'2017-02-16T12:27:21Z'),
	(N'2017-02-17T03:20:31Z'),
	(N'2017-02-17T18:13:41Z'),
	(N'2017-02-18T09:06:51Z'),
	(N'2017-02-19T00:00:00Z'),
	(N'2017-02-19T14:53:10Z'),
	(N'2017-02-20T05:46:20Z'),
	(N'2017-02-20T20:39:30Z'),
	(N'2017-02-21T11:32:40Z'),
	(N'2017-02-22T02:25:50Z'),
	(N'2017-02-22T17:19:00Z'),
	(N'2017-02-23T08:12:10Z'),
	(N'2017-02-23T23:05:19Z'),
	(N'2017-02-24T13:58:29Z'),
	(N'2017-02-25T04:51:39Z'),
	(N'2017-02-25T19:44:49Z'),
	(N'2017-02-26T10:37:59Z'),
	(N'2017-02-27T01:31:09Z'),
	(N'2017-02-27T16:24:19Z'),
	(N'2017-02-28T07:17:29Z'),
	(N'2017-02-28T22:10:39Z'),
	(N'2017-03-01T13:03:48Z'),
	(N'2017-03-02T03:56:58Z'),
	(N'2017-03-02T18:50:08Z'),
	(N'2017-03-03T09:43:18Z')
GO

-- ----------------------------
-- Records of [CS_EXOTIC]
-- ----------------------------
INSERT INTO [dbo].[CS_EXOTIC] VALUES
  (N'Utah', N'576', N'1040422319966168', N'1', N'5.740238', N'45.352324'),
	(N'Virginia', N'514', N'863508665932945', NULL, N'0.804227', N'51.261316'),
	(N'Maine', N'300', N'657983413678237', N'1', N'7.367869', N'20.981283'),
	(N'California', N'737', N'79605235884840', N'1', N'7.488238', N'65.711113'),
	(N'Florida', N'214', N'102974638053022', N'0', N'5.276618', N'49.652377'),
	(N'New Mexico', N'999', N'763952787550411', N'1', N'6.347286', N'98.187656'),
	(N'Montana', N'184', N'996602682905021', NULL, N'5.672371', N'28.317173'),
	(N'New Hampshire', N'75', N'289116831174531', NULL, N'1.375467', N'32.773796'),
	(N'Montana', N'603', N'226355531524095', N'1', N'0.206504', N'16.080238'),
	(N'Wyoming', N'713', N'844246903744689', NULL, N'1.856756', N'21.354147'),
	(N'Louisiana', N'242', N'1087537145449401', N'1', N'9.742332', N'78.497139'),
	(N'Illinois', N'86', N'228431535437864', N'1', N'9.533221', N'89.949775'),
	(N'Maryland', N'542', N'534208844488374', N'1', N'4.449566', N'32.713011'),
	(N'Pennsylvania', N'267', N'322914577977063', N'0', N'9.541348', N'10.027478'),
	(N'Florida', N'775', N'555509755103849', NULL, N'2.867655', N'15.365524'),
	(N'Tennessee', N'482', N'951940052057523', NULL, N'5.102333', N'79.894753'),
	(N'Mississippi', N'725', N'526612424006581', N'0', N'8.351639', N'39.874928'),
	(N'Louisiana', N'426', N'256391502858805', N'0', N'9.638287', N'2.882451'),
	(N'Rhode Island', N'89', N'665977025550029', N'1', N'5.408568', N'13.630778'),
	(N'South Dakota', N'877', N'223636030144133', N'1', N'9.728685', N'28.401720'),
	(N'Minnesota', N'489', N'393884700308663', N'1', N'5.184263', N'0.922502'),
	(N'Rhode Island', N'116', N'809801102354586', NULL, N'2.519701', N'17.845156'),
	(N'Alabama', N'368', N'36975848101666', NULL, N'8.283764', N'29.088656'),
	(N'New Mexico', N'761', N'975666558560619', N'0', N'6.513526', N'83.556715'),
	(N'Kentucky', N'551', N'254662511041749', N'1', N'7.053028', N'96.214242'),
	(N'Nevada', N'907', N'481523172334959', N'0', N'2.149908', N'99.661604'),
	(N'West Virginia', N'406', N'826349293887338', N'1', N'2.121468', N'84.359757'),
	(N'Oregon', N'782', N'383089866103184', N'0', N'8.792089', N'57.362583'),
	(N'Kentucky', N'850', N'597418742541768', N'0', N'6.467831', N'83.639447'),
	(N'Ohio', N'859', N'476224848798156', N'0', N'3.777522', N'94.274086'),
	(N'Kansas', N'177', N'618119660113321', NULL, N'0.537073', N'81.365734'),
	(N'Alabama', N'480', N'766694723008655', N'0', N'6.088761', N'67.206033'),
	(N'New York', N'386', N'737099754163576', N'0', N'6.182096', N'93.763742'),
	(N'Nevada', N'244', N'921832524684993', N'1', N'9.582929', N'30.342262'),
	(N'Alabama', N'865', N'647212418120324', NULL, N'7.375068', N'43.208669'),
	(N'Indiana', N'640', N'668115055398736', N'1', N'2.489768', N'2.136369'),
	(N'Ohio', N'978', N'482942011804563', NULL, N'6.934648', N'4.288894'),
	(N'Utah', N'286', N'1118708113326247', NULL, N'7.092621', N'0.795106'),
	(N'Colorado', N'125', N'239744331624729', NULL, N'6.588813', N'78.752308'),
	(N'Oklahoma', N'890', N'4466486203153', N'1', N'3.879608', N'62.912128'),
	(N'Wisconsin', N'737', N'98467093313622', N'0', N'9.681096', N'76.138531'),
	(N'New Jersey', N'402', N'1115356443170186', N'0', N'9.880235', N'9.831263'),
	(N'New York', N'122', N'65145224023590', NULL, N'3.523463', N'47.280617'),
	(N'Nevada', N'161', N'1028716926570715', N'1', N'1.892983', N'83.001698'),
	(N'Florida', N'852', N'821947397165997', NULL, N'2.170999', N'59.824323'),
	(N'Iowa', N'797', N'1043944385143891', NULL, N'0.052295', N'95.696012'),
	(N'Connecticut', N'634', N'828311612099222', NULL, N'7.699139', N'15.082499'),
	(N'Michigan', N'996', N'692598896545960', N'1', N'2.230148', N'82.284110'),
	(N'Washington', N'328', N'340263233490463', NULL, N'0.512088', N'33.307521'),
	(N'Maryland', N'78', N'350143250522664', N'1', N'2.503217', N'15.654320'),
	(N'Florida', N'905', N'1063383841503096', N'0', N'3.438764', N'79.605267'),
	(N'Montana', N'65', N'1054948972424948', NULL, N'9.385435', N'60.572533'),
	(N'Colorado', N'861', N'101458753532292', N'0', N'8.461140', N'77.187894'),
	(N'Vermont', N'853', N'293084838306238', N'0', N'8.663382', N'42.850323'),
	(N'Kentucky', N'15', N'1028297384299408', N'1', N'2.251733', N'92.761700'),
	(N'Rhode Island', N'837', N'889786649558040', N'0', N'7.983315', N'97.715033'),
	(N'Missouri', N'443', N'973017816343045', NULL, N'5.242719', N'40.281725'),
	(N'Maine', N'722', N'904478680586972', N'1', N'0.044733', N'79.781785'),
	(N'Ohio', N'774', N'1059003133767711', N'0', N'4.001221', N'13.154652'),
	(N'Illinois', N'1000', N'408508465909176', N'0', N'0.968483', N'80.076757'),
	(N'Georgia', N'756', N'729795962743873', NULL, N'7.713511', N'27.886789'),
	(N'Alaska', N'366', N'598572016489556', N'1', N'1.310951', N'41.003372'),
	(N'Arizona', N'877', N'752815711805345', N'1', N'3.076544', N'10.536333'),
	(N'Idaho', N'369', N'865177532818355', N'1', N'5.414114', N'3.535011'),
	(N'Massachusetts', N'590', N'550863116709607', N'1', N'2.399977', N'44.958202'),
	(N'Oklahoma', N'912', N'637759837417494', NULL, N'7.435135', N'36.183453'),
	(N'South Dakota', N'638', N'842380487881197', NULL, N'3.607925', N'7.961522'),
	(N'Pennsylvania', N'519', N'324527901997343', N'1', N'1.984942', N'17.250572'),
	(N'Washington', N'117', N'408297970262121', NULL, N'5.953507', N'22.045555'),
	(N'Arkansas', N'214', N'344543836645436', NULL, N'7.202114', N'50.404249'),
	(N'Georgia', N'639', N'1030245231066475', NULL, N'6.411063', N'67.367999'),
	(N'Nebraska', N'926', N'451411897758692', N'0', N'0.190323', N'36.809256'),
	(N'South Dakota', N'728', N'560736466750628', NULL, N'8.107699', N'98.589766'),
	(N'Montana', N'670', N'770930781043968', NULL, N'4.112608', N'72.469840'),
	(N'Pennsylvania', N'454', N'788834791972128', N'0', N'2.674260', N'72.913375'),
	(N'Connecticut', N'626', N'1067308078619975', N'0', N'8.949051', N'25.203585'),
	(N'Arizona', N'128', N'750380484587695', N'1', N'2.164863', N'50.791474'),
	(N'Tennessee', N'336', N'592493104143663', NULL, N'5.056067', N'75.964816'),
	(N'New Mexico', N'923', N'940746536970575', N'0', N'8.753246', N'68.907403'),
	(N'Missouri', N'91', N'1010932116757719', N'1', N'8.021768', N'65.294472'),
	(N'Wyoming', N'626', N'762998281620993', N'0', N'2.666865', N'48.547342'),
	(N'New Hampshire', N'200', N'513725188056515', N'1', N'9.205457', N'50.259080'),
	(N'Idaho', N'563', N'234944261282886', N'1', N'2.571676', N'95.671244'),
	(N'Louisiana', N'136', N'1062324544139294', NULL, N'2.901048', N'44.612417'),
	(N'Oklahoma', N'502', N'508221093262088', N'0', N'2.341677', N'14.123576'),
	(N'Iowa', N'521', N'207563597220590', N'0', N'3.340830', N'16.073611'),
	(N'Missouri', N'334', N'249253930985972', N'1', N'2.966679', N'94.022198'),
	(N'Idaho', N'373', N'32408361562888', NULL, N'9.672117', N'85.177857'),
	(N'New Jersey', N'822', N'1055598525834250', N'0', N'8.713785', N'32.583388'),
	(N'Colorado', N'76', N'242996748170513', NULL, N'6.895828', N'43.641239'),
	(N'Louisiana', N'122', N'161549057017406', N'1', N'0.516669', N'8.879165'),
	(N'Virginia', N'49', N'821099798808939', NULL, N'3.796899', N'64.001718'),
	(N'Idaho', N'906', N'244807993768671', N'0', N'9.510789', N'72.394906'),
	(N'South Dakota', N'799', N'99883905638808', NULL, N'7.943288', N'23.948743'),
	(N'North Dakota', N'49', N'843254467934380', NULL, N'2.111595', N'70.199770'),
	(N'Arizona', N'638', N'1045930285696252', NULL, N'2.421815', N'62.890613'),
	(N'Nebraska', N'568', N'446195605605125', N'1', N'6.190431', N'16.404974'),
	(N'Alabama', N'889', N'449645003703458', N'0', N'3.725886', N'17.973888'),
	(N'Virginia', N'684', N'698547646528746', N'0', N'9.566822', N'38.639014'),
	(N'Washington', N'869', N'875474747656161', N'0', N'6.528122', N'93.045587')
GO

-- ----------------------------
-- Records of [CS_MTCARS]
-- ----------------------------
INSERT INTO [dbo].[CS_MTCARS] VALUES
  (N'21.0', N'6', N'160.0', N'110', N'3.90', N'2.620', N'16.46', N'0', N'1', N'4', N'4'),
	(N'21.0', N'6', N'160.0', N'110', N'3.90', N'2.875', N'17.02', N'0', N'1', N'4', N'4'),
	(N'22.8', N'4', N'108.0', N'93', N'3.85', N'2.320', N'18.61', N'1', N'1', N'4', N'1'),
	(N'21.4', N'6', N'258.0', N'110', N'3.08', N'3.215', N'19.44', N'1', N'0', N'3', N'1'),
	(N'18.7', N'8', N'360.0', N'175', N'3.15', N'3.440', N'17.02', N'0', N'0', N'3', N'2'),
	(N'18.1', N'6', N'225.0', N'105', N'2.76', N'3.460', N'20.22', N'1', N'0', N'3', N'1'),
	(N'14.3', N'8', N'360.0', N'245', N'3.21', N'3.570', N'15.84', N'0', N'0', N'3', N'4'),
	(N'24.4', N'4', N'146.7', N'62', N'3.69', N'3.190', N'20.00', N'1', N'0', N'4', N'2'),
	(N'22.8', N'4', N'140.8', N'95', N'3.92', N'3.150', N'22.90', N'1', N'0', N'4', N'2'),
	(N'19.2', N'6', N'167.6', N'123', N'3.92', N'3.440', N'18.30', N'1', N'0', N'4', N'4'),
	(N'17.8', N'6', N'167.6', N'123', N'3.92', N'3.440', N'18.90', N'1', N'0', N'4', N'4'),
	(N'16.4', N'8', N'275.8', N'180', N'3.07', N'4.070', N'17.40', N'0', N'0', N'3', N'3'),
	(N'17.3', N'8', N'275.8', N'180', N'3.07', N'3.730', N'17.60', N'0', N'0', N'3', N'3'),
	(N'15.2', N'8', N'275.8', N'180', N'3.07', N'3.780', N'18.00', N'0', N'0', N'3', N'3'),
	(N'10.4', N'8', N'472.0', N'205', N'2.93', N'5.250', N'17.98', N'0', N'0', N'3', N'4'),
	(N'10.4', N'8', N'460.0', N'215', N'3.00', N'5.424', N'17.82', N'0', N'0', N'3', N'4'),
	(N'14.7', N'8', N'440.0', N'230', N'3.23', N'5.345', N'17.42', N'0', N'0', N'3', N'4'),
	(N'32.4', N'4', N'78.7', N'66', N'4.08', N'2.200', N'19.47', N'1', N'1', N'4', N'1'),
	(N'30.4', N'4', N'75.7', N'52', N'4.93', N'1.615', N'18.52', N'1', N'1', N'4', N'2'),
	(N'33.9', N'4', N'71.1', N'65', N'4.22', N'1.835', N'19.90', N'1', N'1', N'4', N'1'),
	(N'21.5', N'4', N'120.1', N'97', N'3.70', N'2.465', N'20.01', N'1', N'0', N'3', N'1'),
	(N'15.5', N'8', N'318.0', N'150', N'2.76', N'3.520', N'16.87', N'0', N'0', N'3', N'2'),
	(N'15.2', N'8', N'304.0', N'150', N'3.15', N'3.435', N'17.30', N'0', N'0', N'3', N'2'),
	(N'13.3', N'8', N'350.0', N'245', N'3.73', N'3.840', N'15.41', N'0', N'0', N'3', N'4'),
	(N'19.2', N'8', N'400.0', N'175', N'3.08', N'3.845', N'17.05', N'0', N'0', N'3', N'2'),
	(N'27.3', N'4', N'79.0', N'66', N'4.08', N'1.935', N'18.90', N'1', N'1', N'4', N'1'),
	(N'26.0', N'4', N'120.3', N'91', N'4.43', N'2.140', N'16.70', N'0', N'1', N'5', N'2'),
	(N'30.4', N'4', N'95.1', N'113', N'3.77', N'1.513', N'16.90', N'1', N'1', N'5', N'2'),
	(N'15.8', N'8', N'351.0', N'264', N'4.22', N'3.170', N'14.50', N'0', N'1', N'5', N'4'),
	(N'19.7', N'6', N'145.0', N'175', N'3.62', N'2.770', N'15.50', N'0', N'1', N'5', N'6'),
	(N'15.0', N'8', N'301.0', N'335', N'3.54', N'3.570', N'14.60', N'0', N'1', N'5', N'8'),
	(N'21.4', N'4', N'121.0', N'109', N'4.11', N'2.780', N'18.60', N'1', N'1', N'4', N'2')
GO
