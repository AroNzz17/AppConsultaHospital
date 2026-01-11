<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProyecto.Master" AutoEventWireup="true" CodeBehind="Consulta3.aspx.cs" Inherits="ProyHospitalGUI.Consulta3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <section class="container mt-4">
            <h2 class="text-center mb-4">Ranking de Médicos con Más Citas Completadas</h2>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div class="row justify-content-center">
                        <div class="col-md-4 d-flex align-items-center mb-3">
                            <asp:Button ID="btnConsultar" runat="server" Text="Consultar Ranking" 
                                        CssClass="btn btn-success w-100" OnClick="btnConsultar_Click" />
                        </div>
                    </div>

                    <asp:GridView ID="grvRanking" runat="server" AutoGenerateColumns="False" 
                                  EmptyDataText="No se encontraron resultados"
                                  CssClass="table table-bordered table-hover text-center">
                        <Columns>
                            <asp:BoundField DataField="IdMedico" HeaderText="ID Médico" />
                            <asp:BoundField DataField="NombreCompleto" HeaderText="Nombre del Médico" />
                            <asp:BoundField DataField="TotalCitas" HeaderText="Citas Completadas" />
                        </Columns>
                    </asp:GridView>

                    <asp:Label ID="lblMensaje" runat="server" CssClass="text-danger"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </section>
</asp:Content>
