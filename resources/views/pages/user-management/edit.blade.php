@extends('layouts.main')
@section('container')
     <div class="row d-flex justify-content-center">
              <div class="col-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                    <h4 class="card-title">Edit Data Karyawan</h4>
                    <form class="forms-sample" action="{{ route('update.user', $user->id) }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label for="nik">NIK</label>
                            <input type="numeric" class="form-control @error('nik') is-invalid @enderror" name="nik" placeholder="NIK" value="{{ old('nik', $user->nik) }}">
                            @error('nik')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="nama_karyawan">Nama Karyawan</label>
                            <input type="text" class="form-control form-control @error('nama_karyawan') is-invalid @enderror" name="nama_karyawan" placeholder="Nama Karyawan" value="{{ old('nama_karyawan', $user->nama_karyawan) }}">
                             @error('nama_karyawan')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="jabatan">Jabatan</label>
                            <select class="form-control" name="jabatan_id">
                                @foreach($nama_jabatan as $jabatan)
                                    <option value="{{ $jabatan->id }}"  {{ old('jabatan_id', $user->jabatan_id) == $jabatan->id ? 'selected' : ''}} >{{ $jabatan->nama_jabatan }}</option>
                                @endforeach()
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="divisi">Divisi</label>
                            <select class="form-control" name="divisi_id">
                                @foreach($nama_divisi as $divisi)
                                    <option value="{{ $divisi->id }}"  {{ old('divisi_id', $user->divisi_id) == $divisi->id ? 'selected' : '' }} >{{ $divisi->nama_divisi }}</option>
                                @endforeach()
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="departemen">Departement</label>
                            <select class="form-control"  name="departemen_id">
                                @foreach($nama_departemen as $departemen)
                                    <option value="{{ $departemen->id }}" {{ old('departemen_id', $user->departemen_id) == $departemen->id ? 'selected' : '' }}  > {{ $departemen->nama_departemen }}</option>
                                @endforeach()
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="sub_departemen">Sub Departement</label>
                            <select class="form-control" name="subdepartemen_id">
                                @foreach($nama_subdepartemen as $subdepartemen)
                                    <option value="{{ $subdepartemen->id }}" {{ old('subdepartemen_id', $user->subdepartemen_id) == $subdepartemen->id ? 'selected' : '' }} >{{ $subdepartemen->nama_sub_departemen }}</option>
                                @endforeach()
                            </select>
                        </div>
                        
                        <!-- <button type="submit" class="btn btn-primary mr-2">Submit</button> -->
                        <button type="submit" class="btn btn-primary mr-2">Submit</button>
                        <a href="/pages/user-management/" class="btn btn-light">Cancel</a>
                    </form>
                    </div>
                </div>
              </div>
            </div>
@endsection()