<a href="/mahasiswa/create">Tambah Mahasiswa</a>
<table border="1">
    <tr>
        <th>no</th>
        <th>Nim</th>
        <th>Nama</th>
        <th>Jenis Kelamin</th>
        <th>Action</th>

    </tr>
    @foreach ($mahasiswa as $m )
        
   
    <tr>
        <td>{{$m->id}}</td>
        <td>{{$m->nim}}</td>
        <td>{{$m->nama}}</td>
        <td>{{$m->jenis_kelamin}}</td>
        <td><a href="/mahasiswa/{{$m->id}}/edit">Edit</a></td>
    </tr>
    @endforeach
</table>