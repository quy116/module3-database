create database ss2;
use ss2;
CREATE TABLE phieu_xuat (
    so_px INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ngay_xuat DATE
);

CREATE TABLE phieu_nhap (
    so_pn INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ngay_nhap DATE
);


CREATE TABLE vat_tu (
    ma_vat_tu INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ten_vat_tu VARCHAR(55)
);

CREATE TABLE nha_cung_cap (
    ma_nha_cc INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ten_nha_cc VARCHAR(55),
    dia_chi VARCHAR(55)
);

CREATE TABLE don_dh (
    so_dh INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ngay_dat_hang DATE,
    ma_nha_cc INT,
    FOREIGN KEY (ma_nha_cc)
        REFERENCES nha_cung_cap (ma_nha_cc)
);

CREATE TABLE so_dien_thoai (
    so_dien_thoai BIGINT NOT NULL PRIMARY KEY,
    ma_nha_cc INT,
    FOREIGN KEY (ma_nha_cc)
        REFERENCES nha_cung_cap (ma_nha_cc)
);

CREATE TABLE chi_tiet_phieu_xuat (
    so_px INT,
    ma_vat_tu INT,
    don_gia_xuat INT,
    sl_xuat INT,
    FOREIGN KEY (so_px)
        REFERENCES phieu_xuat (so_px),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    PRIMARY KEY (so_px , ma_vat_tu)
);

CREATE TABLE chi_tiet_phieu_nhap (
    so_pn INT,
    ma_vat_tu INT,
    don_gia_nhap INT,
    sl_nhap INT,
    FOREIGN KEY (so_pn)
        REFERENCES phieu_nhap (so_pn),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    PRIMARY KEY (so_pn , ma_vat_tu)
);

CREATE TABLE chi_tiet_don_hang (
    so_dh INT,
    ma_vat_tu INT,
    FOREIGN KEY (so_dh)
        REFERENCES don_dh (so_dh),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    PRIMARY KEY (so_dh , ma_vat_tu)
);
