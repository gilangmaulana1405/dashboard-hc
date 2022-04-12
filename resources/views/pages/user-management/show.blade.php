@extends('layouts.main')
@section('container')
    <div class="row">
        <div class="col-12">
             <div class="card mb-3" style="max-width: 580px;">
                   <div class="row no-gutters">
                         <div class="col-md-4">
                           <img src="{{ asset('images/dashboard/1.jpg') }}" class="card-img">
                        </div>
                    <div class="col-md-8">
                      <div class="card-body">
                        @foreach($user_management as $data) 
                          <h5 class="card-title">{{ $data->nama_karyawan }}</h5>
                          <h6 class="card-subtitle mb-3 text-muted">{{ $data->jabatan->nama_jabatan }}</h6>
                          <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, id! Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem esse explicabo, vel rerum illum voluptate, Libero magnam, molestiae debitis iste hic sed? amet velit.</p>
                          <p class="card-text"><small class="text-muted">Bergabung sejak {{ showDateTime($data->created_at, 'l, d F Y') }}</small></p>
                        @endforeach()
                      </div>
                    </div>
                 </div>
           </div>
        </div>
    </div>
@endsection()