#1.Đưa ra thông tin của nhân viên có mã số KT001?
#select *  from qlnv.nhanvien, qlnv.phong, qlnv.tdnn, qlnv.dmnn where (nhanvien.manv ='KT001') and (nhanvien.maphong = phong.maphong) and (tdnn.manv = nhanvien.manv) and (tdnn.mann = dmnn.mann);
#2.Hãy sửa họ tên nhân viên trên thành ký tự tiếng Việt (Unicode)
#3.Đưa ra danh sách các nhân viên nữ?
#select manv, hoten from qlnv.nhanvien where (nhanvien.gioitinh = "Nữ");
#4.Tìm những nhân viên có họ ‘Nguyễn’?
#select manv, hoten from qlnv.nhanvien where (nhanvien.hoten like "Nguyễn %");
#5.Đưa ra danh sách các nhân viên có tên chứa từ ‘Văn’
#select manv, hoten from qlnv.nhanvien where (nhanvien.hoten like "% Văn %");
#6.Đưa ra những nhân viên có tuổi dưới 30? (Đưa ra cả thông tin tuổi trong kết quả)
#select manv, hoten, (year(now()) - year(nhanvien.NGAYSINH)) AS "tuoi" from qlnv.nhanvien where (year(now()) - year(nhanvien.NGAYSINH)) < 30;
#7.Đưa ra danh sách các nhân viên có tuổi nằm trong khoảng 25 đến 30 tuổi? (Đưa ra cả thông tin tuổi trong kết quả)
#select manv, hoten, (year(now()) - year(nhanvien.NGAYSINH)) AS "tuoi" from qlnv.nhanvien where (year(now()) - year(nhanvien.NGAYSINH)) between 25 and 30;
#8.Đưa ra các mã nhân viên đã học các ngoại ngữ 01 ở trình độ C trở lên?
#select manv from qlnv.tdnn where tdnn.MANN = 1 and (tdnn.tdo = "A" or tdnn.tdo = "B" or tdnn.tdo = "C");
#9.Đưa ra danh sách các nhân viên vào biên chế trước năm 2000?
#select manv, hoten from qlnv.nhanvien where (year(nhanvien.ngaybc) < 2000);
#10.Đưa ra danh sách các nhân viên đã vào biên chế hơn 10 năm?
#select manv, hoten from qlnv.nhanvien where (year(now()) - year(nhanvien.ngaybc)) > 10;
#11.Đưa ra danh sách các nhân viên năm nay đủ tuổi nghỉ hưu (Nam >=60 tuổi, Nữ >=55 tuổi)?
#select manv, hoten from qlnv.nhanvien where (nhanvien.GIOITINH = "Nam" and (year(now()) - year(nhanvien.NGAYSINH)) >= 60) or (nhanvien.GIOITINH = "Nữ" and (year(now()) - year(nhanvien.NGAYSINH)) >= 55);
#12.Cho biết thông tin (Mã phòng, tên phòng, điện thoại liên hệ) về các phòng ban?
#select maphong, tenphong, tel from qlnv.phong;
#13.Đưa ra thông tin (họ tên, ngày sinh, ngày vào biên chế) về 2 nhân viên đầu tiên trong bảng nhân viên?
#select hoten, ngaysinh, NGAYBC from qlnv.nhanvien limit 2;
#14.Cho biết mã nhân viên, họ tên, ngày sinh, lương của các nhân viên có lương nằm trong khoảng từ 2000000 đồng đến 3000000 đồng?
#select manv, hoten, ngaysinh, luong from qlnv.nhanvien where (nhanvien.luong between 2000000 and 3000000);
#15.Đưa ra danh sách các nhân viên chưa có số điện thoại?
#select manv, hoten from qlnv.nhanvien where nhanvien.sdt is not null;
#16.Đưa ra danh sách các nhân viên sinh nhật trong tháng 3
#select manv, hoten from qlnv.nhanvien where (month(nhanvien.ngaysinh) = 3);
#17.Hãy đưa ra danh sách nhân viên theo theo chiều tăng dần của lương?
#select manv, hoten from qlnv.nhanvien order by nhanvien.luong desc;
#18.Cho biết lương trung bình của phòng Kinh doanh?
#select avg(nhanvien.luong) as luongtb from qlnv.nhanvien where nhanvien.maphong = "KDA";
#19.Cho biết tổng số nhân viên và trung bình lương phòng Kinh doanh?
#select count("KDA") as sonv,avg(nhanvien.luong) as luongtb from qlnv.nhanvien where nhanvien.maphong = "KDA";
#20.Cho biết tổng lương của mỗi phòng?
select sum(), sum(), sum()
#21.Cho biết các phòng có tổng lương lớn hơn 500.0000?
#22.Cho biết danh sách mã nhân viên, họ tên, mã phòng và tên phòng họ làm việc?
#23.Đưa ra danh sách tất cả các nhân viên cùng với thông tin về phòng ban của họ (kể cả các nhân viên chưa ở phòng nào)?
#24.Đưa ra danh sách tất cả các phòng cùng với thông tin về các nhân viên của các phòng (kể cả các phòng chưa có nhân viên nào)?
