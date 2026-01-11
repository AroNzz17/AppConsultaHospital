<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProyecto.Master" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="ProyHospitalGUI.Consulta" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            background-color: rgba(0, 0, 0, 0.5);
            width: 100vw;
            height: 100vh;
            z-index: 9999;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .overlayContent {
            background: white;
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 0 10px black;
        }

        .overlayContent h2 {
            font-size: 18px;
            color: #333;
            margin-bottom: 15px;
        }

        .overlayContent img {
            width: 60px;
        }
    </style>

    <section class="container" readonly="True">
        <h2>Consulta de Citas por Paciente</h2>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="row">
                    <div class="col-md-6">
                        <div class="d-flex align-items-center mb-3">
                            <p class="parametros mb-0 me-2">Dni del paciente:</p>
                            <asp:TextBox ID="txtCod" runat="server" CssClass="form-control" />
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <p class="parametros mb-0 me-2">Fecha de inicio:</p>
                            <asp:TextBox ID="txtFecIni" runat="server" CssClass="form-control" />
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd/MM/yyyy" TargetControlID="txtFecIni" />
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="d-flex align-items-center mb-3">
                            <p class="parametros mb-0 me-2">Fecha de fin:</p>
                            <asp:TextBox ID="txtFecFin" runat="server" CssClass="form-control" />
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" TargetControlID="txtFecFin" />
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <asp:Button ID="btnConsultar" runat="server" Text="Consultar" CssClass="btn btn-primary" OnClick="btnConsultar_Click" />
                        </div>
                    </div>
                </div>

                <div class="row pt-5">
                    <div class="col-md-6">
                        <div class="d-flex align-items-center mb-3">
                            <p class="parametros mb-0 me-2">Nombre completo:</p>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" ReadOnly="True" />
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <p class="parametros mb-0 me-2">Fecha de Nacimiento:</p>
                            <asp:TextBox ID="txtFecNac" runat="server" CssClass="form-control" ReadOnly="True" />
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="d-flex align-items-center mb-3">
                            <p class="parametros mb-0 me-2">Estado Civil:</p>
                            <asp:TextBox ID="txtEstCiv" runat="server" CssClass="form-control" ReadOnly="True" />
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <p class="parametros mb-0 me-2">Estado:</p>
                            <asp:TextBox ID="txtEstado" runat="server" CssClass="form-control" ReadOnly="True" />
                        </div>
                    </div>
                </div>

                <asp:GridView ID="grvCitas" runat="server" AutoGenerateColumns="False" EmptyDataText="No se encontraron Citas" CssClass="GridViewEstilo mb-3">
                    <Columns>
                        <asp:BoundField DataField="id_cita" HeaderText="Codigo" />
                        <asp:BoundField DataField="NombrePaciente" HeaderText="Nombre del Paciente" />
                        <asp:BoundField DataField="ApellidoPaciente" HeaderText="Apellido del Paciente" />
                        <asp:BoundField DataField="dniPaciente" HeaderText="Dni del Paciente" />
                        <asp:BoundField DataField="NombreMedico" HeaderText="Nombre del Medico" />
                        <asp:BoundField DataField="ApellidoMedico" HeaderText="Apellido del Medico" />
                        <asp:BoundField DataField="EspecialidadMedico" HeaderText="Especialidad" />
                        <asp:BoundField DataField="fecha_cita" HeaderText="Fecha" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="motivo_cita" HeaderText="Motivo" />
                    </Columns>
                </asp:GridView>
                                <!-- BOTÓN OCULTO PARA DISPARAR EL MODAL -->
                <asp:LinkButton ID="lnkMensaje" runat="server" />

                <!-- PANEL DEL POPUP -->
<asp:Panel ID="pnlMensaje" runat="server" CssClass="modal-content shadow rounded-3"
           Style="width: 100%; max-width: 500px; margin: auto; background-color: white;">
    
    <!-- Header -->
    <div class="modal-header bg-danger text-white rounded-top-3 px-4 py-2">
        <h5 class="modal-title m-0">Mensaje</h5>
        <asp:ImageButton 
            ID="btnCerrar" 
            runat="server" 
            ImageUrl="~/Content/Images/cerrar.png" 
            CausesValidation="False" 
            Width="20px" 
            Height="20px"
            CssClass="ms-auto"
            ToolTip="Cerrar" />
    </div>

    <!-- Body -->
    <div class="modal-body text-center px-4 py-3">
        <asp:Label ID="lblMensajePopup" runat="server" CssClass="fw-semibold text-danger fs-6" />
    </div>

    <!-- Footer -->
    <div class="modal-footer justify-content-center border-0 px-4">
        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="btn btn-outline-danger px-4 mb-2" CausesValidation="False" />
    </div>

</asp:Panel>


                <!-- EXTENDER DEL MODAL POPUP -->
                <ajaxToolkit:ModalPopupExtender ID="PopMensaje" runat="server"
                    TargetControlID="lnkMensaje"
                    PopupControlID="pnlMensaje"
                    BackgroundCssClass="FondoAplicacion"
                    OkControlID="btnAceptar"
                    DropShadow="true"
                    CancelControlID="btnCerrar" />

            </ContentTemplate>
        </asp:UpdatePanel>

        <!-- UpdateProgress con el gif de carga -->
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="0" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                <div class="overlay">
                    <div class="overlayContent">
                        <h2>Espere un momento...</h2>
                        <img src="/Content/Images/cargar.gif" alt="Cargando..." />
                    </div>
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </section>
</asp:Content>
