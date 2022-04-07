@extends('layouts.main')
@section('container')
     <div class="row d-flex justify-content-center">
              <div class="col-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                    <h4 class="card-title">Tambah Data Universitas</h4>
                    <form class="forms-sample" action="/pages/kampus" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="nama_universitas">Nama Universitas</label>
                            <input type="numeric" class="form-control @error('nama_universitas') is-invalid @enderror" name="nama_universitas" placeholder="nama_universitas" value="{{ old('nama_universitas') }}">
                            @error('nama_universitas')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="alamat">Alamat</label>
                            <input type="text" class="form-control form-control @error('alamat') is-invalid @enderror" name="alamat" placeholder="Nama Karyawan" value="{{ old('alamat') }}">
                             @error('alamat')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>  

                        <button type="submit" class="btn btn-primary mr-2">Submit</button>
                        <a href="/pages/user-management/" class="btn btn-light">Cancel</a>
                    </form>
                    </div>
                </div>
              </div>
            </div>
@endsection()