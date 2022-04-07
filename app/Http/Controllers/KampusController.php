<?php

namespace App\Http\Controllers;

use App\Models\KampusModel;
use Illuminate\Http\Request;

class KampusController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = KampusModel::get('nama_universitas', 'alamat');
        return view('pages.kampus.index', [
        'title' => 'Dashboard Kampus',
        'kampus' => $data
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.kampus.create', [
            'title' => 'Tambah Data Universitas'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'nama_universitas' => 'required',
            'alamat' => 'required',
        ]);

        KampusModel::create($validatedData);

        return redirect('/pages/kampus')->with('success', 'Data berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\KampusModel  $kampusModel
     * @return \Illuminate\Http\Response
     */
    public function show(KampusModel $kampusModel)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\KampusModel  $kampusModel
     * @return \Illuminate\Http\Response
     */
    public function edit(KampusModel $kampusModel)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\KampusModel  $kampusModel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, KampusModel $kampusModel)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\KampusModel  $kampusModel
     * @return \Illuminate\Http\Response
     */
    public function destroy(KampusModel $kampusModel)
    {
        //
    }
}
