use case_study;
SELECT 
    *
FROM
    nhan_vien
WHERE
    (SUBSTRING_INDEX(ho_ten, ' ', - 1)  LIKE 'H%')
        OR (SUBSTRING_INDEX(ho_ten, ' ', - 1) LIKE 'T%')
        OR (SUBSTRING_INDEX(ho_ten, ' ', - 1) LIKE 'K%') and length(ho_ten) <= 15;
-- cau 3
SELECT 
    *
FROM
    khach_hang
WHERE
    YEAR(CURDATE()) - YEAR(ngay_sinh) BETWEEN 18 AND 50
        AND (dia_chi like "%đà nẵng%"
        OR dia_chi like "%Quảng trị%");
        -- cau 4
  select khach_hang.ho_ten,count(hop_dong.ma_hop_dong) as "dat_phong"
  from khach_hang
  join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
where loai_khach.ten_loai_khach = "Diamond"
 group by khach_hang.ho_ten ;
-- order by dat_phong;

-- cau 5
SELECT
    kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loai_khach,
    hd.ma_hop_dong,
    dv.ten_dich_vu,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    SUM(dv.chi_phi_thue + hdt.so_luong * dvd.gia) AS tong_tien
FROM
    khach_hang kh
LEFT JOIN
    hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
LEFT JOIN
    hop_dong_chi_tiet hdt ON hd.ma_hop_dong = hdt.ma_hop_dong
LEFT JOIN
    dich_vu_di_kem dvd ON hdt.ma_dich_vu_di_kem = dvd.ma_dich_vu_di_kem
LEFT JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
GROUP BY
     kh.ma_khach_hang,
--     kh.ho_ten,
--     lk.ten_loai_khach,
   hd.ma_hop_dong,
    dv.ten_dich_vu;
--     hd.ngay_lam_hop_dong,
--     hd.ngay_ket_thuc;

-- cau 6
SELECT 
    dich_vu.ma_dich_vu,
    dich_vu.ten_dich_vu,
    dich_vu.dien_tich,
    dich_vu.chi_phi_thue,
    loai_dich_vu.ten_loai_dich_vu
FROM
    dich_vu
        JOIN
    hop_dong ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
        JOIN
    loai_dich_vu ON dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
WHERE
    hop_dong.ma_dich_vu NOT IN (SELECT 
            hop_dong.ma_dich_vu
        FROM
            hop_dong
        WHERE
            hop_dong.ngay_lam_hop_dong BETWEEN '2021-01-01' AND '2021-03-31')
GROUP BY dich_vu.ma_dich_vu;
-- cau 7
SELECT 
    dich_vu.ma_dich_vu,
    dich_vu.ten_dich_vu,
    dich_vu.dien_tich,
    dich_vu.so_nguoi_toi_da,
    dich_vu.chi_phi_thue,
    loai_dich_vu.ten_loai_dich_vu
FROM
    dich_vu
       JOIN
    hop_dong ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
JOIN loai_dich_vu ON dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
where hop_dong.ma_dich_vu NOT IN (SELECT 
            hop_dong.ma_dich_vu
        FROM
            hop_dong
        WHERE
            hop_dong.ngay_lam_hop_dong BETWEEN '2021-01-01' AND '2024-03-31')     
            GROUP BY dich_vu.ma_dich_vu;
-- cau 8
select khach_hang.ho_ten 
from khach_hang
group by ho_ten;
-- cau 
SELECT DISTINCT
    khach_hang.ho_ten
FROM
    khach_hang;
select month(hop_dong.ngay_lam_hop_dong) as month, count(hop_dong.ma_hop_dong) as so_luong_khach_dat_phong
from hop_dong
where hop_dong.ngay_lam_hop_dong > '2020-12-31'
group by month
order by month;
-- cau 10
select h.ma_hop_dong,h.ngay_lam_hop_dong,h.ngay_ket_thuc,h.tien_dat_coc,sum(hdct.so_luong) as so_luong_dich_vu
from hop_dong h
 join hop_dong_chi_tiet hdct on h.ma_hop_dong = hdct.ma_hop_dong
group by h.ma_hop_dong;

-- cau 11
SELECT 
    dich_vu_di_kem.ma_dich_vu_di_kem,
    dich_vu_di_kem.ten_dich_vu_di_kem
FROM
    dich_vu_di_kem
        JOIN
    hop_dong_chi_tiet ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
        JOIN
    hop_dong ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
        JOIN
    khach_hang ON hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
        JOIN
    loai_khach ON khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
WHERE
    loai_khach.ten_loai_khach = 'Diamond' and (khach_hang.dia_chi like "%Vinh%" or "%Quảng Ngãi%");
    -- bai 12
    
    
SELECT 
    hop_dong.ma_hop_dong,
    nhan_vien.ho_ten,
    khach_hang.ho_ten,
    khach_hang.so_dien_thoai,
    dich_vu.ten_dich_vu,
    SUM(hop_dong_chi_tiet.so_luong)
FROM
    hop_dong
        JOIN
    nhan_vien ON hop_dong.ma_nhan_vien = nhan_vien.ma_nhan_vien
        JOIN
    khach_hang ON hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
        JOIN
    dich_vu ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
WHERE
    (MONTH(hop_dong.ngay_lam_hop_dong) > 9
        AND YEAR(hop_dong.ngay_lam_hop_dong) = 2020)
        AND (MONTH((hop_dong.ngay_lam_hop_dong) < 7
            AND YEAR(hop_dong.ngay_lam_hop_dong) = 2021) = 0)
GROUP BY hop_dong.ma_hop_dong;
-- bai 13

CREATE VIEW so_luong_max1 AS
    SELECT 
        hop_dong.ma_hop_dong,
        dich_vu_di_Kem.ma_dich_vu_di_kem,
        hdct.so_luong
    FROM
        hop_dong
            JOIN
        hop_dong_chi_tiet hdct ON hop_dong.ma_hop_dong = hdct.ma_hop_dong
            JOIN
        dich_vu_di_kem ON hdct.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem;
SELECT 
    ma_dich_vu_di_kem, SUM(so_luong) AS so_luong
FROM
    so_luong_max1
GROUP BY ma_dich_vu_di_kem
ORDER BY so_luong DESC
LIMIT 2;
-- cau 14
CREATE VIEW so_luon_min AS
    SELECT 
        dvdk.ten_dich_vu_di_kem,
        COUNT(dvdk.ma_dich_vu_di_kem) AS so_luong
    FROM
        dich_vu_di_kem dvdk
            JOIN
        hop_dong_chi_tiet ON dvdk.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
            JOIN
        hop_dong ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
            JOIN
        dich_vu ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
            JOIN
        loai_dich_vu ON dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
    GROUP BY dvdk.ten_dich_vu_di_kem
    HAVING COUNT(dvdk.ma_dich_vu_di_kem) = 1;
drop view so_luon_min;
SELECT 
    h.ma_hop_dong,
    ldv.ten_loai_dich_vu,
    dvdk.ten_dich_vu_di_kem,
    slm.so_luong
FROM
    so_luon_min slm
        JOIN
    dich_vu_di_kem dvdk ON slm.ten_dich_vu_di_kem = dvdk.ten_dich_vu_di_kem
        JOIN
    hop_dong_chi_tiet hct ON dvdk.ma_dich_vu_di_kem = hct.ma_dich_vu_di_kem
        JOIN
    hop_dong h ON hct.ma_hop_dong = h.ma_hop_dong
        JOIN
    dich_vu d ON h.ma_dich_vu = d.ma_dich_vu
        JOIN
    loai_dich_vu ldv ON d.ma_loai_dich_vu = ldv.ma_loai_dich_vu;
   
   
   -- cau 15
   
   
SELECT nv.ma_nhan_vien, nv.ho_ten, td.ten_trinh_do, bp.ten_bo_phan, nv.so_dien_thoai, nv.dia_chi
FROM nhan_vien nv
JOIN trinh_do td ON nv.ma_trinh_do = td.ma_trinh_do
JOIN bo_phan bp ON nv.ma_bo_phan = bp.ma_bo_phan
WHERE nv.ma_nhan_vien IN (
    SELECT hd.ma_nhan_vien
    FROM hop_dong hd
    WHERE YEAR(hd.ngay_lam_hop_dong) BETWEEN 2020 AND 2021
    GROUP BY hd.ma_nhan_vien
    HAVING COUNT(*) <= 3
);
-- cau 16
set sql_safe_updates = 0;
DELETE FROM nhan_vien
WHERE ma_nhan_vien NOT IN (
    SELECT hd.ma_nhan_vien
    FROM hop_dong hd
    WHERE YEAR(hd.ngay_lam_hop_dong) BETWEEN 2019 AND 2021
);

-- cau 17\

SET foreign_key_checks = 0;
update khach_hang
join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
join dich_vu on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
join hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
join dich_vu_di_kem on hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
set khach_hang.ma_loai_khach = 1
where khach_hang.ma_loai_khach = 2 and
(year(hop_dong.ngay_lam_hop_dong) = 2021) and dich_vu.chi_phi_thue + hop_dong_chi_tiet.so_luong *dich_vu_di_kem.gia > 10000000;

select * from khach_hang
join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach;
-- (SELECT 
--             hop_dong.ma_dich_vu
--         FROM
--             hop_dong
--         WHERE
--             hop_dong.ngay_lam_hop_dong BETWEEN '2021-01-01' AND '2024-03-31')     

-- cau 18
SET foreign_key_checks = 0;
delete
khach_hang
 from khach_hang
join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
where year (hop_dong.ngay_lam_hop_dong) < 2021;

select * from khach_hang
join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang;

-- cau 19
SET foreign_key_checks = 0;
update dich_vu_di_kem
join hop_dong_chi_tiet on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
set dich_vu_di_kem.gia = dich_vu_di_kem.gia *2
where hop_dong_chi_tiet.so_luong > 10;
select dich_vu_di_kem.ma_dich_vu_di_kem,dich_vu_di_kem.gia,dich_vu_di_kem.ten_dich_vu_di_kem
from dich_vu_di_kem;







-- cau 20
select nv.ma_nhan_vien, nv.ho_ten, nv.email, nv.so_dien_thoai,nv.ngay_sinh,nv.dia_chi, 'nhân viên' as 'kiểu'
from nhan_vien nv
union select kh.ma_khach_hang, kh.ho_ten, kh.email, kh.so_dien_thoai,kh.ngay_sinh,kh.dia_chi, 'khách hàng'
from khach_hang kh;

