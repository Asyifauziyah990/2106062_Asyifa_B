<?php

// Koneksi ke database
$host = "localhost";
$user = "root";
$password = "";
$database = "2106062_asyifa_fauziyah";

$conn = mysqli_connect($host, $user, $password, $database);

// Validasi data
if (empty($_POST["nama_pemesan"])) {
    die("Nama pemesan harus diisi!");
}

if (empty($_POST["nomor_telepon"])) {
    die("Nomor telepon harus diisi!");
}

if (empty($_POST["alamat"])) {
    die("Alamat harus diisi!");
}

if (empty($_POST["menu"])) {
    die("Menu harus dipilih!");
}

if (empty($_POST["jumlah"])) {
    die("Jumlah harus diisi!");
}

if (empty($_POST["harga"])) {
    die("Harga harus diisi!");
}

// Simpan data
$data = array(
    "nama_pemesan" => $_POST["nama_pemesan"],
    "nomor_telepon" => $_POST["nomor_telepon"],
    "alamat" => $_POST["alamat"],
    "menu" => $_POST["menu"],
    "jumlah" => $_POST["jumlah"],
    "harga" => $_POST["harga"],
    "total_harga" => $_POST["jumlah"] * $_POST["harga"],
);

$sql = "INSERT INTO pemesanan_makanan (nama_pemesan, nomor_telepon, alamat, menu, jumlah, harga, total_harga) VALUES (?, ?, ?, ?, ?, ?, ?)";
$stmt = mysqli_prepare($conn, $sql);
mysqli_stmt_bind_param($stmt, "ssssssi", $data["nama_pemesan"], $data["nomor_telepon"], $data["alamat"], $data["menu"], $data["jumlah"], $data["harga"], $data["total_harga"]);

// Eksekusi perintah SQL
mysqli_stmt_execute($stmt);

// Tutup koneksi
mysqli_close($conn);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="pesan-sukses">
        <?php
        // Tampilkan pesan berhasil
        echo "Pemesanan berhasil! Total harga: Rp. " . number_format($data["total_harga"], 0, ",", ".") . " untuk " . $data["menu"];
        ?>
    </div>

</body>

</html>