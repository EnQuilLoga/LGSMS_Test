
USE LGSMS;

INSERT INTO Role (role_name) VALUES ('Admin');
INSERT INTO Role (role_name) VALUES ('Manager');
INSERT INTO Role (role_name) VALUES ('Business Staff');
INSERT INTO Role (role_name) VALUES ('Customer');

INSERT INTO image (image_path , image_name)
VALUES ('null', 'binh 48kg');


INSERT INTO profile (image_id, full_name, phone, dob, gender, address, email, created_at, updated_at)
VALUES (1, N'Đạt Nguyễn', '0358061747', '1999-06-26', 1 , N'Hà Nội', 'dat19991203@gmail.com', '2022-03-09 10:30:15', '2022-03-15 15:38:11' );

INSERT INTO profile (image_id, full_name, phone, dob, gender, address, email, created_at, updated_at)
VALUES (1, N'Long Nguyễn', '0387510752', '1999-03-25', 1, N'Hà Nội', 'nguyenquoclong11@gmail.com', '2022-03-09 10:30:51','2022-03-15 15:39:19');

INSERT INTO profile (image_id, full_name, phone, dob, gender, address, email, created_at, updated_at)
VALUES (1, N'Vanh Sibun', '0985041840', '2000-1-1', 1, N'Hà Nội', 'vanh@gmail.com', '2022-03-09 10:31:22', '2022-03-15 15:40:11');

INSERT INTO profile (image_id, full_name, phone, dob, gender, address, email, created_at, updated_at)
VALUES (1, N'Phuoc Truong', '0962611962', '2000-1-1', 1, N'Hà Nội', 'phuoc@gmail.com', '2022-03-09 10:31:55', '2022-03-15 15:41:31');

INSERT INTO profile (image_id, full_name, phone, dob, gender, address, email, created_at, updated_at)
VALUES (1, N'Minh Pham', '0915315959', '2000-1-1', 1, N'Hà Nội', 'minh@gmail.com', '2022-03-09 10:32:05', '2022-03-15 15:42:21');


INSERT INTO account (username, password, role_id, profile_id, is_active)
VALUES ('dat', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 3, 1, 1);

INSERT INTO account (username, password, role_id, profile_id, is_active)
VALUES ('long', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 4, 2, 1);

INSERT INTO account (username, password, role_id, profile_id, is_active)
VALUES ('vanh', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 4, 3, 1);

INSERT INTO account (username, password, role_id, profile_id, is_active)
VALUES ('phuoc', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1 ,4, 1);

INSERT INTO account (username, password, role_id, profile_id, is_active)
VALUES ('minh', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',2, 5, 1);


--INSERT INTO admin (account_id) VALUES (4);


--INSERT INTO customer (account_id) VALUES (2);
--INSERT INTO customer (account_id) VALUES (3);


--INSERT INTO business_Staff (account_id) VALUES (1);


--INSERT INTO manager (account_id) VALUES (5);


INSERT INTO provider (provider_name, provider_phone, provider_address, provider_email, is_active, provider_created_at, provider_updated_at)
VALUES (N'gas petrolimex', '0966168339',N'238 Đường Nguyễn Xiển, Phường Hạ Đình, Quận Thanh Xuân, TP. Hà Nội' ,'petrolimex@gmail.com.vn', 1, '2022-03-10 15:10:33', '2022-03-10 19:20:38' );


INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Bình Công Nghiệp 48kg', N'Đặc điểm của bình là có màu xanh ngọc, thiết kế thon dài, khối lượng ga trong bình là 48kg, trọng lượng vỏ đạt khoảng 37 – 40kg. Dung tích của lòng bình ga công nghiệp 48kg là 108 lít, tình trạng ga trong bình mới 100%, còn nguyên tem chống hàng giả đến từ nhà sản xuất, cho ngọn lửa xanh tinh khiết, ổn định, không hề lẫn với các tạp chất khác và không gây đỏ lửa. Chất liệu vỏ bình gas công nghiệp 48kg được chế tạo bằng thép nhập khẩu trực tiếp từ Nhật Bản, đảm bảo đáp ứng được tiêu chuẩn chế tạo DOT-4WA-240 và quy định của Tiêu chuẩn Việt Nam TCVN 6292:1997. Bình gas công nghiệp 48kg cũng được chế tạo bằng thép đặc biệt, chịu được áp lực cao, áp suất thiết kế là 17kg/cm2, áp suất thử thủy lực là 34kg/cm2, trong khi áp suất của gas ở nhiệt độ bình thường chỉ đạt 5 – 7kg/cm2.',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 1995000 , 1795000, 100, 50, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 , N'Bình Ga 13kg',N'Bình gas Petrolimex 13kg có trọng lượng ruột đạt 13kg, trọng lượng vỏ khoảng 12kg nên khi được giao gas, nếu bạn cân đủ 25kg bình thì là bình đã được bơm đủ gas. Các thông số kỹ thuật để nhận diện bình gas chính hãng như tên thương hiệu Petrolimex được in nổi trên thân mình, trọng lượng bình được dập nổi ở quai bình cùng thông tin nhà máy, trạm chiết,…  đều có sẵn trên bình gas nên bạn hoàn toàn có thể yên tâm về sự an toàn của sản phẩm.',
'2022-03-09 12:22:22', '2022-03-09 13:22:22',  499000, 399000, 90, 30, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Bình Ga 12kg Van Chụp', N'Van gas của bình gas 12kg Petrolimex sử dụng van chụp chính là van chụp bình gas có hình chóp nón, là sản phẩm được nhập khẩu trực tiếp từ Đức nên bạn hoàn toàn có thể yên tâm về chất lượng của sản phẩm. Van của bình gas được thiết kế đồng bộ với bình gas và các thiết bị sử dụng gas, với nhiệm vụ chính là điều chỉnh áp lực khí gas ra ngoài, đồng thời ngăn chặn những yếu tố bên ngoài ảnh hưởng tới chất lượng khí gas và hoạt động của van gas, có thể tự động ngắt gas khi xảy ra những sự cố như rò rỉ khí gas khi nước tràn trên bề mặt bếp hoặc gió thổi làm tạt lửa.', 
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 489000, 389000, 100, 60, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1, N'Bình Ga 12kg Van Ngang' ,N'Trọng lượng của bình gas sẽ được tính như sau: Trọng lượng vỏ bình gas : 13 kg ,Trọng lượng ruột gas (Khí gas hóa lỏng bên trong) : 12 kg ,Tổng trọng lượng của bình gas cả vỏ cả ruột là: 13 + 12 = 25 kg', 
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 489000, 389000,100, 50, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Bình Ga Petrovietnam 6kg', N'Bình ga 6kg có kích thước 30cm x 37cm(Rộng x cao) nên rất nhỏ gọn phù hợp với các gian bếp có kích thước khiêm tốn như : phòng trọ, nhà nghỉ , xe đẩy bán hàng rong hoặc các gian bếp có diện tích dưới 10m2',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 293000 , 260000, 80, 50, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Bình Ga Vip 12kg', N'Bình 12kg thương hiệu MF,dòng VIP, van ngang, màu vàng
Thông tin chi tiết bình gas 12kg
- Khối lượng tịnh của bình gas: 12kg
- Khối lượng vỏ bình gas: In trên vỏ chai.
- Thành phần khí trong bình gas: Khí dầu mỏ hóa lỏng (LPG)
- Thành phần cấu tạo khí gas:
- Propane- Butane 50%-50% (+/- 30%)
- Theo tiêu chuẩn khí gas: QCVN8:2012/BKHCN
- Chỉ tiêu chất lượng khí gas:
Nhiệt lượng: 50.000 kj/kg
Nhiệt độ cháy: 1800- 1935o
Kích thước bình gas 12kg:
Đường kính ngoài thân bình: 300 mm ± 1
Chiều cao toàn thân: 585 mm ± 1
Chiều cao quai xách: 160 mm ± 2
Chiều cao chân đế: 62 mm ± 2
Chiều cao thân bình: 446 mm ± 2
Đường kính ngoài chân đế: 305 mm ± 2',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 560000 , 450000, 100, 50, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Gas Saigon Petro - Màu Xám 12kg', N'Bình màu xám, Trong lượng gas:12kg, Giá 415,000, Thường được sử dụng cho hộ gia đình hoặc hộ kinh doanh nhỏ lẽ.',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 515000 , 430000, 80, 50, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Elf Gas bò 39 kg', N'Bình gas màu đỏ, Trong lượng gas: 39kg ,Sản phẩm có dán nhãn tiêu chuẩn hàng hóa của Totalgaz, Thường được dùng cho: Nhà hàng, Khách sạn, Xí nghiệp, Trường học …',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 1590000 , 1400000, 80, 50, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Gas Dầu Khí 12kg', N'Bình gas màu xanh, Trong lượng gas: 12kg, Sản phẩm có dán nhãn tiêu chuẩn hàng hóa của của Tập đoàn dầu khí Việt Nam',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 470000 , 400000, 90, 50, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Petrolimex bò 48kg', N'Bình màu xanh nước biển , Trong lượng gas: 48kg, Do tổng công ty gas Petrolimex sản xuất, Thường được dùng cho: Nhà hàng, Khách sạn, Xí nghiệp, Trường học …',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 1860000 , 1700000, 30, 10, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Saigonpetro bò 45kg', N'Bình màu xám, Trong lượng gas : 45kg, Thường được dùng cho: Nhà hàng, Khách sạn, Xí nghiệp, Trường học …',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 1650000 , 1500000, 30, 10, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Total Xam 12kg', N'Bình màu đỏ, Trong lượng gas:12kg, Sản phẩm có dán nhãn tiêu chuẩn hàng hóa của Totalgaz, Thường được sử dụng cho hộ gia đình hoặc hộ kinh doanh nhỏ lẽ',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 520000 , 420000, 100, 50, 1, 1);

--duplicate product
INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Total Xam 12kg', N'Bình màu đỏ, Trong lượng gas:12kg, Sản phẩm có dán nhãn tiêu chuẩn hàng hóa của Totalgaz, Thường được sử dụng cho hộ gia đình hoặc hộ kinh doanh nhỏ lẽ',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 520000 , 420000, 100, 50, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Total Xam 12kg', N'Bình màu đỏ, Trong lượng gas:12kg, Sản phẩm có dán nhãn tiêu chuẩn hàng hóa của Totalgaz, Thường được sử dụng cho hộ gia đình hoặc hộ kinh doanh nhỏ lẽ',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 520000 , 420000, 100, 50, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Total Xam 12kg', N'Bình màu đỏ, Trong lượng gas:12kg, Sản phẩm có dán nhãn tiêu chuẩn hàng hóa của Totalgaz, Thường được sử dụng cho hộ gia đình hoặc hộ kinh doanh nhỏ lẽ',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 520000 , 420000, 100, 50, 1, 1);

INSERT INTO product (image_id, product_name, product_description, product_created_at, product_updated_at,product_price, product_import_price, product_instock, product_empty, is_active, provider_id )
VALUES (1 ,N'Total Xam 12kg', N'Bình màu đỏ, Trong lượng gas:12kg, Sản phẩm có dán nhãn tiêu chuẩn hàng hóa của Totalgaz, Thường được sử dụng cho hộ gia đình hoặc hộ kinh doanh nhỏ lẽ',
'2022-03-09 12:22:22', '2022-03-09 13:22:22', 520000 , 420000, 100, 50, 1, 1);
--end


INSERT INTO importation(product_id, product_import_quantity, import_date, account_id, provider_id , note, import_amount)
VALUES (2, 3, '2022-03-11 09:10:42', 1, 1, N'null',  1197000);

INSERT INTO importation(product_id, product_import_quantity, import_date, account_id, provider_id , note, import_amount)
VALUES (3, 5, '2022-03-11 09:10:42', 1, 1, N'null',  1945000);

INSERT INTO importation(product_id, product_import_quantity, import_date, account_id, provider_id , note, import_amount)
VALUES (4, 5, '2022-03-11 09:10:42', 1, 1, N'null',  1945000);


INSERT INTO shopping_Cart(product_id, product_quantity, customer_id)
VALUES (3, 5, 1);

INSERT INTO shopping_Cart(product_id, product_quantity, customer_id)
VALUES (1, 4, 1);

INSERT INTO shopping_Cart(product_id, product_quantity, customer_id)
VALUES (4, 5, 2);


INSERT INTO orders (order_code, customer_id, order_status, created_at, customer_name, order_note_1, order_note_2, business_staff_id, updated_at, phone, address)
VALUES ('LG001', 1, 0, '2022-03-13 15:22:35', N'Long', N'đang xử lí', N'null', 1 , '2022-03-15 15:22:35', 0981234567, 'null' );

INSERT INTO orders (order_code, customer_id, order_status, created_at, customer_name, order_note_1, order_note_2, business_staff_id, updated_at, phone, address)
VALUES ('LG001', 1, 1, '2022-03-13 15:22:35', N'Long', N'null', N'null', 1 , '2022-03-15 15:22:35', 0981234567, 'null' );

INSERT INTO orders (order_code, customer_id, order_status, created_at, customer_name, order_note_1, order_note_2,business_staff_id, updated_at, phone, address)
VALUES ('LG002', 2, 3, '2022-03-13 15:22:35', N'Sibun', N'null', N'null' ,1, '2022-03-15 15:22:35', 0981234567, 'null');


INSERT INTO order_Detail(order_id, product_id, product_quantity, price)
VALUES (1, 3, 5, 2445000);

INSERT INTO order_Detail(order_id, product_id, product_quantity, price)
VALUES (2, 1, 4, 7980000);

INSERT INTO order_Detail(order_id, product_id, product_quantity, price)
VALUES (3, 4, 5, 2445000);


INSERT INTO receipt_Voucher (order_id ,create_at, business_staff_id, total_money, deposit, note, voucher_status )
VALUES (1, '2022-03-15 10:22:19', 1, 2445000, 1000000 , N'null', 1 );

INSERT INTO receipt_Voucher (order_id ,create_at, business_staff_id, total_money, deposit, note, voucher_status )
VALUES (2, '2022-03-15 11:22:19', 1, 7980000, 1000000 , N'null', 1 );

INSERT INTO receipt_Voucher (order_id ,create_at, business_staff_id, total_money, deposit, note, voucher_status )
VALUES (3, '2022-03-15 11:33:17', 1, 2445000, 1000000 , N'null', 1 );


