<?php

namespace App\Http\Controllers;

use App\Models\m_mahasiswa;
use Illuminate\Http\Request;

class c_mahasiswa extends Controller
{
   public function index() {
    $mahasiswa = m_mahasiswa::all();
    return view('mahasiswa.index',compact(['mahasiswa']));
   }

   public function create()
   {
        return view('mahasiswa.create');
   }

   public function store(Request $request)
   {
    // dd($request->except(['_token','submit']));
    m_mahasiswa::create($request->except(['_token','submit']));
    return redirect('/mahasiswa');
   }
   public function edit($id)
   {
  
    $mahasiswa = m_mahasiswa::find($id);
    return view('mahasiswa.edit');
    
   }
}
