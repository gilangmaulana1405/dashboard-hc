@extends('layouts.main')
@section('container')
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Data Universitas</h4>
                <div class="row">
                    <div class="col-12">
                     <div class="d-flex justify-content-end">
                        <a href="/pages/kampus/create" class="btn btn-info"><i class="icon-plus menu-icon "></i> Add Data</a>
                     </div>
                  </div>
                </div>
                  <div class="table-responsive pt-3">
                    <table class="table table-bordered" id="myTable">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>Nama Universitas</th>
                          <th>Alamat</th>
                          <th>Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach($kampus as $data) 
                        <tr>
                          <td>{{ $loop->iteration }}</td>
                          <td>{{ $data->nama_universitas }}</td>
                          <td>{{ $data->alamat }}</td>
                          <td>
                          <!-- <a href="#" class="badge btn-info"><i class="icon-eye menu-icon "></i> </a> -->
                          <a href="#" class="badge btn-warning"><i class="icon-camera" aria-hidden="true"></i></a>
                          <form action="#" method="POST" class="d-inline">
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