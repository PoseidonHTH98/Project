USE [master]
GO
/****** Object:  Database [QLDIENDANCONGNGHE]    Script Date: 5/26/2019 4:48:09 PM ******/
CREATE DATABASE [QLDIENDANCONGNGHE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLDIENDANCONGNGHE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLDIENDANCONGNGHE.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLDIENDANCONGNGHE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLDIENDANCONGNGHE_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLDIENDANCONGNGHE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET  MULTI_USER 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLDIENDANCONGNGHE]
GO
/****** Object:  User [Simon]    Script Date: 5/26/2019 4:48:09 PM ******/
CREATE USER [Simon] FOR LOGIN [Simon] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Ad]    Script Date: 5/26/2019 4:48:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ad](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BaiGui]    Script Date: 5/26/2019 4:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaiGui](
	[MaBaiGui] [int] IDENTITY(1,1) NOT NULL,
	[MaChuDe] [nvarchar](50) NOT NULL,
	[MaCongDong] [nvarchar](50) NOT NULL,
	[MaLinhVuc] [nvarchar](50) NOT NULL,
	[NguoiGui] [nvarchar](50) NOT NULL,
	[SoDienThoai] [varchar](10) NULL,
	[Email] [varchar](50) NOT NULL,
	[NgayGuiBai] [datetime] NULL,
	[TenBai] [nvarchar] (200) NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaiGui] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 5/26/2019 4:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaChuDe] [nvarchar](50) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CongDong]    Script Date: 5/26/2019 4:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongDong](
	[MaCongDong] [nvarchar](50) NOT NULL,
	[TenCongDong] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinhVuc]    Script Date: 5/26/2019 4:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinhVuc](
	[MaLinhVuc] [nvarchar](50) NOT NULL,
	[TenLinhVuc] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLinhVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiSuDung]    Script Date: 5/26/2019 4:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiSuDung](
	[MaNguoiSuDung] [int] IDENTITY(1,1) NOT NULL,
	[MaBaiGui] [int] NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[NgaySinh] [datetime],
	[SoDienThoai] [varchar](10) NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK__NguoiSuD__813F9047FC37D9FD] PRIMARY KEY CLUSTERED 
(
	[MaNguoiSuDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (N'CDE01', N'Smartphone')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (N'CDE02', N'Smartwatch')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (N'CDE03', N'Tablet')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (N'CDE04', N'Laptop')
INSERT [dbo].[CongDong] ([MaCongDong], [TenCongDong]) VALUES (N'CD01', N'iOS')
INSERT [dbo].[CongDong] ([MaCongDong], [TenCongDong]) VALUES (N'CD02', N'Android')
INSERT [dbo].[CongDong] ([MaCongDong], [TenCongDong]) VALUES (N'CD03', N'Windows')
INSERT [dbo].[CongDong] ([MaCongDong], [TenCongDong]) VALUES (N'CD04', N'macOS')
INSERT [dbo].[CongDong] ([MaCongDong], [TenCongDong]) VALUES (N'CD05', N'watchOS')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc]) VALUES (N'LV01', N'Game')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc]) VALUES (N'LV02', N'Xe')
ALTER TABLE [dbo].[BaiGui]  WITH CHECK ADD  CONSTRAINT [FK_BaiGui_ChuDe] FOREIGN KEY([MaChuDe])
REFERENCES [dbo].[ChuDe] ([MaChuDe])
GO
ALTER TABLE [dbo].[BaiGui] CHECK CONSTRAINT [FK_BaiGui_ChuDe]
GO
ALTER TABLE [dbo].[BaiGui]  WITH CHECK ADD  CONSTRAINT [FK_BaiGui_CongDong] FOREIGN KEY([MaCongDong])
REFERENCES [dbo].[CongDong] ([MaCongDong])
GO
ALTER TABLE [dbo].[BaiGui] CHECK CONSTRAINT [FK_BaiGui_CongDong]
GO
ALTER TABLE [dbo].[BaiGui]  WITH CHECK ADD  CONSTRAINT [FK_BaiGui_LinhVuc] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LinhVuc] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[BaiGui] CHECK CONSTRAINT [FK_BaiGui_LinhVuc]
GO
ALTER TABLE [dbo].[NguoiSuDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiSuDung_BaiGui] FOREIGN KEY([MaBaiGui])
REFERENCES [dbo].[BaiGui] ([MaBaiGui])
GO
ALTER TABLE [dbo].[NguoiSuDung] CHECK CONSTRAINT [FK_NguoiSuDung_BaiGui]
GO
USE [master]
GO
ALTER DATABASE [QLDIENDANCONGNGHE] SET  READ_WRITE 
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinhAnh] [nvarchar](50) NOT NULL,
	[HinhAnh] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES ('BG01', 'CDE01', 'CD01', N'Phạm Vũ Ngọc Hội', '0934724484', 'ngochoi1998@gmail.com', '11/06/2019', N'Apple giới thiệu iPhone XS và iPhone XS Max: Hỗ trợ 2 SIM, chip A12 Bionic, chống nước IP68, bộ nhớ 512GB, màu vàng mới, giá từ 999 USD', N'Vừa qua, Apple đã ra mắt thế hệ iPhone mới với nhiều nâng cấp đáng giá, đặc biệt là kích thước lớn hơn cho trải nghiệm tốt hơn nhiều so với thế hệ trước. Hai thiết bị mới này có tên gọi khá giống với những gì đã rò rỉ trước đó là iPhone XS và XS Max và chúng cũng sở hữu thiết kế hoàn toàn giống với chiếc iPhone X nhưng có kích thước lớn hơn và đặc biệt là đã được bổ sung thêm màu vàng. Đặc biệt, iPhone XS Max không chỉ có kích thước lớn nhất từ trước đến giờ của Apple mà là điện thoại có màn hình lớn nhất từ trước tới nay. Giống như với tên gọi của nó, XS. Cả 2 đều sở hữu những nâng cấp rất rất khủng. Màn hình giờ đây có kích thước lớn với diện tích chiếm cũng lớn hơn. Loa của máy cũng có chất lượng âm thanh tốt cùng công suất lớn, Face ID giờ đây cũng đã nhận diện nhanh hơn nhiều lần. Bên cạnh đó, cả 2 đều được trang bị vi xử lý mới là Apple A12 Bionic dựa trên tiến trình 7nm, và đây chắc chắn sẽ là con chip mạnh nhất thế giới. CEO của Apple – Tim Cook cũng đã nói rằng: “iPhone XS là chiếc iPhone tiên tiến nhất từ trước tới nay của chúng tôi”.')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES ('BG02', 'CDE01', 'CD02', N'Hoàng Thành Hiếu', '0938842638', 'thanhhieupa98@gmail.com', '20/08/2016', N'Google ra mắt Pixel 3 và Pixel 3 XL: Sạc không dây, màn hình lớn hơn, camera đẹp hơn', N'Đêm qua (9/10), Google đã chính thức ra mắt bộ đôi Pixel 3 và Pixel 3 XL trong khuôn khổ sự kiện diễn ra tại New York, Mỹ. Cả hai chiếc điện thoại này đều được nâng cấp về cấu hình, phần mềm và không dùng camera kép. Về thiết kế, bộ đôi Pixel 3 và Pixel 3 XL đã có một số thay đổi lớn so với thế hệ tiền nhiệm. Cả hai thiết bị đều có màn hình lớn hơn, trong khi Pixel 3 đã chuyển sang sử dụng màn hình 18:9, Pixel 3 XL sở hữu màn hình lớn hơn 0.3 inch và đi theo xu hướng “màn hình tai thỏ” với phần notch được làm khá sâu. Ngoài ra, máy còn có loa kép ở mặt trước và camera selfie kép ở phía trên. Ở phía sau, Pixel 3 và Pixel 3 XL vẫn đi kèm với thiết kế hai tông màu, khung kim loại nguyên khối và mặt lưng kính. Với việc chuyển sang mặt lưng kính, Google cũng đã tích hợp sạc không dây cho cả hai thiết bị. Ngoài ra, chúng đều có thêm tùy chọn màu hồng hoàn toàn mới với tên gọi là “Not Pink”, bên cạnh hai màu Đen và Trắng từng thấy trên thế hệ tiền nhiệm trước đó.')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES ('BG03', 'CDE04', 'CD03', N'Trương Tấn Tài', '0936658638', 'tantaibd98@gmail.com', '13/07/2014', N'Huawei phải ngừng sản xuất và phân phối laptop sau khi bị Intel và Microsoft dừng hợp tác', N'Theo nguồn tin của DigiTimes, Huawei đã dừng việc phát triển, sản xuất và phân phối những mẫu laptop của họ. Tập đoàn Trung Quốc này đã thông báo cho các đối tác trong chuỗi cung ứng về việc họ ngừng tiếp nhận những đơn hàng linh kiện máy tính xách tay, và cùng lúc ngừng tất cả những dự án laptop đang phát triển. Tháng trước, phía chính quyền Mỹ yêu cầu các tập đoàn công nghệ Mỹ ngừng hợp tác với Huawei. Hệ quả là lần lượt, Google, Intel, Qualcomm và Microsoft tuyên bố ngừng hỗ trợ Huawei về phần mềm, phần cứng và dịch vụ. Microsoft sẽ không cung cấp giấy phép sử dụng hệ điều hành Windows của Huawei nữa, trong khi Intel cũng ngừng cung cấp chip xử lýcho tập đoàn Trung Quốc. Với việc không có cả CPU lẫn hệ điều hành, mảng laptop của Huawei gần như điêu đứng. Dĩ nhiên Huawei vẫn đang phát triển hệ điều hành cũng như chip xử lý riêng để không phụ thuộc vào Windows, Android hay các tập đoàn khác của Mỹ, nhưng nó chưa sẵn sàng để sử dụng. Bản thân mảng laptop của Huawei cũng không có quy mô lớn như mảng mobile, nên việc cho ngừng hoạt động toàn bộ mảng này là định hướng hợp lý trước lúc Huawei đang phải đối mặt với rất nhiều khó khăn.')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES ('BG04', 'CDE02', 'CD05', N'Trần Văn Quang', '0906530363', 'vanquangdn98@gmail.com', '21/12/2012', N'Mục tiêu của Apple: Đứng đầu thị trường Smart Watch', N'Tất cả Smart Watch hiện có trên thị trường liệu có phải là đối thủ đáng gờm của Apple Watch. Với hàng loạt các tính năng hiện đại, đồng hồ thông minh từ Apple luôn mang tới cho người dùng sự tiện lợi vượt trội. Khi mà cơn sốt và iPhone 8 và iPhone X tạm qua đi, cũng là lúc người ta bắt đầu nhìn đến một sản phẩm nổi bật không kém: đó là Apple Watch – mẫu đồng hồ smartwatch hàng đầu được cập nhật phiên bản mới hàng năm, và năm nay, nó đã được tích hợp thêm nhiều tính năng vô cùng quan trọng. Trong khi thị trường Smartphone đang là miếng mồi béo bở được nhiều nhà sản xuất thi nhau giằng xé, thì thị trường smart watch cũng bắt đầu có dấu hiệu của sự can thiệp sâu rộng của nhiều bên, nhưng cái tên nổi nhất vẫn là Apple Watch. Theo số liệu thống kê của IDC thì Apple đã bán được 4.7 triệu chiếc đồng hồ thông minh trong quý II-2018, đưa thị phần của hãng này lên 17%, trong khi đó, Xiaomi cũng bám sít sao với tổng số 4.2 triệu chiếc đồng hồ thông minh bán ra, chiếm 15% thị trường smart watch toàn thế giới. Trong khi đó, một số hãng khác lại cho thấy sự sụt giảm khá nghiêm trọng, đơn cử như Fitbit, cùng kỳ năm ngoái họ bán được tới 3.4 triệu chiếc đồng hồ thông minh nhưng năm nay, con số chỉ dừng lại ở 2.7 triệu chiếc. Và Huawei đã giảm gần 2 triệu chiếc so với số đồng hồ thông minh bán ra vào năm ngoái.')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES ('BG05', 'CDE03', 'CD01', N'Lăng Hoài Thương', '0819521414', 'hoaithuongbl94@gmail.com', '01/06/2010', N'Apple bất ngờ ra mắt iPad Air 10,5 inch và iPad mini 5 mới toanh, mạnh ngang ngửa iPad Pro', N'Chẳng cần kèn trống om sòm, Apple vẫn khiến fan hâm mộ sốt sắng với động thái đột ngột của mình trong tối nay. Hôm nay, Táo khuyết vừa lặng lẽ tung ra hai mẫu iPad mới trên Apple.com bao gồm một mẫu iPad Air mới toanh với màn hình 10,5 inch và iPad mini thế hệ thứ 5. Cả hai đều sở hữu con chip A12 với hiệu năng cực tốt, màn hình tích hợp công nghệ True Tone và hỗ trợ cả bút cảm ứng Apple Pencil. iPad mini có giá khởi điểm là 399 USD (tương đương 9,1 triệu đồng) còn iPad Air mới có giá khởi điểm là 499 USD (tương đương 11,5 triệu đồng). Như vậy là Apple không còn giữ con chip mạnh nhất dành riêng cho sản phẩm iPad Pro cao cấp nhất nữa. Vi xử lý A12 mạnh mẽ ấy giờ đây đã có mặt ở iPad Air mới và iPad mini. Mặc dù giữ nguyên thiết kế của những đời iPad trước nhưng các mẫu máy tính bảng mới nhà Apple được nâng cấp rất nhiều về mặt cấu hình phần cứng.')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES ('BG06', 'CDE04', 'CD04', N'Lâm Tấn', '0906575068', 'lamtan67@gmail.com', '16/05/2017', N'Apple ra mắt macOS Mojave: Chế độ đêm, nhiều tính năng từ iOS', N'Phiên bản macOS năm nay có nhiều đổi mới tuy nhiên đa phần là các tính năng chuyển từ iOS sang. Điểm sáng duy nhất có lẽ là chế độ ban đêm nhưng như vậy vẫn chưa quá ấn tượng. Phiên bản tiếp theo của hệ điều hành macOS chính thức được ra mắt tại sự kiện WWDC với tên gọi Mojave, lấy từ tên những đồi cát bang California, Mỹ. Ở phiên bản này, Apple trang bị một số tính năng đáng giá. Trong đó nổi bật là Dark Mode và nhiều ứng dụng iOS được thiết kế lại cho macOS. "Các tính năng mới của Mojave được lấy cảm hứng từ người dùng chuyên nghiệp, nhưng được thiết kế cho tất cả mọi người", Tim Cook, Giám đốc điều hành của Apple chia sẻ. Theo Apple, Mojave sẽ phát hành bản beta vào đầu mùa hè này và bản chính thức sẽ xuất hiện vào mùa thu.')

INSERT [dbo].[NguoiSuDung] ([MaNguoiSuDung], [MaBaiGui], [TenDangNhap], [MatKhau], [HoTen], [DiaChi], [GioiTinh], [NgaySinh], [SoDienThoai], [Email]) VALUES ('NSD01', 'BG01', 'ngochoi', '123', N'Phạm Vũ Ngọc Hội', N'Ở đâu đó trên quận 10', N'Nam', '12/01/1998', '0934724484', 'ngochoi1998@gmail.com')
INSERT [dbo].[NguoiSuDung] ([MaNguoiSuDung], [MaBaiGui], [TenDangNhap], [MatKhau], [HoTen], [DiaChi], [GioiTinh], [NgaySinh], [SoDienThoai], [Email]) VALUES ('NSD02', 'BG02', 'thanhhieu', '456', N'Hoàng Thành Hiếu', N'25/3A Trung Lân 2, Trung Lân, Bà Điểm, Hóc Môn, HCM', N'Nam', '10/03/1998', '0938842638', 'thanhhieupa98@gmail.com')
INSERT [dbo].[NguoiSuDung] ([MaNguoiSuDung], [MaBaiGui], [TenDangNhap], [MatKhau], [HoTen], [DiaChi], [GioiTinh], [NgaySinh], [SoDienThoai], [Email]) VALUES ('NSD03', 'BG03', 'tantai', '789', N'Trương Tấn Tài', N'Ở đâu đó trên quận 12', N'Nam', '06/04/1998', '0936658638', 'tantaibd98@gmail.com')
INSERT [dbo].[NguoiSuDung] ([MaNguoiSuDung], [MaBaiGui], [TenDangNhap], [MatKhau], [HoTen], [DiaChi], [GioiTinh], [NgaySinh], [SoDienThoai], [Email]) VALUES ('NSD04', 'BG04', 'vanquang', '135', N'Trần Văn Quang', N'Ở đâu đó trên Đồng Nai', N'Nam', '09/06/1998', '0906530363', 'vanquangdn98@gmail.com')
INSERT [dbo].[NguoiSuDung] ([MaNguoiSuDung], [MaBaiGui], [TenDangNhap], [MatKhau], [HoTen], [DiaChi], [GioiTinh], [NgaySinh], [SoDienThoai], [Email]) VALUES ('NSD05', 'BG05', 'hoaithuong', '246', N'Lăng Hoài Thương', N'Ở đâu đó trên Bạc Liêu', N'Nam', '12/01/1994', '0819521414', 'hoaithuongbl94@gmail.com')
INSERT [dbo].[NguoiSuDung] ([MaNguoiSuDung], [MaBaiGui], [TenDangNhap], [MatKhau], [HoTen], [DiaChi], [GioiTinh], [NgaySinh], [SoDienThoai], [Email]) VALUES ('NSD06', 'BG06', 'lamtan', '891', N'Lâm Tấn', N'Ở đâu đó trên Phước An', N'Nam', '18/08/1967', '0906575068', 'lamtan67@gmail.com')
