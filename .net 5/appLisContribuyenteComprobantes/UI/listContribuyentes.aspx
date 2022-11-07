<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listContribuyentes.aspx.cs" Inherits="UI.listContribuyentes" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <title>Listado de contribuyentes</title>
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body id="page-top">

    <form id="formlistContribuyentes" runat="server">
              <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800"></h1>
                    <p class="mb-4"></p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Listado de Contribuyentes</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                             <asp:GridView runat="server" id="grvMostrarContribuyentes" CssClass="DataT table table-striped table-hover table-bordered table-responsive" OnPreRender="grvPreRender"
                                  EmptyDataText="NO HAY DATOS PARA MOSTRAR" OnRowEditing="dataTable_RowEditing">
                        <Columns>
                            <asp:CommandField HeaderText="Detalle" DeleteText="Seleccionar" EditText="Mostrar" ShowEditButton="true" ControlStyle-CssClass="btn btn-success" />

                        </Columns>
                              </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
    </form>
     <form id="formlistComprobantesContribuyentes" runat="server" visible="false">
              <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800"></h1>
                    <p class="mb-4"></p>

                  
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Listado de Contribuyentes</h6>
                            <asp:Button Text="Regresar" OnClick="btnRegresar" runat="server" />
                        </div>

                        <div class="card-body">
                              <asp:Label Text="Total Itbis : " runat="server" Font-Bold="true" Font-Size="Medium" /> <asp:Label id="lbltotalItbis" runat="server"  Font-Bold="true" Font-Size="Medium" />

                            <div class="table-responsive" style="margin-top:20px">
                             <asp:GridView runat="server" id="grvMostrarComprobantes"  CssClass="DataT table table-striped table-hover table-bordered table-responsive"  OnPreRender="grvPreRender"
                                  EmptyDataText="NO HAY DATOS PARA MOSTRAR" >
                        
                              </asp:GridView>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
    </form>
      <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

    <script>
        $(function () {
            //$('#example1').DataTable();
            $('.DataT').DataTable();
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false
            });
        });


    </script>

</body>
</html>
