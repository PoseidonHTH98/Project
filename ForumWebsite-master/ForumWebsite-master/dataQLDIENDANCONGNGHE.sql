USE [QLDIENDANCONGNGHE]
GO
INSERT [dbo].[CongDong] ([MaCongDong], [TenCongDong]) VALUES (N'CD01', N'iOS')
INSERT [dbo].[CongDong] ([MaCongDong], [TenCongDong]) VALUES (N'CD02', N'Android')
INSERT [dbo].[CongDong] ([MaCongDong], [TenCongDong]) VALUES (N'CD03', N'Windows')
INSERT [dbo].[CongDong] ([MaCongDong], [TenCongDong]) VALUES (N'CD04', N'macOS')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (N'CDE01', N'Smartphone')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (N'CDE02', N'Smartwatch')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (N'CDE03', N'Tablet')
INSERT [dbo].[ChuDe] ([MaChuDe], [TenChuDe]) VALUES (N'CDE04', N'Laptop')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc]) VALUES (N'LV01', N'Game')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc]) VALUES (N'LV02', N'Xe')
INSERT [dbo].[LinhVuc] ([MaLinhVuc], [TenLinhVuc]) VALUES (N'LV03', N'Công Nghệ Mới')
SET IDENTITY_INSERT [dbo].[BaiGui] ON 

INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES (1, N'CDE01', N'CD01', N'LV03', N'Phạm Vũ Ngọc Hội', N'0934724484', N'ngochoi1998@gmail.com', CAST(N'2019-06-11 00:00:00.000' AS DateTime), N'Apple giới thiệu iPhone XS và iPhone XS Max: Hỗ trợ 2 SIM, chip A12 Bionic, chống nước IP68, bộ nhớ 512GB, màu vàng mới, giá từ 999 USD', N'Vừa qua, Apple đã ra mắt thế hệ iPhone mới với nhiều nâng cấp đáng giá, đặc biệt là kích thước lớn hơn cho trải nghiệm tốt hơn nhiều so với thế hệ trước. Hai thiết bị mới này có tên gọi khá giống với những gì đã rò rỉ trước đó là iPhone XS và XS Max và chúng cũng sở hữu thiết kế hoàn toàn giống với chiếc iPhone X nhưng có kích thước lớn hơn và đặc biệt là đã được bổ sung thêm màu vàng. Đặc biệt, iPhone XS Max không chỉ có kích thước lớn nhất từ trước đến giờ của Apple mà là điện thoại có màn hình lớn nhất từ trước tới nay. Giống như với tên gọi của nó, XS. Cả 2 đều sở hữu những nâng cấp rất rất khủng. Màn hình giờ đây có kích thước lớn với diện tích chiếm cũng lớn hơn. Loa của máy cũng có chất lượng âm thanh tốt cùng công suất lớn, Face ID giờ đây cũng đã nhận diện nhanh hơn nhiều lần. Bên cạnh đó, cả 2 đều được trang bị vi xử lý mới là Apple A12 Bionic dựa trên tiến trình 7nm, và đây chắc chắn sẽ là con chip mạnh nhất thế giới. CEO của Apple – Tim Cook cũng đã nói rằng: “iPhone XS là chiếc iPhone tiên tiến nhất từ trước tới nay của chúng tôi”.')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES (2, N'CDE01', N'CD02', N'LV02', N'Hoàng Thành Hiếu', N'0938842638', N'thanhhieupa98@gmail.com', CAST(N'2016-08-20 00:00:00.000' AS DateTime), N'Google ra mắt Pixel 3 và Pixel 3 XL: Sạc không dây, màn hình lớn hơn, camera đẹp hơn', N'Đêm qua (9/10), Google đã chính thức ra mắt bộ đôi Pixel 3 và Pixel 3 XL trong khuôn khổ sự kiện diễn ra tại New York, Mỹ. Cả hai chiếc điện thoại này đều được nâng cấp về cấu hình, phần mềm và không dùng camera kép. Về thiết kế, bộ đôi Pixel 3 và Pixel 3 XL đã có một số thay đổi lớn so với thế hệ tiền nhiệm. Cả hai thiết bị đều có màn hình lớn hơn, trong khi Pixel 3 đã chuyển sang sử dụng màn hình 18:9, Pixel 3 XL sở hữu màn hình lớn hơn 0.3 inch và đi theo xu hướng “màn hình tai thỏ” với phần notch được làm khá sâu. Ngoài ra, máy còn có loa kép ở mặt trước và camera selfie kép ở phía trên. Ở phía sau, Pixel 3 và Pixel 3 XL vẫn đi kèm với thiết kế hai tông màu, khung kim loại nguyên khối và mặt lưng kính. Với việc chuyển sang mặt lưng kính, Google cũng đã tích hợp sạc không dây cho cả hai thiết bị. Ngoài ra, chúng đều có thêm tùy chọn màu hồng hoàn toàn mới với tên gọi là “Not Pink”, bên cạnh hai màu Đen và Trắng từng thấy trên thế hệ tiền nhiệm trước đó.')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES (3, N'CDE04', N'CD03', N'LV01', N'Trương Tấn Tài', N'0936658638', N'tantaibd98@gmail.com', CAST(N'2014-07-13 00:00:00.000' AS DateTime), N'Huawei phải ngừng sản xuất và phân phối laptop sau khi bị Intel và Microsoft dừng hợp tác', N'Theo nguồn tin của DigiTimes, Huawei đã dừng việc phát triển, sản xuất và phân phối những mẫu laptop của họ. Tập đoàn Trung Quốc này đã thông báo cho các đối tác trong chuỗi cung ứng về việc họ ngừng tiếp nhận những đơn hàng linh kiện máy tính xách tay, và cùng lúc ngừng tất cả những dự án laptop đang phát triển. Tháng trước, phía chính quyền Mỹ yêu cầu các tập đoàn công nghệ Mỹ ngừng hợp tác với Huawei. Hệ quả là lần lượt, Google, Intel, Qualcomm và Microsoft tuyên bố ngừng hỗ trợ Huawei về phần mềm, phần cứng và dịch vụ. Microsoft sẽ không cung cấp giấy phép sử dụng hệ điều hành Windows của Huawei nữa, trong khi Intel cũng ngừng cung cấp chip xử lýcho tập đoàn Trung Quốc. Với việc không có cả CPU lẫn hệ điều hành, mảng laptop của Huawei gần như điêu đứng. Dĩ nhiên Huawei vẫn đang phát triển hệ điều hành cũng như chip xử lý riêng để không phụ thuộc vào Windows, Android hay các tập đoàn khác của Mỹ, nhưng nó chưa sẵn sàng để sử dụng. Bản thân mảng laptop của Huawei cũng không có quy mô lớn như mảng mobile, nên việc cho ngừng hoạt động toàn bộ mảng này là định hướng hợp lý trước lúc Huawei đang phải đối mặt với rất nhiều khó khăn.')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES (5, N'CDE03', N'CD01', N'LV01', N'Lăng Hoài Thương', N'0819521414', N'hoaithuongbl94@gmail.com', CAST(N'2010-06-01 00:00:00.000' AS DateTime), N'Apple bất ngờ ra mắt iPad Air 10,5 inch và iPad mini 5 mới toanh, mạnh ngang ngửa iPad Pro', N'Chẳng cần kèn trống om sòm, Apple vẫn khiến fan hâm mộ sốt sắng với động thái đột ngột của mình trong tối nay. Hôm nay, Táo khuyết vừa lặng lẽ tung ra hai mẫu iPad mới trên Apple.com bao gồm một mẫu iPad Air mới toanh với màn hình 10,5 inch và iPad mini thế hệ thứ 5. Cả hai đều sở hữu con chip A12 với hiệu năng cực tốt, màn hình tích hợp công nghệ True Tone và hỗ trợ cả bút cảm ứng Apple Pencil. iPad mini có giá khởi điểm là 399 USD (tương đương 9,1 triệu đồng) còn iPad Air mới có giá khởi điểm là 499 USD (tương đương 11,5 triệu đồng). Như vậy là Apple không còn giữ con chip mạnh nhất dành riêng cho sản phẩm iPad Pro cao cấp nhất nữa. Vi xử lý A12 mạnh mẽ ấy giờ đây đã có mặt ở iPad Air mới và iPad mini. Mặc dù giữ nguyên thiết kế của những đời iPad trước nhưng các mẫu máy tính bảng mới nhà Apple được nâng cấp rất nhiều về mặt cấu hình phần cứng.')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES (6, N'CDE04', N'CD04', N'LV01', N'Lâm Tấn', N'0906575068', N'lamtan67@gmail.com', CAST(N'2017-05-16 00:00:00.000' AS DateTime), N'Apple ra mắt macOS Mojave: Chế độ đêm, nhiều tính năng từ iOS', N'Phiên bản macOS năm nay có nhiều đổi mới tuy nhiên đa phần là các tính năng chuyển từ iOS sang. Điểm sáng duy nhất có lẽ là chế độ ban đêm nhưng như vậy vẫn chưa quá ấn tượng. Phiên bản tiếp theo của hệ điều hành macOS chính thức được ra mắt tại sự kiện WWDC với tên gọi Mojave, lấy từ tên những đồi cát bang California, Mỹ. Ở phiên bản này, Apple trang bị một số tính năng đáng giá. Trong đó nổi bật là Dark Mode và nhiều ứng dụng iOS được thiết kế lại cho macOS. "Các tính năng mới của Mojave được lấy cảm hứng từ người dùng chuyên nghiệp, nhưng được thiết kế cho tất cả mọi người", Tim Cook, Giám đốc điều hành của Apple chia sẻ. Theo Apple, Mojave sẽ phát hành bản beta vào đầu mùa hè này và bản chính thức sẽ xuất hiện vào mùa thu.')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES (11, N'CDE02', N'CD04', N'LV02', N'Trần Văn Quang', N'0906530363', N'vanquangdn98@gmail.com', CAST(N'2012-12-21 00:00:00.000' AS DateTime), N'Mục tiêu của Apple: Đứng đầu thị trường Smart Watch', N'Tất cả Smart Watch hiện có trên thị trường liệu có phải là đối thủ đáng gờm của Apple Watch. Với hàng loạt các tính năng hiện đại, đồng hồ thông minh từ Apple luôn mang tới cho người dùng sự tiện lợi vượt trội. Khi mà cơn sốt và iPhone 8 và iPhone X tạm qua đi, cũng là lúc người ta bắt đầu nhìn đến một sản phẩm nổi bật không kém: đó là Apple Watch – mẫu đồng hồ smartwatch hàng đầu được cập nhật phiên bản mới hàng năm, và năm nay, nó đã được tích hợp thêm nhiều tính năng vô cùng quan trọng. Trong khi thị trường Smartphone đang là miếng mồi béo bở được nhiều nhà sản xuất thi nhau giằng xé, thì thị trường smart watch cũng bắt đầu có dấu hiệu của sự can thiệp sâu rộng của nhiều bên, nhưng cái tên nổi nhất vẫn là Apple Watch. Theo số liệu thống kê của IDC thì Apple đã bán được 4.7 triệu chiếc đồng hồ thông minh trong quý II-2018, đưa thị phần của hãng này lên 17%, trong khi đó, Xiaomi cũng bám sít sao với tổng số 4.2 triệu chiếc đồng hồ thông minh bán ra, chiếm 15% thị trường smart watch toàn thế giới. Trong khi đó, một số hãng khác lại cho thấy sự sụt giảm khá nghiêm trọng, đơn cử như Fitbit, cùng kỳ năm ngoái họ bán được tới 3.4 triệu chiếc đồng hồ thông minh nhưng năm nay, con số chỉ dừng lại ở 2.7 triệu chiếc. Và Huawei đã giảm gần 2 triệu chiếc so với số đồng hồ thông minh bán ra vào năm ngoái.')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES (15, N'CDE01', N'CD01', N'LV01', N'32', N'32', N'32', CAST(N'2012-01-01 00:00:00.000' AS DateTime), N'12', N'12')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES (23, N'CDE02', N'CD02', N'LV03', N'321', N'321', N'3214', CAST(N'2013-02-02 00:00:00.000' AS DateTime), N'431', N'14432543')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES (27, N'CDE02', N'CD03', N'LV02', N'58u4989', N'574839', N'579834', CAST(N'2014-04-04 00:00:00.000' AS DateTime), N'4543987', N'89275934')
INSERT [dbo].[BaiGui] ([MaBaiGui], [MaChuDe], [MaCongDong], [MaLinhVuc], [NguoiGui], [SoDienThoai], [Email], [NgayGuiBai], [TenBai], [NoiDung]) VALUES (28, N'CDE03', N'CD01', N'LV03', N'580943', N'48095', N'438092', CAST(N'2015-05-05 00:00:00.000' AS DateTime), N'8902', N'584093')
SET IDENTITY_INSERT [dbo].[BaiGui] OFF
SET IDENTITY_INSERT [dbo].[NguoiSuDung] ON 

INSERT [dbo].[NguoiSuDung] ([MaNguoiSuDung], [MaBaiGui], [TenDangNhap], [MatKhau], [HoTen], [DiaChi], [GioiTinh], [NgaySinh], [SoDienThoai], [Email]) VALUES (2, 1, N'ngochoi', N'123', N'Phạm Vũ Ngọc Hội', N'Ở đâu đó trên quận 10', 1, CAST(N'1998-01-12 00:00:00.000' AS DateTime), N'0934724484', N'ngochoi1998@gmail.com')
INSERT [dbo].[NguoiSuDung] ([MaNguoiSuDung], [MaBaiGui], [TenDangNhap], [MatKhau], [HoTen], [DiaChi], [GioiTinh], [NgaySinh], [SoDienThoai], [Email]) VALUES (4, 3, N'tantai', N'789', N'Trương Tấn Tài', N'Ở đâu đó trên quận 12', 1, CAST(N'1998-04-06 00:00:00.000' AS DateTime), N'0936658638', N'tantaibd98@gmail.com')
INSERT [dbo].[NguoiSuDung] ([MaNguoiSuDung], [MaBaiGui], [TenDangNhap], [MatKhau], [HoTen], [DiaChi], [GioiTinh], [NgaySinh], [SoDienThoai], [Email]) VALUES (5, 5, N'vanquang', N'135', N'Trần Văn Quang', N'Ở đâu đó trên Đồng Nai', 1, CAST(N'1998-06-09 00:00:00.000' AS DateTime), N'0906530363', N'vanquangdn98@gmail.com')
INSERT [dbo].[NguoiSuDung] ([MaNguoiSuDung], [MaBaiGui], [TenDangNhap], [MatKhau], [HoTen], [DiaChi], [GioiTinh], [NgaySinh], [SoDienThoai], [Email]) VALUES (6, 6, N'hoaithuong', N'246', N'Lăng Hoài Thương', N'Ở đâu đó trên Bạc Liêu', 1, CAST(N'1994-01-12 00:00:00.000' AS DateTime), N'0819521414', N'hoaithuongbl94@gmail.com')
INSERT [dbo].[NguoiSuDung] ([MaNguoiSuDung], [MaBaiGui], [TenDangNhap], [MatKhau], [HoTen], [DiaChi], [GioiTinh], [NgaySinh], [SoDienThoai], [Email]) VALUES (7, 11, N'lamtan', N'891', N'Lâm Tấn', N'Ở đâu đó trên Phước An', 1, CAST(N'1967-08-10 00:00:00.000' AS DateTime), N'0906575068', N'lamtan67@gmail.com')
SET IDENTITY_INSERT [dbo].[NguoiSuDung] OFF
