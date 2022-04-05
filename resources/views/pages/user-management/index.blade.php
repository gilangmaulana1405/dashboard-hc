@extends('layouts.main')
@section('container')
          <div class="row">
             @if(session()->has('success'))
                <div class="alert alert-success d-flex align-items-center col-6" role="alert">
                  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
                      <div>
                        {{ session('success') }}
                      </div>       
                </div>
              @endif()
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Data Karyawan</h4>
                <div class="row">
                    <div class="col-12">
                     <div class="d-flex justify-content-end">
                        <!-- <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modalTambah"><i class="icon-plus menu-icon "></i> Add Data</button> -->
                        <a href="/pages/user-management/create" class="btn btn-info"><i class="icon-plus menu-icon "></i> Add Data</a>
                     </div>
                  </div>
                </div>
                  <div class="table-responsive pt-3">
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>NIK</th>
                          <th>Nama Karyawan</th>
                          <th>Jabatan</th>
                          <th>Divisi</th>
                          <th>Departemen</th>
                          <th>Sub Departemen</th>
                          <th>Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach($user_management as $data) 
                        <tr>
                          <td>{{ $loop->iteration }}</td>
                          <td>{{ $data->nik }}</td>
                          <td>{{ $data->nama_karyawan }}</td>
                          <td>{{ $data->jabatan->nama_jabatan }}</td>
                          <td>{{ $data->divisi->nama_divisi }}</td>
                          <td>{{ $data->departemen->nama_departemen }}</td>
                          <td>{{ $data->subdepartemen->nama_sub_departemen }}</td>
                          <td>
                          <a href="#" class="badge btn-info"><i class="icon-eye menu-icon "></i> </a>
                          <a href="#" class="badge btn-warning"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                          <form action="{{ route('delete.user', $data->id) }}" method="POST" class="d-inline">
                            @csrf
                            {{ method_field('DELETE') }}
                            <button class="badge btn-danger border-0" onclick="return confirm('Are you sure want to delete this post?')"><i class="icon-trash "></i></button>
                          </form>
                          </td>
                        </tr>
                        @endforeach
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021.  Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->

    <!-- Modal -->
    <div class="modal fade" id="modalTambah" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="modalTambah">Modal title</h5>
            <button type="button" class="mdi-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>
        </div>
      </div>
    </div>

@endsection()