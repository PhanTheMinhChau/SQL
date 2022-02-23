SELECT * FROM qlnv.nhanvien;
INSERT INTO `qlnv`.`nhanvien` (`MANV`, `HOTEN`, `GIOITINH`, `NGAYSINH`, `LUONG`, `MAPHONG`, `SDT`, `NGAYBC`) VALUES ('QT001', 'Phan Thế Minh Châu', 'Nam', str_to_date('9/3/2002', "%m/%d/%Y"), '150000', 'QTA', '', str_to_date('2/8/2021', "%m/%d/%Y"));

SELECT * FROM qlnv.tdnn;
INSERT INTO `qlnv`.`tdnn` (`MANV`, `MANN`, `TDO`) VALUES ('QT001', '1', 'C');
INSERT INTO `qlnv`.`tdnn` (`MANV`, `MANN`, `TDO`) VALUES ('QT001', '4', 'A');
