<?php include 'layout2/header.php'; ?>
        <h1 class="mb-3">DATA BARANG</h1>
        <a href="form-tambah.php" class="btn btn-primary mb-1">Tambah</a>
        <table class="table table-bordered table-striped align-middle text-center">
          <thead>
            <tr>
              <th>NO</th>
              <th scope="col">NAMA BARANG</th>
              <th scope="col">JUMLAH</th>
              <th scope="col">HARGA</th>
              <th scope="col">TANGGAL</th>
              <th scope="col">AKSI</th>
            </tr>
          </thead>
          <tbody>
            <?php $no = 1; ?>
            <!-- Perbaikan: Tambahkan tanda kurung kurawal buka { -->
            <?php foreach ($data_barang as $barang) : ?>
            <tr>
              <td><?= $no++; ?></td>
                    <td><?= $barang['nama']; ?></td>
                    <td>Rp. <?=number_format($barang['harga'], 0, ',', ','); ?></td>
                    <td><?= $barang['jumlah']; ?></td>
                    <td><?= $barang['tanggal']; ?></td>
                    <td width="15%" class="text-center">
                        <button type="button" class="btn btn-primary btn-sm">Edit</button>
                        <button type="button" class="btn btn-success btn-sm">Hapus</button>
                    </td>
            </tr>
            <?php endforeach; ?>
          </tbody>
        </table>
    </div>

    <?php include 'layout2/footer.php'; ?>
    