<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Models\UserManagementModel;
use App\Models\JabatanModel;
use App\Models\DivisiModel;
use App\Models\DepartementModel;
use App\Models\SubDepartementModel;
use Illuminate\Support\Facades\Validator;


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
        $user = UserManagementModel::all();
        $nama_jabatan = JabatanModel::all();
        $nama_divisi = DivisiModel::all();
        $nama_departemen = DepartementModel::all();
        $nama_subdepartemen = SubDepartementModel::all();

        return view('pages.user-management.create', compact('user', 'nama_jabatan', 'nama_divisi', 'nama_departemen', 'nama_subdepartemen'), [
            'title' => 'Tambah Data'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Validator $validator)
    {
        $validator = Validator::make($request->all(), [
            'nik' => 'required|unique:m_karyawan_user',
            'nama_karyawan' => 'required'
        ]);

        if($validator->fails()){
            return redirect()->back()->withErrors($validator->errors());        
        }

        $validated = $validator->validated();

        $validated = [
            'jabatan_id' => $request->jabatan_id,
            'divisi_id' => $request->divisi_id,
            'departemen_id' => $request->departemen_id,
            'subdepartemen_id' => $request->subdepartemen_id,
            'nik' => $request->nik,
            'nama_karyawan' => $request->nama_karyawan
        ];
        UserManagementModel::create($validated);
        return redirect('/pages/user-management')->with('success', 'Data has been created!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

     public function show(Request $request)
     {
        $data = UserManagementModel::where('id', $request->id)->get();
        return view('pages.user-management.show', [
            'title' => 'Profile Karyawan',
            'user_management' => $data
        ]);
     }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        $user = UserManagementModel::where('id', $request->id)->first();
        $nama_jabatan = JabatanModel::all();
        $nama_divisi = DivisiModel::all();
        $nama_departemen = DepartementModel::all();
        $nama_subdepartemen = SubDepartementModel::all();

        return view('pages.user-management.edit', compact('user', 'nama_jabatan', 'nama_divisi', 'nama_departemen', 'nama_subdepartemen'), [
            'title' => 'Edit Data'
        ]);
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
        $data = UserManagementModel::find($id);
        $data->nik = $request->nik;
        $data->nama_karyawan = $request->nama_karyawan;
        $data->jabatan_id = $request->jabatan_id;
        $data->divisi_id = $request->divisi_id;
        $data->departemen_id = $request->departemen_id;
        $data->subdepartemen_id = $request->subdepartemen_id;

        $data->save();

        return redirect('/pages/user-management')->with('success', 'Data has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = UserManagementModel::where('id', $id)->first();

        if ($data != null) {
            $data->delete();
            return redirect('/pages/user-management')->with('success', 'Data has been deleted!');
        }


    }

}
