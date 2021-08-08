-- mst_barang definition

CREATE TABLE `mst_barang` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expired` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


-- trx_barang_keluar definition

CREATE TABLE `trx_barang_keluar` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_barang` bigint(20) unsigned NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `trx_barang_keluar_FK` (`id_barang`),
  CONSTRAINT `trx_barang_keluar_FK` FOREIGN KEY (`id_barang`) REFERENCES `mst_barang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- trx_barang_masuk definition

CREATE TABLE `trx_barang_masuk` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_barang` bigint(20) unsigned NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `trx_barang_masuk_FK` (`id_barang`),
  CONSTRAINT `trx_barang_masuk_FK` FOREIGN KEY (`id_barang`) REFERENCES `mst_barang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;