<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProyecto.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyHospitalGUI.Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>

    <div id="hospitalCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner" style="height: 70vh;">
            <div class="carousel-item active">
                <img src="/Content/Images/hospital1.jpg" class="d-block w-100" style="height: 100%; object-fit: cover;" alt="Foto 1">
            </div>
            <div class="carousel-item">
                <img src="/Content/Images/hospital2.jpg" class="d-block w-100" style="height: 100%; object-fit: cover;" alt="Foto 2">
            </div>
            <div class="carousel-item">
                <img src="/Content/Images/hospital3.jpg" class="d-block w-100" style="height: 100%; object-fit: cover;" alt="Foto 3">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#hospitalCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#hospitalCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>

    <section class="folded-panels container">
        <div class="panel">
            <i class="fa-solid fa-city menu-icono"></i>
            <h3 class="grosor-1">DEPARTAMENTOS</h3>
            <p>Busca nuestros departamentos</p>
        </div>
        <div class="panel">
            <i class="fa-solid fa-house-medical menu-icono"></i>
            <h3>SERVICIOS MÉDICOS</h3>
            <p>Lista completa de servicios médicos</p>
        </div>
        <div class="panel">
            <i class="fa-solid fa-user-doctor menu-icono"></i>
            <h3>ENCUENTRA UN DOCTOR</h3>
            <p>Encuentra un doctor de cada departamento</p>
        </div>
        <div class="panel">
            <i class="fa-solid fa-comment-exclamation menu-icono"></i>
            <h3>SOLICITAR UNA CITA</h3>
            <p>Llámanos o rellena un formulario</p>
        </div>
    </section>

    
    <div class="container">
        <div class="row g-4 justify-content-center">
            <div class="col-md-4">
                <div class="card text-center shadow-sm">
                    <div class="card-body">
                        <h6 class="card-title text-primary">Pacientes Activos</h6>
                        <p class="card-text"><asp:Literal ID="litPacAct" runat="server"></asp:Literal></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center shadow-sm">
                    <div class="card-body">
                        <h6 class="card-title text-success">Habitaciones Disponibles</h6>
                        <p class="card-text"> <asp:Literal ID="litHabDisp" runat="server"></asp:Literal> </p>
                    </div>
                </div>
            </div>
        </div>
      </div>

    <section class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 mb-4">
                <h4 class="mb-3">Cantidad de Citas Mensuales</h4>
                <asp:Chart ID="grafCitasMes" runat="server" 
                           Width="500px" Height="350px" 
                           CssClass="shadow rounded border p-2 bg-white">
                    <Series>
                        <asp:Series Name="Series1" ChartType="Column" Color="#007bff"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </div>

            <div class="col-md-6 mb-4">
                <h4 class="mb-3">Cantidad de Citas Completadas</h4>
                <asp:Chart ID="grafCitasMesCom" runat="server" 
                           Width="500px" Height="350px" 
                           CssClass="shadow rounded border p-2 bg-white">
                    <Series>
                        <asp:Series Name="Series1" ChartType="Column" Color="#28a745"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </div>
        </div>
    </section>


    <div class="container mt-5">
        <div class="titulo-reduc">
            <h2 class="titulo-general">Bienvenido al Hospital Edgardo Rebagliati Martins</h2>
            <p id="slogan">Hemos construido una relación duradera basada en la confianza.</p>
        </div>
        <div class="row">
            <div class="col-8">
                <p>La atención personalizada al paciente es lo que distingue al
                    Hospital Edgardo Rebagliati Martins. Al visitar uno de nuestros campus en Jesús María, recibirá atención de primera clase.
                    Médicos especialistas expertos y un personal clínico atento le brindan una experiencia de atención médica excepcional. 
                    La atención personalizada al paciente es lo que distingue al Hospital Edgardo Rebagliati.</p>
                <div class="titulo-linea">
                    <h3>INSTALACIONES MÉDICAS MODERNAS</h3>
                </div>
                <p>Con la ampliación de nuestras áreas de atención, podremos aumentar significativamente la disponibilidad de horarios para consultas médicas, facilitando así el acceso a citas en los momentos que mejor se ajusten a tu rutina diaria. Además, hemos incorporado una serie de nuevos departamentos y especialidades para brindarte un servicio aún más completo.<br /><br />
                    Entre las nuevas áreas destacan Dermatología, Cirugía Plástica, Odontología, y muchas más especialidades médicas que atenderán de manera integral tus necesidades de salud, estética y bienestar. Todo esto con el respaldo de un equipo de profesionales altamente capacitados y el compromiso constante de ofrecerte la mejor calidad en atención médica.</p>
            </div>
            <div class="col-4">
                <div class="proyectos-card">
                    <img src="/Content/Images/hospital4.png" class="proyectos-card-img" alt="">
                    <div class="proyectos-card-text">
                        <h3>Guía para pacientes y visitantes</h3>
                        <p>Planifique su visita a nuestro Hospital</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="services-section container text-center my-5">
        <h2 class="fw-bold text-uppercase">Nuestros servicios</h2>
        <p class="text-muted">Tenemos variedad de servicios</p>

        <div class="row justify-content-center mt-4">
            <div class="col-md-4 mb-4">
                <div class="service-card">
                    <i class="fa-solid fa-stethoscope fa-2x mb-2 pt-2 menu-icono2"></i>
                    <h5 class="fw-bold text-uppercase mt-3">Consultas Médicas</h5>
                    <p class="text-muted small">Atención especializada en múltiples áreas médicas con profesionales capacitados.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="service-card">
                    <i class="fa-solid fa-ambulance fa-2x mb-2 pt-2 menu-icono2"></i>
                    <h5 class="fw-bold text-uppercase mt-3">Emergencias 24/7</h5>
                    <p class="text-muted small">Atención inmediata y eficiente para casos de emergencia médica en cualquier momento.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="service-card">
                    <i class="fa-solid fa-heart-pulse fa-2x mb-2 pt-2 menu-icono2"></i>
                    <h5 class="fw-bold text-uppercase mt-3">Cirugías y Tratamientos</h5>
                    <p class="text-muted small">Instalaciones modernas y tecnología avanzada para procedimientos quirúrgicos.</p>
                </div>
            </div>
        </div>
    </section>

    <div class="proyectos-padding">
        <div class="proyectos-container">
            <h2 class="pb-4 text-center text-uppercase fw-bold">Instalaciones</h2>
            <div class="proyectos-row">
                <div class="proyectos-col">
                    <div class="proyectos-card">
                        <img src="/Content/Images/adm1.jpg" class="proyectos-card-img" alt="">
                        <div class="proyectos-card-text">
                            <h3>Zona de Administración</h3>
                            <p>Departamento que se encarga de la gestión, coordinación y control</p>
                        </div>
                    </div>
                </div>
                <div class="proyectos-col">
                    <div class="proyectos-card">
                        <img src="/Content/Images/adm2.png" class="proyectos-card-img" alt="">
                        <div class="proyectos-card-text">
                            <h3>Consultorios</h3>
                            <p>Contamos con más de 100 consultorios</p>
                        </div>
                    </div>
                </div>
                <div class="proyectos-col">
                    <div class="proyectos-card">
                        <img src="/Content/Images/adm3.jpg" class="proyectos-card-img" alt="">
                        <div class="proyectos-card-text">
                            <h3>Habitaciones</h3>
                            <p>Contamos con gran variedad de habitaciones para post-operación</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container mt-5">
        <h3 class="pb-4 text-center text-uppercase fw-bold">Lo que dicen nuestros pacientes</h3>
        <div class="row">
            <div class="col-md-6 mb-4">
                <div class="comentario-card">
                    <div class="comentario-header">
                        <div class="avatar-fake">AG</div>
                        <div>
                            <strong class="nombre-paciente">Ana Gutiérrez</strong><br>
                            <span class="sub-text">Paciente verificada</span>
                        </div>
                    </div>
                    <p class="comentario-text">"Recibí una atención increíble desde el primer momento. El personal fue muy profesional."</p>
                </div>
            </div>
            <div class="col-md-6 mb-4">
                <div class="comentario-card">
                    <div class="comentario-header">
                        <div class="avatar-fake">LM</div>
                        <div>
                            <strong class="nombre-paciente">Luis Mendoza</strong><br>
                            <span class="sub-text">Paciente verificada</span>
                        </div>
                    </div>
                    <p class="comentario-text">"Gracias al Hospital Rebagliati, hoy mi madre se encuentra sana. ¡Eternamente agradecido!"</p>
                </div>
            </div>
        </div>
    </div>

    <div class="container mt-5 mb-5">
        <h3 class="pb-4 text-center text-uppercase fw-bold">¿Dónde estamos?</h3>
        <div class="row">
            <div class="col">
                <iframe 
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.496665835738!2d-77.0403748!3d-12.0781132!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c8f16c000001%3A0x9cef6373b8dba70d!2sHospital%20Edgardo%20Rebagliati%20Martins!5e0!3m2!1ses-419!2spe!4v1751084380736!5m2!1ses-419!2spe"
                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
            <div class="col d-flex justify-content-center">
                <div class="info-box">
                    <div class="section">
                        <h3>Horario</h3>
                        <table class="hours-table">
                            <tr><td>LUNES</td><td>09:00–20:00</td></tr>
                            <tr><td>MARTES</td><td>09:00–21:00</td></tr>
                            <tr><td>MIÉRCOLES</td><td>09:00–20:00</td></tr>
                            <tr><td>JUEVES</td><td>09:00–20:00</td></tr>
                            <tr><td>VIERNES</td><td>09:00–21:00</td></tr>
                            <tr><td>SÁBADO</td><td>09:00–18:00</td></tr>
                            <tr><td>DOMINGO</td><td>11:00–19:00</td></tr>
                        </table>
                    </div>
                    <div class="section">
                        <h3>IMPORTANTE</h3>
                        <p>
                            Solo se atenderá a los pacientes con su comprobante de cita, en caso contrario se le tendrá que sacar <strong>otra cita.</strong>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</main>
</asp:Content>
