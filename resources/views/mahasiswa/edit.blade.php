<h1> Edit Mahasiswa </h1>

<form action="/mahasiswa/store" method="POST">
    @csrf
    <input type="text" name="nim" placeholder="Nomor Induk Mahasiswa"> <br>
    <input type="text" name="nama" placeholder="Nama Mahasiswa"><br>
    <select name="jenis_kelamin">
        <option value="">Pilih Jenis Kelamin</option>
        <option value="laki-laki">Laki - Laki</option>
        <option value="laki-laki">Perempuan</option>
    </select><br>
    <input type="submit" name="submit" value="Save">
</form>