INSERT INTO mst_barang (nama,status,created,expired) VALUES 
('Indomie Goreng',1,'2021-08-01 16:13:48.0',NULL)
,('Mie Sedap Ayam Bawang',1,'2021-08-08 16:13:48.0',NULL)
,('Mie Sedap Goreng',1,'2021-08-08 16:13:49.0',NULL)
,('Samyang Green',1,'2021-08-08 16:13:49.0',NULL)
;

INSERT INTO trx_barang_masuk (id_barang,qty,created) VALUES 
(1,10,'2021-08-01 16:14:51.0')
,(2,5,'2021-08-08 16:14:51.0')
,(3,6,'2021-08-08 16:14:51.0')
,(4,15,'2021-08-08 16:14:51.0')
,(1,5,'2021-08-08 16:14:51.0')
;

INSERT INTO trx_barang_keluar (id_barang,qty,description,created) VALUES 
(1,5,'Kadaluarsa','2021-08-08 16:15:30.0')
,(2,2,'Rusak','2021-08-08 16:15:30.0')
;