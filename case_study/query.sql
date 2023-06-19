use case_study;
SELECT 
    *
FROM
    nhan_vien
WHERE
    (SUBSTRING_INDEX(ho_ten, ' ', - 1) LIKE '%H%')
        OR (SUBSTRING_INDEX(ho_ten, ' ', - 1) LIKE '%T%')
        OR (SUBSTRING_INDEX(ho_ten, ' ', - 1) LIKE '%K%');
-- cau 3
SELECT 
    *
FROM
    khach_hang
WHERE
    YEAR(CURDATE()) - YEAR(ngay_sinh) BETWEEN 18 AND 50
        AND (dia_chi like "%đà nẵng%"
        OR dia_chi like "%Quảng trị%");
  select khach_hang.ho_ten,count(hop_dong.ma_hop_dong) as "dat_phong"
  from khach_hang
  join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
where loai_khach.ten_loai_khach = "Diamond"
group by khach_hang.ho_ten
order by dat_phong;
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
    kh.ho_ten,
    lk.ten_loai_khach,
    hd.ma_hop_dong,
    dv.ten_dich_vu,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc;

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
select distinct khach_hang.ho_ten
from khach_hang;
-- cau19
select month(hop_dong.ngay_lam_hop_dong) as month, count(hop_dong.ma_hop_dong) as so_luong_khach_dat_phong
from hop_dong
where hop_dong.ngay_lam_hop_dong > '2020-12-31'
group by month
order by month;
-- cau 10
select h.ma_hop_dong,h.ngay_lam_hop_dong,h.ngay_ket_thuc,h.tien_dat_coc,sum(hdct.so_luong) as so_luong_dich_vu
from hop_dong h
left join hop_dong_chi_tiet hdct on h.ma_hop_dong = hdct.ma_hop_dong
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
    loai_khach.ten_loai_khach = 'Diamond' and (khach_hang.dia_chi like "%Vinh%" or "%Quảng Ngãi%")