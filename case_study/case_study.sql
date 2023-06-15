create database case_study;
use case_study;
CREATE TABLE `case_study`.`vi_tri` (
  `ma_vi_tri` INT NOT NULL auto_increment,
  `ten_vi_tri` VARCHAR(45) NULL,
  PRIMARY KEY (`ma_vi_tri`));
  
  CREATE TABLE `case_study`.`trinh_do` (
  `ma_trinh_do` INT NOT NULL AUTO_INCREMENT,
  `ten_trinh_do` VARCHAR(45) NULL,
  PRIMARY KEY (`ma_trinh_do`));
create table nhan_vien(
ma_nhan_vien int primary key auto_increment,
ho_ten varchar(45),
ngay_sinh date,
so_cmnd varchar(45),
luong double,
so_dien_thoai varchar(45),
email Varchar(45),
dia_chi varchar(45),
ma_vi_tri int,
ma_trinh_do int,
ma_bo_phan int
);
CREATE TABLE `case_study`.`khach_hang` (
  `ma_khach_hang` INT NOT NULL AUTO_INCREMENT,
  `ma_loai_khach_hang` INT NULL,
  `ho_ten` VARCHAR(45) NULL,
  `ngay_sinh` DATE NULL,
  `gioi tinh` BIT(1) NULL,
  `so_cmnd` VARCHAR(45) NULL,
  `so_dien_thoai` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `dia_chi` VARCHAR(45) NULL,
  PRIMARY KEY (`ma_khach_hang`));
  CREATE TABLE `case_study`.`loai_khach` (
  `ma_loai_khach` INT NOT NULL AUTO_INCREMENT,
  `ten_loai_khach` VARCHAR(45) NULL,
  PRIMARY KEY (`ma_loai_khach`));
