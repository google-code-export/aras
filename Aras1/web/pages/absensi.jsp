<%@page import="entity.DaftarAbsensi"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="entity.DaftarSiswa"%>
<%@page import="entity.Siswa"%>
<%@page import="java.util.Iterator"%>
<%@page import="entity.Absensi"%>
<%@page import="java.util.List"%>

        
        

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<% HttpSession sesAbs = request.getSession(true);%>
        <%Long idKelas=(Long)sesAbs.getAttribute("idKelas");%>
        <% DaftarAbsensi dafAb=new DaftarAbsensi();%>
        <% List <Absensi> absen =dafAb.getAbsensis(idKelas) ; %>
        <% Iterator <Absensi> itabsen = absen.iterator (); %>
        <% DaftarSiswa dafsiswa=new DaftarSiswa();%>
        <% List <Siswa> siswa = dafsiswa.getSiswas(idKelas); %>
        <% Iterator <Siswa> itsiswa = siswa.iterator (); %>
        
        <%Date tanggal = new Date();%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Absensi</title>
<style type="text/css">
body,td,th {
	color: #000;
	font-weight: bold;
}
body {
	background-color: #B9DDF3;
}
p {
	font-family: Arial;
	font-size: 14px;
}
.container .content table tr td h2 form table tr td div {
	font-size: 16px;
}
.nama {
	font-family: Arial;
	font-size: 14px;
}
</style>
</head>
</head>

<body>
<div class="container">
  <div class="header"><!-- end .header -->
    <table width="100%" border="0">
      <tr>
          <td bgcolor="#FFFFFF"><img src="images/arasz.JPG" width="936" height="142" />&nbsp;</td>
      </tr>
    </table>
  </div>
  <div class="sidebar1">
    <table width="162" border="1">
      <tr>
        
      </tr>
    </table>
  <!-- end .sidebar1 --></div>
  <div class="content">
    <table width="100%" border="0">
      <tr>
        <td width="15%" height="241"><img src="images/bg4a.JPG" width="180" height="600" /></td>
        <td width="85%" valign="top"><table width="100%" border="0">
          <tr>
            <td width="19%" align="center">Halaman Muka</td>
            <td width="11%" align="center">Pengguna</td>
            <td width="10%" align="center">Siswa</td>
            <td width="11%" align="center">Kelas</td>
            <td width="11%" align="center">Semester</td>
            <td width="10%" align="center" bgcolor="#188DC2">Absensi</td>
            <td width="11%" align="center">Laporan</td>
            <td width="17%" align="center"><a href="Logout">Log Out</a></td>
          </tr>
        </table>
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI --> 
  <title>absensi</title>
        
        
    </head>
    
    <body>
        <h1>Tambah Absensi</h1>
        <h3 align="center"><font color="red">${errorAbsen}</font></h3>
        <form method="post" action="tambah_absensi">
        <table>
             <tr>
                 <td width="10%">&nbsp;</td>
                 <td >Tanggal</td><td><input type="text" name="tgl" value="<%=DateFormat.getDateInstance(3).format(tanggal)%>"></td>
             </tr>
             <tr>
                 <td width="10%">&nbsp;</td>
                 <td >NIS</td><td><select name="nis">
                  <% while (itsiswa.hasNext() ) {%>
                    <% Siswa nsiswa = itsiswa.next (); %>
                     <option value="<%=nsiswa.getId()%>"><%=nsiswa.getNis()+"-"+nsiswa.getNamasiswa()%></option> %>        
                    <%}%>
                     
                 <td width="10%">&nbsp;</td>
                 <td>Keterangan</td><td><select name="keterangan">
                       <option value="">Silakan Pilih</option>
                       <option value="Sakit">Sakit</option>
                       <option value="Izin">Izin</option>
                       <option value="Tanpa Keterangan">TK</option>
                   </select></td>
              </tr> 
            
              
                <tr> <td>
       <td> <input  value="Simpan" type="submit"></td>
        
                    </td></tr>
        </table>
                   
        <%--
            <input type="text" name="namapengguna" value="" /> <br>
            <input type="password" name="katasandi" value="" /> <br>
            <input type="submit" value="simpan" />
            <input type="reset" value="batal" />
            
            --%>
            <form>
        <table width="650" border="0">
   
    <tr>
                    <td width="10%" align="center">&nbsp;</td>
                    <th colspan="3" align="left">&nbsp;</th>
           </tr>
         <tr>
                    <td width="10%" align="center">&nbsp;</td>
                    <th width="10%" align="center">Id</th>
                    <th width="10%" align="center">Nama Siswa</th>
                    <th width="20%" align="center">Keterangan</th>
                                       
                </tr>

        
            <% while (itabsen.hasNext() ) {%>
                <% Absensi tabsen = itabsen.next (); %>
                <tr>
                    <td>&nbsp;</td>
                    <td width="10%" align="center"><%=tabsen.getSiswa().getNis() %></td>
                    <td width="20%" align="left"><%=tabsen.getSiswa().getNamasiswa() %></td>
                    <td width="20%" align="center"><%=tabsen.getKeterangan() %></td>
                     </tr>
                <% }%>
                 <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                
                
                
            </table>
            
        </form>
    </body>
</html>

          
        <!-- SAMPAI SINI  -->
          <p>&nbsp;</p>
<p>&nbsp;</p></td>
      </tr>
    </table>
    <p align="center"><!-- end .content -->Copyright &copy; 2011</p>
    <p align="center">&nbsp;</p>
  </div>
  <div class="footer">
    <div align="center">
      <pre>Margo Utomo - M. Komara Novianto - Heti Liyana E.</pre>
      <pre>Jurusan Sistem Informasi, Institut Teknologi Sepuluh Nopember - Surabaya  </pre>
    </div>
  </div>
<!-- end .container --></div>
</body>
</html>



       


<!DOCTYPE html>
