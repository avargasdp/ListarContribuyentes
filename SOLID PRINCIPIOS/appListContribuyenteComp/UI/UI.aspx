<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UI.aspx.cs" Inherits="UI._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
                            <asp:CommandField HeaderText="Detalle" DeleteText="Seleccionar" ShowEditButton="true" ControlStyle-CssClass="btn btn-success" />

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
                            <div class="table-responsive">
                             <asp:GridView runat="server" id="grvMostrarComprobantes"  CssClass="DataT table table-striped table-hover table-bordered table-responsive"  OnPreRender="grvPreRender"
                                  EmptyDataText="NO HAY DATOS PARA MOSTRAR" >
                        
                              </asp:GridView>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
    </form>
    </div>

</asp:Content>
