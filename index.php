<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Pemesanan Makanan</title>
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <h1>Pemesanan Makanan</h1>

    <form action="proses_input.php" method="post">
        <input type="text" name="nama_pemesan" placeholder="Nama Pemesan" required>
        <input type="text" name="nomor_telepon" placeholder="Nomor Telepon" required>
        <input type="text" name="alamat" placeholder="Alamat" required>
        <select name="menu">
            <option value="Nasi Goreng">Nasi Goreng</option>
            <option value="Mie Goreng">Mie Goreng</option>
            <option value="Soto Ayam">Soto Ayam</option>
            <option value="Sate Ayam">Sate Ayam</option>
        </select>
        <input type="number" name="jumlah" placeholder="Jumlah" required>
        <input type="number" name="harga" placeholder="Harga" required>
        <input type="submit" value="Pesan">
    </form>
</body>

</html>