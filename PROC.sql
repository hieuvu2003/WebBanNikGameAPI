use WEBBANNICK
go

-- thu tuc them hoa don
USE WEBBANNICK
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_hoadon_create]
(@TenKH              NVARCHAR(50), 
 @GioiTinh        bit,
 @Diachi          NVARCHAR(250), 
 @TrangThai         bit,  
 @list_json_chitiethoadon NVARCHAR(MAX)
)
AS
    BEGIN
		DECLARE @MaHoaDon INT;
        INSERT INTO HoaDons
                (TenKH,
				 GioiTinh,
                 Diachi, 
                 TrangThai               
                )
                VALUES
                (@TenKH, 
				 @GioiTinh,
                 @Diachi, 
                 @TrangThai
                );

				SET @MaHoaDon = (SELECT SCOPE_IDENTITY());
                IF(@list_json_chitiethoadon IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTietHoaDons
						 (MaSanPham, 
						  MaHoaDon,
                          SoLuong, 
                          TongGia               
                        )
                    SELECT JSON_VALUE(p.value, '$.maSanPham'), 
                            @MaHoaDon, 
                            JSON_VALUE(p.value, '$.soLuong'), 
                            JSON_VALUE(p.value, '$.tongGia')    
                    FROM OPENJSON(@list_json_chitiethoadon) AS p;
                END;
        SELECT '';
    END;
--DROP PROCEDURE IF EXISTS sp_hoadon_create;--
-- thu tuc cap nhat hoadon
CREATE PROCEDURE updatesp_hoadon_create
	@MaHoaDon INT,
	@TrangThai BIT,
	@NgayTao DATETIME, 
	@NgayDuyet DATETIME,
	@TongGia DECIMAL(18, 0),
	@TenKH NVARCHAR(50),
	@GioiTinh BIT, 
	@Diachi NVARCHAR(250), 
	@Email NVARCHAR(50), 
	@SDT NVARCHAR(50), 
	@DiaChiGiaoHang NVARCHAR(350), 
	@ThoiGianGiaoHang DATETIME 
AS
BEGIN
	IF EXISTS (SELECT * FROM [dbo].[HoaDons] WHERE MaHoaDon = @MaHoaDon)
	BEGIN
		UPDATE [dbo].[HoaDons]
		SET TrangThai = @TrangThai,
		    NgayTao = @NgayTao,
			NgayDuyet = @NgayDuyet,
			TongGia = @TongGia,
			TenKH = @TenKH,
			GioiTinh = @GioiTinh,
			Diachi = @Diachi,
			Email = @Email,
			SDT= @SDT,
			DiaChiGiaoHang = @DiaChiGiaoHang,
			ThoiGianGiaoHang = @ThoiGianGiaoHang
		WHERE MaHoaDon = @MaHoaDon
	END;
END;

-- thu tuc xoa hoadon
alter proc deletehoadon
	@MaHoaDon int
as
begin
	delete ct from [dbo].[HoaDons]  hd inner join ChiTietHoaDons ct on  hd.MaHoaDon = ct.MaHoaDon and hd.MaHoaDon = @MaHoaDon
	delete from [dbo].[HoaDons] where MaHoaDon = @MaHoaDon
end;
go

exec deletehoadon 5

--thu tuc get--
create proc sp_hoadon_get_by_id
	@MaHoaDon int
as
begin
	select * from [dbo].[HoaDons] where MaHoaDon = @MaHoaDon
end;
go

select * from ChiTietHoaDons
select * from HoaDons
 
CREATE PROCEDURE [dbo].[sp_khach_search] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_khach Nvarchar(50),
									   @dia_chi Nvarchar(250)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenKH ASC)) AS RowNumber, 
                              k.Id,
							  k.TenKH,
							  k.DiaChi
                        INTO #Results1
                        FROM KhachHangs AS k
					    WHERE  (@ten_khach = '' Or k.TenKH like N'%'+@ten_khach+'%') and						
						(@dia_chi = '' Or k.DiaChi like N'%'+@dia_chi+'%');                   
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenKH ASC)) AS RowNumber, 
                              k.Id,
							  k.TenKH,
							  k.DiaChi
                        INTO #Results2
                        FROM KhachHangs AS k
					    WHERE  (@ten_khach = '' Or k.TenKH like N'%'+@ten_khach+'%') and						
						(@dia_chi = '' Or k.DiaChi like N'%'+@dia_chi+'%');                   
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;

	select * from KhachHangs