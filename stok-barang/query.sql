-- menampilkan jumlah barang masuk per-item
select
	master.id,
	master.nama,
	sum(masuk.qty) as jumlah_masuk
from mst_barang master
left join trx_barang_masuk masuk on masuk.id_barang = master.id 
group by master.id, master.nama
;

-- menampilkan jumlah barang keluar per-item
select
	master.id,
	master.nama,
	sum(keluar.qty) as jumlah_keluar
from mst_barang master
left join trx_barang_keluar keluar on keluar.id_barang = master.id
group by master.id, master.nama 
;

-- menampilkan jumlah barang masuk dan keluar berserta sisa ketersediaan barang per-item
select
	master.id,
	master.nama,
	sum(masuk.qty) * count(DISTINCT masuk.id) / count(*) as jumlah_masuk,
	sum(keluar.qty) * count(DISTINCT keluar.id) / count(*) as jumlah_keluar,
	COALESCE(sum(masuk.qty) * count(DISTINCT masuk.id) / count(*), 0) - coalesce(sum(keluar.qty) * count(DISTINCT keluar.id) / count(*), 0) as sisa
from mst_barang master
left join trx_barang_masuk masuk on masuk.id_barang = master.id
left join trx_barang_keluar keluar on keluar.id_barang = master.id
group by master.id, master.nama 
;