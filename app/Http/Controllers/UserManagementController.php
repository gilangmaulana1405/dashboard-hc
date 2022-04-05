<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Models\UserManagementModel;
use App\Models\JabatanModel;
use App\Models\DivisiModel;
use App\Models\DepartementModel;
use App\Models\SubDepartementModel;


class UserManagementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = UserManagementModel::all();
        return view('pages.user-management.index', [
            'title' => 'User Management',
            'user_management' => $data
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.user-management.create', [
            'title' => 'Add Data',
            'nama_jabatan' => JabatanModel::all(),
            'nama_divisi' => DivisiModel::all(),
            'nama_departemen' => DepartementModel::all(),
            'nama_sub_departemen' => SubDepartementModel::all()
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
        // $validatedData = $request->validate([
        //      'jabatan_id' => 'required',
        //     'divisi_id' => 'required',
        //     'departemen_id' => 'required',
        //     'sub_departemen_id' => 'required',
        //     'nik' => 'required',
        //     'nama_karyawan' => 'required'
        // ]);

        $validatedData = [
            'jabatan_id' => $request->jabatan_id,
            'divisi_id' => $request->divisi_id,
            'departemen_id' => $request->departemen_id,
            'subdepartemen_id' => $request->subdepartemen_id,
            'nik' => $request->nik,
            'nama_karyawan' => $request->nama_karyawan
        ];
        UserManagementModel::create($validatedData);
        return redirect('/pages/user-management')->with('success', 'berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // UserManagementModel::destroy($usermanagementmodel->id);
        // $data = UserManagementModel::find(1);
        // $data->delete();
        // return redirect('/pages/user-management')->with('success', 'berhasil dihapus');

        $data =UserManagementModel::where('id',$id)->first();

        if ($data != null) {
            $data->delete();
            return redirect('/pages/user-management')->with('success', 'berhasil dihapus');
        }
        return redirect('/pages/user-management')->with('error', 'gagal dihapus');

        }

}
