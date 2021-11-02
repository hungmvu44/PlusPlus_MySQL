create table student_cms_plusplus.laptop(
id INT NOT NULL auto_increment primary key,
`name` VARCHAR(255) NULL,
url varchar(255) null,
maker varchar(45) null,
`type` varchar(45) null,
ram varchar(45) null,
`cpu` varchar(45) null,
ssd varchar(45) null,
hdd varchar(45) null,
price float null,
card varchar(45) null,
screen_resolution varchar(45) null,
screen_size float null,
sold int null,
created_timestamp timestamp(6) not null default current_timestamp(6),
last_updated_timestamp timestamp(6) not null default current_timestamp(6)


);

INSERT INTO student_cms_plusplus.laptop VALUES (1,'Laptop ASUS VivoBook X407MA-BV169T (14\" HD/N5000/4GB/1TB HDD/UHD 605/Win10/1.7 kg)','https://phongvu.vn/may-tinh-xach-tay-laptop-asus-x407ma-bv169t-n5000-s19010084.html','ASUS','VivoBook','4GB','Intel Pentium Silver N5000',NULL,'1TB',7290000,'Intel UHD Graphics 605','1366x768',14,20,'2020-06-30 21:29:25.934113','2020-06-30 21:29:25.934113'),(2,'Laptop Apple MacBook Air 13\" 2019 MVFL2SA/A (Core i5/8GB/256GB SSD/UHD 617/macOS/1.3 kg)','https://phongvu.vn/may-tinh-xach-tay-laptop-macbook-air-2019-mvfl2saa-bac-s190800125.html','APPLE','MacBook Air','8GB','Intel Core i5','256GB',NULL,36990000,'Intel UHD Graphics 617','2560x1600',13.3,50,'2020-06-30 21:31:40.663343','2020-06-30 21:31:40.663343'),(3,'Laptop Acer Nitro 5 AN515-54-51X1 (NH.Q5ASV.011) (15\" FHD/i5-9300H/8GB/256GB SSD/GTX 1050/Win10/2.3 kg)','https://phongvu.vn/may-tinh-xach-tay-laptop-acer-nitro-5-an5155451x1-nhq5asv011-i59300h-den-s190800378.html','ACER','Nitro 5','8GB','Intel Core i5 9300H','256GB',NULL,18890000,'NVIDIA GeForce GTX 1050 3GB GDDR5','1920x1080',15.6,26,'2020-06-30 21:39:53.956475','2020-06-30 21:39:53.956475'),(4,'Laptop HP 14s-dk0097AU 7VH92PA (14\" HD/AMD Ryzen 3 3200U/4GB/1TB HDD/Windows 10 Home 64-bit/1.5kg)','https://phongvu.vn/may-tinh-xach-tay-laptop-hp-14sdk0097au-7vh92pa-amd-ryzen-3-3200u-bac-s190800176.html','HP',NULL,'4GB','AMD Ryzen 3 3200U',NULL,'1TB',8990000,'AMD Radeon Vega 3 Graphics','1366x768',14,36,'2020-06-30 21:41:39.031139','2020-06-30 21:41:39.031139'),(5,'Laptop ASUS ROG Zephyrus S GX531GM-ES004T (15.6\" FHD/i7-8750H/16GB/512GB SSD/GTX 1060/Win10/2.1 kg)','https://phongvu.vn/may-tinh-xach-tay-laptop-asus-rog-zephyrus-gx531gm-es004t-i7-8750h-s19010009.html','ASUS','ROG','8GB','Intel Core i7 ','512GB','1TB',22000000,'NVIDIA GeForce GTX 1050 3GB GDDR5','1920x1080',15.6,30,'2021-10-31 14:54:52.384044','2021-10-31 14:54:52.384044'),(6,'Laptop HP OMEN 15-dh0169tx (8ZR37PA) (15\" FHD 240Hz/i9-9880H/16GB/512GB SSD/RTX 2080/Win10/2.4kg)','https://phongvu.vn/may-tinh-xach-tay-laptop-hp-omen-15dh0169tx-8zr37pa-i99880h-den-s191201191.html','HP',NULL,'16GB','Intel Core i7 8750H','512GB',NULL,50000000,'RTX 2080','2560x1600',15.6,41,'2021-10-31 14:56:57.596266','2021-10-31 14:56:57.596266');

-- 1/ find all laptops which have from 4 to 8gb ram

use student_cms_plusplus;
select `name` as 'laptop brand', ram  from laptop where ram >= 4 and ram <= 8;

-- 2/ find 8gb ram and 256 ssd laptop

select `name` as 'brand', ram , ssd from laptop where ram = 8 and ssd = 256;

-- 3/ Find laptops have a as first character in maker column

select maker, `name` from laptop where maker LIKE '%a';

-- 4/ find laptops have intel CPU

select `name`, cpu as 'CPU' from laptop where cpu like '%Intel%';

-- 5/ laptops which sold more than 30

select `name`, sold from laptop where sold >= 30 order by sold DESC;