<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>{{ $title;}}</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="{{ asset('vendors/feather/feather.css') }}">
  <link rel="stylesheet" href="{{ asset('vendors/ti-icons/css/themify-icons.css') }}">
  <link rel="stylesheet" href="{{ asset('vendors/css/vendor.bundle.base.css') }}">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="{{ asset('vendors/datatables.net-bs4/dataTables.bootstrap4.css') }}">
  <link rel="stylesheet" href="{{ asset('vendors/ti-icons/css/themify-icons.css') }}">
  <link rel="stylesheet" href="{{ asset('js/select.dataTables.min.css') }}" type="text/css" >
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="{{ asset('css/vertical-layout-light/style.css') }}">
  <!-- endinject -->
  <link rel="shortcut icon" href="{{ asset('images/favicon.png') }}" />

  <!-- datatables -->
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

  <link rel="stylesheet" href="{{ asset('datatable/css/dataTables.bootstrap.min.css') }}">
  <link rel="stylesheet" href="{{ asset('datatable/css/dataTables.bootstrap4.min.css') }}">

</head>
<body>

  <!-- container-scroller -->
  <div class="container-scroller">
    @include('partials.navbar')

     <div class="container-fluid page-body-wrapper">
       @include('partials.sidebar')

       <div class="main-panel">
        <div class="content-wrapper">
            @yield('container')
        </div>
       </div>

     </div>

  </div>
  
  <!-- jquery -->
  <script src="{{ asset('jquery/jquery-3.6.0.min.js') }}"></script>
  <!-- sweetalert2 -->
  <script src="{{ asset('js/sweetalert2.all.min.js') }}"></script>
  @include('sweetalert::alert')



  <!-- plugins:js -->
  <script src="{{ asset('vendors/js/vendor.bundle.base.js') }}"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="{{ asset('vendors/chart.js/Chart.min.js') }}"></script>
  <script src="{{ asset('vendors/datatables.net/jquery.dataTables.js') }}"></script>
  <script src="{{ asset('vendors/datatables.net-bs4/dataTables.bootstrap4.js') }}"></script>
  <script src="{{ asset('js/dataTables.select.min.js') }}"></script>

  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="{{ asset('js/off-canvas.js') }}"></script>
  <script src="{{ asset('js/hoverable-collapse.js') }}"></script>
  <script src="{{ asset('js/template.js') }}"></script>
  <script src="{{ asset('js/settings.js') }}"></script>
  <script src="{{ asset('js/todolist.js') }}"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="{{ asset('js/dashboard.js') }}"></script>
  <script src="{{ asset('js/Chart.roundedBarCharts.js') }}"></script>
  <!-- End custom js for this page-->



  <script>

    // modal hapus
    function handleDelete()
    {
        $('#modalDelete').modal('show')
    }
  
    // dataTable
    $(document).ready(function() {
        $('#myTable').DataTable();
    });

  // modal example
  // $(document).ready(function() {
  //   //  function loadData() {
  //   //         $.ajax({
  //   //             url: "",
  //   //             type: 'get',
  //   //             success: function(data) {
  //   //                 $('#contentData').html(data);
  //   //             }
  //   //         });
  //   //   }
      
  // });

  </script>


</body>

</html>
