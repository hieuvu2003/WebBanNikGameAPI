
CREATE DATABASE BanNick
GO

CREATE TABLE LoaiSanPham(
	MaLoai INT Identity(1,1) PRIMARY KEY,
	TenLoai NVARCHAR (255) NOT NULL,
	MoTa NVARCHAR(500)
);



CREATE TABLE SanPham (
	MaSanPham INT IDENTITY (1, 1) PRIMARY KEY,
	TenSanPham NVARCHAR (255) NOT NULL,
	MaLoai INT NOT NULL,
	SoLuong int,
	GiaBan float,
	Anh nvarchar(500),
	MoTa ntext,
	ChiTietSanPham ntext,
	FOREIGN KEY (MaLoai) REFERENCES LoaiSanPham (MaLoai) ON DELETE CASCADE ON UPDATE CASCADE
);


create table ChiTietAnh(
	MaAnh int Identity(1,1) Primary Key,
	MaSanPham int,
	DuongDan nvarchar(500),
	Foreign Key (MaSanPham) References SanPham (MaSanPham) On
	Delete CASCADE ON UPDATE CASCADE
)


Create table GiamGia(
	MaGiamGia int Identity(1,1) Primary Key,
	MaSanPham int,
	PhanTram float,
	ThoiGianBatDau datetime,
	ThoiGianKetThuc datetime,
	TrangThai bit,
	Foreign Key (MaSanPham) References SanPham (MaSanPham) On
	Delete CASCADE ON UPDATE CASCADE
)

CREATE TABLE NhaCungCap (
	MaNhaCungCap INT IDENTITY (1, 1) PRIMARY KEY,
	HoTen NVARCHAR (255) NOT NULL,
	DiaChi nvarchar(255),
	DienThoai nvarchar(10),
	Email NVARCHAR(100)
);
create table NguoiDung(
	MaNguoiDung INT IDENTITY (1,1) PRIMARY KEY,
	UserName Nvarchar(50) null,
	PassWord nvarchar(50) null,
	NgayTao DateTime,
	Anh NVARCHAR(100),
	HoTen NVARCHAR(100),
	DienThoai NVARCHAR (10),
	Email NVARCHAR(100),
	DiaChi nvarchar(255),
	TrangThai bit
);

CREATE TABLE HoaDonNhap (
	MaHoaDonNhap INT IDENTITY (1, 1) PRIMARY KEY,
	MaNhaCungCap INT not null,
	MaNguoiDung INT NOT NULL,
	NgayNhap datetime,
	FOREIGN KEY (MaNhaCungCap) REFERENCES NhaCungCap (MaNhaCungCap) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung (MaNguoiDung) ON DELETE CASCADE ON UPDATE CASCADE
);

Create Table KhachHang(
	MaKhachHang int IDENTITY(1,1) PRIMARY KEY,
	UserName NVARCHAR(500) null,
	PassWord NVARCHAR(500) null,
	HoVaTen Nvarchar(200),
	DiaChi NVARCHAR(500),
	SoDienThoai char(10),
	Email NVARCHAR(200)
)

CREATE TABLE ChiTietHoaDonNhap (
	MaHoaDonNhap INT,
	MaSanPham INT,
	SoLuong INT ,
	GiaNhap float,
	PRIMARY KEY (MaHoaDonNhap, MaSanPham),
	FOREIGN KEY (MaHoaDonNhap) REFERENCES HoaDonNhap (MaHoaDonNhap) ,
	FOREIGN KEY (MaSanPham) REFERENCES SanPham (MaSanPham) 
);

CREATE TABLE HoaDonBan (
	MaHoaDon INT IDENTITY (1, 1) PRIMARY KEY,
	MaKhachHang INT null,
	NgayTao DATETime,
	DiaChiNhan Nvarchar(250),
	TrangThai int,
	MoTa Nvarchar(1000),
	TongTien float,
	FOREIGN KEY (MaKhachHang) REFERENCES KhachHang (MaKhachHang) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ChiTietHoaDonBan (
	MaSanPham INT not null,
	MaHoaDon INT not null,
	SoLuong INT ,
	TamTinh float,
	PRIMARY KEY (MaSanPham,MaHoaDon),
	FOREIGN KEY (MaSanPham) REFERENCES SanPham (MaSanPham) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (MaHoaDon) REFERENCES HoaDonBan (MaHoaDon) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE TinTuc (
	MaTin INT iDENTITY (1, 1) PRIMARY KEY,
	TieuDe nvarchar(100),
	NgayTao date,
	NoiDung ntext NULL,
	Anh NVARCHAR(200),
	MaNguoiDung INT,
	TrangThai bit,
	FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung (MaNguoiDung) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE BinhLuan(
	MaBinhLuan int Identity(1,1) Primary Key,
	MaKhachHang int,
	NgayBinhLuan datetime,
	NoiDung nvarchar(500),
	FOREIGN KEY (MaKhachHang) REFERENCES KhachHang (MaKhachHang) ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE TABLE slide(
	anh1 nvarchar(100),
	anh2 nvarchar(100),
	anh3 nvarchar(100)
)

--------------------
INSERT INTO LoaiSanPham(TenLoai,MoTa,MaLoai)
Values (N'Game Team Mobie','Hải Tặc',5)
INSERT INTO LoaiSanPham(TenLoai,MoTa,MaLoai)
Values (N'Game Team Mobie','Hải Tặc',1)
INSERT INTO LoaiSanPham(TenLoai,MoTa,MaLoai)
Values (N'Game Team Mobie','Hải Tặc',2)
INSERT INTO LoaiSanPham(TenLoai,MoTa,MaLoai)
Values (N'Game Team Mobie','Hải Tặc',3)
INSERT INTO LoaiSanPham(TenLoai,MoTa,MaLoai)
Values (N'Game Team Mobie','Hải Tặc',4)
INSERT INTO LoaiSanPham(TenLoai,MoTa,MaLoai)
Values (N'Game Team Mobie',N'Hải Tặc',6)

INSERT INTO SanPham(TenSanPham,MaLoai,Anh,MoTa,ChiTietSanPham)
Values (N'Võ Sĩ',0,'','','')
INSERT INTO SanPham(TenSanPham,MaLoai,Anh,MoTa,ChiTietSanPham)
Values (N'Kiếm Khách',0,'','','')
INSERT INTO SanPham(TenSanPham,MaLoai,Anh,MoTa,ChiTietSanPham)
Values (N'Đầu bếp',0,'','','')
INSERT INTO SanPham(TenSanPham,MaLoai,Anh,MoTa,ChiTietSanPham)
Values (N'Hoa Tiêu',0,'','','')
INSERT INTO SanPham(TenSanPham,MaLoai,Anh,MoTa,ChiTietSanPham)
Values (N'Xạ Thủ',0,'','','')

INSERT INTO NhaCungCap(HoTen,DiaChi,DienThoai,Email)
Values (N'Nguyễn Văn A',N'Hưng Yên','0333817321','ahhhhhh@gmail.com')
INSERT INTO NhaCungCap(HoTen,DiaChi,DienThoai,Email)
Values (N'Nguyễn Văn B',N'Hưng Yên','038338192','hahah@gmail.com')

INSERT INTO ChiTietHoaDonNhap(MaHoaDonNhap,MaSanPham,SoLuong,GiaNhap)
Values (11,12,50,20000)
INSERT INTO ChiTietHoaDonNhap(MaHoaDonNhap,MaSanPham,SoLuong,GiaNhap)
Values (12,12,50,25000)
INSERT INTO ChiTietHoaDonNhap(MaHoaDonNhap,MaSanPham,SoLuong,GiaNhap)
Values (13,13,50,25000)
INSERT INTO ChiTietHoaDonNhap(MaHoaDonNhap,MaSanPham,SoLuong,GiaNhap)
Values (14,14,50,35000)
INSERT INTO ChiTietHoaDonNhap(MaHoaDonNhap,MaSanPham,SoLuong,GiaNhap)
Values (17,17,50,10000)

INSERT INTO HoaDonNhap(MaNhaCungCap,MaNguoiDung,NgayNhap)
Values (1,1,'08/05/2023')
INSERT INTO HoaDonNhap(MaNhaCungCap,MaNguoiDung,NgayNhap)
Values (2,1,'09/06/2023')
INSERT INTO HoaDonNhap(MaNhaCungCap,MaNguoiDung,NgayNhap)
Values (3,1,'03/07/2023')
INSERT INTO HoaDonNhap(MaNhaCungCap,MaNguoiDung,NgayNhap)
Values (4,2,'06/11/2023')
INSERT INTO HoaDonNhap(MaNhaCungCap,MaNguoiDung,NgayNhap)
Values (5,2,'02/02/2023')

INSERT INTO NguoiDung(UserName,PassWord,NgayTao,Anh,HoTen,DienThoai,Email,DiaChi,TrangThai)
Values ('hieu','123','01-02-2023','',N'Vũ Minh Hiếu',0352254036,'vuminhhieu21122003@gmail.com',N'Phú Thọ',1)
INSERT INTO NguoiDung(UserName,PassWord,NgayTao,Anh,HoTen,DienThoai,Email,DiaChi,TrangThai)
Values ('hiep1','123','03-03-2023','',N'Vũ Văn Hiệp11',0355367281,'gvenh@gmail.com',N'Hưng Yên',1)
INSERT INTO NguoiDung(UserName,PassWord,NgayTao,Anh,HoTen,DienThoai,Email,DiaChi,TrangThai)
Values ('hiep2','11111','05-04-2023','',N'Vũ Văn Hiệp',0946382638,'hiepdan123@gmail.com',N'Hưng Yên',1)

INSERT INTO KhachHang(UserName,PassWord,HoVaTen,DiaChi,SoDienThoai,Email)
Values ('nam','123',N'Hoàng Nam',N'Hưng Yên',0987748792,'namcon@gmail.com')
INSERT INTO KhachHang(UserName,PassWord,HoVaTen,DiaChi,SoDienThoai,Email)
Values ('nguyen','123',N'Dương Đức Nguyên',N'Hưng Yên',0333367281,'nguyen123@gmail.com')
INSERT INTO KhachHang(UserName,PassWord,HoVaTen,DiaChi,SoDienThoai,Email)
Values ('cuong','123',N'Nguyễn Cường',N'Hưng Yên',0789382638,'cuonghy@gmail.com')

INSERT INTO HoaDonNhap Values(1,1,'08-01-2023')
INSERT INTO HoaDonNhap Values(2,1,'07-02-2023')
INSERT INTO HoaDonNhap Values(3,2,'03-03-2023')
INSERT INTO HoaDonNhap Values(4,3,'04-05-2023')



select * from SanPham

select * from HoaDonBan
select * from ChiTietHoaDonBan 
select * from KhachHang
select * from HoaDonNhap
select * from ChiTietHoaDonNhap

INSERT INTO ChiTietHoaDonBan(MaSanPham,MaHoaDon,SoLuong,TamTinh)
Values(15,1,2,120000)
INSERT INTO ChiTietHoaDonBan(MaSanPham,MaHoaDon,SoLuong,TamTinh)
Values(16,2,4,260000)
INSERT INTO ChiTietHoaDonBan(MaSanPham,MaHoaDon,SoLuong,TamTinh)
Values(17,3,5,275000)
INSERT INTO ChiTietHoaDonBan(MaSanPham,MaHoaDon,SoLuong,TamTinh)
Values(18,4,3,90000)
INSERT INTO ChiTietHoaDonBan(MaSanPham,MaHoaDon,SoLuong,TamTinh)
Values(19,5,1,40000)

INSERT INTO HoaDonBan(MaKhachHang,NgayTao,DiaChiNhan,TrangThai,MoTa,TongTien)
Values(1,'06-10-2023',N'Hà Nội',2,'',120000)
INSERT INTO HoaDonBan(MaKhachHang,NgayTao,DiaChiNhan,TrangThai,MoTa,TongTien)
Values(2,'08-12-2023',N'Văn Lâm',2,'',260000)
INSERT INTO HoaDonBan(MaKhachHang,NgayTao,DiaChiNhan,TrangThai,MoTa,TongTien)
Values(3,'08-06-2023',N'Hà Nội',2,'',275000)
INSERT INTO HoaDonBan(MaKhachHang,NgayTao,DiaChiNhan,TrangThai,MoTa,TongTien)
Values(2,'07-04-2023',N'Thái Bình',2,'',90000)
INSERT INTO HoaDonBan(MaKhachHang,NgayTao,DiaChiNhan,TrangThai,MoTa,TongTien)
Values(1,'09-03-2023',N'Hưng Yên',2,'',40000)


--Lấy sản phẩm theo mã
Create Procedure GetSanPhamById
	@Id int
AS
BEGIN
	Select * from sanpham sp 
	Where sp.MaSanPham = @Id;
END

exec GetSanPhamById @Id = 15

--Lấy tất cả danh sách sản phẩm
Create Procedure GetAllProduct
AS
BEGIN
	Select * from sanpham sp 
END

--Thêm sản phẩm mới
Create Procedure ThemMoi
	@name Nvarchar(300),
	@maloai int,
	@mota nvarchar(300),
	@gia float,
	@soluong int,
	@anh Nvarchar(300),
	@motachitiet nvarchar(300)
AS
BEGIN 
	INSERT INTO SanPham(TenSanPham,Anh,MaLoai,GiaBan,SoLuong,MoTa,ChiTietSanPham) Values(@name,@anh,@maloai,@gia,@soluong,@mota,@motachitiet);
END

select *
from sanpham

--Tìm sản phẩm tương tự theo mã loại
create PROC sptuongtu
	@id int
AS	
BEGIN
	select sp.*
	from sanpham sp inner join loaisanpham lsp on sp.MaLoai = lsp.MaLoai
	where lsp.MaLoai = @id
END

Create Procedure suasanpham
	@Ma int, 
	@name Nvarchar(300),
	@maloai int,
	@gia float,
	@soluong int,
	@mota nvarchar(300),
	@anh Nvarchar(300),
	@motachitiet nvarchar(300)
AS 
	BEGIN
		UPDATE SanPham
		SET 
			TenSanPham = @name,
			MaLoai = @maloai,
			MoTa = @mota,
			Anh = @anh,
			ChiTietSanPham = @motachitiet,
			GiaBan = @gia,
			SoLuong = @soluong
		Where @Ma = MaSanPham 
END



CREATE Procedure xoasanpham
	@Id int
AS
BEGIN
	DELETE SanPham
	where MaSanPham = @Id
END

--Top những sản phẩm mới nhất
Select top(4) *
from SanPham 
order by MaSanPham desc

create procedure SanPhamMoi
	@sl int
as
begin 
	select top(@sl) *
	from sanpham 
	order by MaSanPham desc
end

--Thực thi
exec SanPhamMoi @sl = 8


--Top Sản phẩm bán chạy nhất
Select top(2) sum(ct.SoLuong) as[Tổng số lượng] , ct.MaSanPham ,sp.TenSanPham
from ChiTietHoaDonBan ct inner join SanPham sp on ct.MaSanPham = sp.MaSanPham
group by ct.MaSanPham,sp.TenSanPham
order by sum(ct.SoLuong) desc

create procedure SanPhamBanChay
	@sl int
as
begin 
	Select top(@sl) sum(ct.SoLuong) as ['số lượng'] , ct.MaSanPham ,sp.TenSanPham,sp.Anh,sp.MaLoai,sp.GiaBan,sp.SoLuong
	from ChiTietHoaDonBan ct inner join SanPham sp on ct.MaSanPham = sp.MaSanPham 
	group by ct.MaSanPham,sp.TenSanPham,sp.Anh,sp.MaLoai,sp.GiaBan,sp.SoLuong
	order by sum(ct.SoLuong) desc
end

exec SanPhamBanChay @sl = 3

exec SanPhamMoi @sl = 10

--Tìm kiếm gần đúng sản phẩm theo tên và loại 
select sp.*
from SanPham sp inner join LoaiSanPham ls on sp.MaLoai = ls.MaLoai
where sp.TenSanPham like N'%Võ Sĩ%' or ls.TenLoai like N'%Game Team Mobie%'

CREATE PROCEDURE TimKiem
    @Page INT,
    @PageSize INT,
    @Search NVARCHAR(50),	
    @TotalCount INT = null,
    @FilterCount INT = null
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Offset INT;
    DECLARE @Fetch INT;

    -- Calculate offset and fetch values
    SET @Offset = (@Page - 1) * @PageSize;
    SET @Fetch = @Page * @PageSize;

    -- Lấy tổng số lượng sản phẩm
    SELECT @TotalCount = COUNT(*) FROM SanPham;

    -- Nhận số lượng bản ghi được lọc dựa trên tiêu chí tìm kiếm
    SELECT @FilterCount = COUNT(*)
        FROM SanPham 
        WHERE (@Search IS NULL OR TenSanPham LIKE '%' + @Search + '%' OR GiaBan LIKE '%' + @Search + '%' OR MoTa LIKE '%' + @Search + '%' OR ChiTietSanPham LIKE '%' + @Search + '%');

    -- Nhận các bản ghi được phân trang dựa trên các giá trị bù và tìm nạp
    SELECT * 
        FROM SanPham 
        WHERE (@Search IS NULL OR TenSanPham LIKE '%' + @Search + '%' OR GiaBan LIKE '%' + @Search + '%' OR MoTa LIKE '%' + @Search + '%' OR ChiTietSanPham LIKE '%' + @Search + '%')
        ORDER BY MaSanPham 
        OFFSET @Offset ROWS FETCH NEXT @Fetch ROWS ONLY;
END;

exec TimKiem @page =1 , @PageSize=5,@Search = 45000

--Thêm vào giỏ hàng
CREATE PROCEDURE AddToCart
	@MaKhachHang int,
	@NgayTao DateTime,
	@DiaChiNhan Nvarchar(250),
	@TrangThai int = 0,
	@MoTa Nvarchar(1000),
	@TongTien float =0
AS 
BEGIN 
	Insert into HoaDonBan(MaKhachHang,NgayTao,DiaChiNhan,TrangThai,MoTa,TongTien) 
	values (@MaKhachHang,@NgayTao,@DiaChiNhan,@TrangThai,@MoTa,@TongTien)
End

--Thêm vào chi tiết đơn hàng
CREATE PROCEDURE ThemChiTietDonHang
	@masanpham int,
	@sl int,
	@tamtinh float
as
	begin 
	DECLARE @mahd int
	select top(1) @mahd = MaHoaDon
	from HoaDonBan
	order by MaHoaDon desc
	Insert into ChiTietHoaDonBan(MaSanPham,MaHoaDon,SoLuong,TamTinh) 
	values(@MaSanPham,@mahd,@sl,@tamtinh)
end

CREATE PROCEDURE Check_Login
	@tk nvarchar(500),
	@mk nvarchar(500)
AS
BEGIN 
	Select *
	from Nguoidung
	where username = @tk and password = @mk
END


--Lấy loại sản phẩm theo mã loại
CREATE PROCEDURE get_product_categoryid
	@id int
as
begin
	select * 
	from sanpham
	where maloai = @id
end
exec AddToCart @MaKhachHang = 2, @NgayTao = '01-02-2021' , @SoLuong = 5, @MaSanPham = 5,@DiaChiNhan = "Hưng Yên",@MoTa = "Khách vip"

----------------------------------------------Admin---------------------------------------------------

--Người dùng
--Lấy thông tin theo mã
Create Procedure GetUserById
	@Id int
AS
BEGIN
	Select * from nguoidung 
	Where MaNguoiDung = @Id;
END

exec GetUserById @Id = 5

--Lấy tất cả danh sách người dùng
Create Procedure GetAllUsers
AS
BEGIN
	Select * from NguoiDung 
END

exec GetAllUsers

--Thêm thông tin người dùng mới
Create Procedure AddUser
	@name Nvarchar(300),
	@username nvarchar(300),
	@password nvarchar(300),
	@ngaytao datetime,
	@dienthoai nvarchar(10),
	@anh Nvarchar(300),
	@diachi nvarchar(300),
	@trangthai bit
AS
BEGIN 
	INSERT INTO NguoiDung(HoTen,Anh,UserName,PassWord,NgayTao,DienThoai,DiaChi,TrangThai) Values(@name,@anh,@username,@password,@ngaytao,@dienthoai,@diachi,@trangthai);
END

exec AddUser @name = 'a', @username = 'a' , @password = 'a', @dienthoai = '1',@anh='a',@diachi='a',@trangthai = 'a'

select *
from sanpham

--Sửa thông tin người dùng
Create Procedure suanguoidung
	@Ma int, 
	@name Nvarchar(300),
	@username nvarchar(300),
	@password nvarchar(300),
	@ngaytao datetime,
	@dienthoai nvarchar(10),
	@anh Nvarchar(300),
	@diachi nvarchar(300),
	@trangthai bit
AS 
	BEGIN
		UPDATE NguoiDung
		SET 
			HoTen = @name,
			UserName = @username,
			Anh = @anh,
			PassWord = @password,
			NgayTao = @ngaytao,
			DienThoai = @dienthoai,
			DiaChi = @diachi,
			TrangThai = @trangthai
		Where @Ma = MaNguoiDung 
END

--Xóa người dùng
CREATE Procedure xoanguoidung
	@Id int
AS
BEGIN
	DELETE NguoiDung
	where MaNguoiDung = @Id
END

-----Bảng loại sản phẩm
create Procedure GetCateById
	@Id int
AS
BEGIN
	Select * from LoaiSanPham 
	Where MaLoai = @Id;
END

exec GetUserById @Id = 5

--Lấy tất cả loại sản phẩm
CREATE PROCEDURE get_all_data_category
as
begin
	select *
	from loaisanpham
end


--Thêm loại sản phẩm mới
Create Procedure AddCategory
	@tenloai Nvarchar(300),
	@mota nvarchar(1000)
AS
BEGIN 
	INSERT INTO LoaiSanPham(TenLoai,MoTa) Values(@tenloai,@mota);
END

 

--Sửa thông tin loại
Create Procedure sualoaisanpham
	@Ma int, 
	@tenloai Nvarchar(300),
	@mota nvarchar(1000)
	
AS 
	BEGIN
		UPDATE LoaiSanPham
		SET 
			Tenloai = @tenloai,
			MoTa = @mota
			
		Where MaLoai = @Ma 
END

--Xóa loại sản phẩm
CREATE Procedure xoaloaisanpham
	@Id int
AS
BEGIN
	DELETE LoaiSanPham
	where MaLoai = @Id
END

-----Bảng nhà cung cấp
--Lấy thông tin nhà cung cấp theo mã
create Procedure GetSupById
	@Id int
AS
BEGIN
	Select * from NhaCungCap 
	Where MaNhaCungCap = @Id;
END


--Lấy tất cả nhà cung cấp
CREATE PROCEDURE getallsup
as
begin
	select *
	from NhaCungCap
end


--Thêm nhà cung cấp mới
Create Procedure AddSup
	@hoten Nvarchar(300),
	@diachi nvarchar(300),
	@dienthoai nvarchar(10),
	@email nvarchar(300)
AS
BEGIN 
	INSERT INTO NhaCungCap(HoTen,DiaChi,DienThoai,Email) Values(@hoten,@diachi,@dienthoai,@email);
END

--Sửa thông tin nhà cung cấp
Create Procedure suanhacungcap
	@Ma int, 
	@hoten Nvarchar(300),
	@diachi nvarchar(300),
	@dienthoai nvarchar(10),
	@email nvarchar(300)
	
AS 
	BEGIN
		UPDATE NhaCungCap
		SET 
			HoTen = @hoten,
			DiaChi = @diachi,
			DienThoai = @dienthoai,
			Email = @email
		Where MaNhaCungCap = @Ma 
END

--Xóa nhà cung cấp
CREATE Procedure xoanhacungcap
	@Id int
AS
BEGIN
	DELETE NhaCungCap
	where MaNhaCungCap = @Id
END

----------Bảng hóa đơn nhập
--Lấy thông tin hóa đơn nhập theo mã
create Procedure GetInputBillId
	@Id int
AS
BEGIN
	Select * from HoaDonNhap 
	Where MaHoaDonNhap = @Id;
END


--Lấy tất cả hóa đơn nhập
CREATE PROCEDURE getallinputbill
as
begin
	select *
	from HoaDonNhap hd inner join NguoiDung nd on hd.MaNguoiDung = nd.MaNguoiDung
	inner join NhaCungCap nc on hd.MaNhaCungCap = nc.MaNhaCungCap
end

exec getallinputbill

--Lấy tất cả thông tin chi tiết hóa đơn nhập theo id
CREATE PROCEDURE get_all_detail_input_bill_id
	@id int
as
begin
	select *
	from ChiTietHoaDonNhap 
	where MaHoaDonNhap = @id 
end

--Thêm hóa đơn nhập mới
Create Procedure AddInputBill
	@mancc int,
	@manguoidung int,
	@ngaynhap datetime
AS
BEGIN 
	INSERT INTO HoaDonNhap(MaNhaCungCap,MaNguoiDung,NgayNhap) Values(@mancc,@manguoidung,@ngaynhap);
END

--Thêm chi tiết hóa đơn nhập
Create Procedure AddDetailInputBill
	@mahdn int,
	@masp int,
	@sl int,
	@gia float
AS
BEGIN 
	INSERT INTO ChiTietHoaDonNhap(MaHoaDonNhap,MaSanPham,SoLuong,GiaNhap) 
	Values(@mahdn,@masp,@sl,@gia);
END

--Sửa thông tin hóa đơn nhập
Create Procedure suahoadonnhap
	@Ma int, 
	@mancc int,
	@manguoidung int,
	@ngaynhap datetime
	
AS 
	BEGIN
		UPDATE HoaDonNhap
		SET 
			MaNhaCungCap = @mancc,
			MaNguoiDung = @manguoidung,
			NgayNhap = @ngaynhap
		Where MaHoaDonNhap = @Ma 
END

--Xóa hóa đơn nhập
CREATE Procedure xoahoadonnhap
	@Id int
AS
BEGIN
	DELETE HoaDonNhap
	where MaHoaDonNhap = @Id
END

--------Bảng khách hàng
create proc themkhachhang
	@username nvarchar(500),
	@password nvarchar(500),
	@hoten nvarchar(500),
	@diachi nvarchar(500),
	@sdt nvarchar(10),
	@email nvarchar(300)
as
begin 
	INSERT INTO KhachHang(UserName,PassWord,HoVaTen,DiaChi,SoDienThoai,Email) 
	Values(@username,@password,@hoten,@diachi,@sdt,@email)
end

create proc getdatacusid
	@id int
as
begin
	Select *
	from KhachHang
	where MaKhachHang = @id
end

create proc checklogin
	@tk nvarchar(200),
	@mk nvarchar(300)
as
	begin
		select *
		from KhachHang 
		where UserName = @tk and PassWord = @mk
	end

	exec checklogin @tk = 'hoang211', @mk = '123'

	--Bảng hóa đơn bán
CREATE PROCEDURE getallbill
as
begin
	select *
	from HoaDonBan hd inner join KhachHang kh on hd.MaKhachHang = kh.MaKhachHang
end
--Lấy tất cả thông tin chi tiết sản phẩm theo mã hóa đơn bán 
CREATE PROCEDURE get_all_detail_output_bill_id
	@id int
as
begin
	select *
	from ChiTietHoaDonBan ct inner join SanPham sp on ct.MaSanPham = sp.MaSanPham
	where ct.MaHoaDon = @id 
end

exec get_all_detail_output_bill_id @id = 14

--Xóa hóa đơn nhập
CREATE Procedure xoahoadonban
	@Id int
AS
BEGIN
	DELETE HoaDonBan
	where MaHoaDon = @Id
END

--Sửa hóa đơn bán--
Create Procedure suahoadonban
	@MaHoaDon int, 
	@MaKhachHang int,
	@NgayTao datetime,
	@DiaChiNhan nvarchar(50),
	@TrangThai int,
	@MoTa nvarchar(300),
	@TongTien float
	
AS 
	BEGIN
		UPDATE HoaDonBan
		SET 
			MaKhachHang = @MaKhachHang,
			NgayTao = @NgayTao,
			DiaChiNhan = @DiaChiNhan,
			TrangThai = @TrangThai,
			MoTa = @MoTa,
			TongTien =@TongTien
		Where MaHoaDon = @MaHoaDon 
END

select * from HoaDonBan
select * from HoaDonNhap
