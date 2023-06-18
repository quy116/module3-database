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
        AND (dia_chi = "%đà nẵng%"
        OR dia_chi = "%Quảng trị%");
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


  
