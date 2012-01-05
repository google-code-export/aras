<%-- 
    Document   : ubahkelas
    Created on : Jan 3, 2012, 2:09:36 PM
    Author     : Heti Liyana
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="entity.Kelas"%>

<% DateFormat df = new SimpleDateFormat("dd/MM/yyyy");%>
<% Kelas kelas =(Kelas)request.getAttribute("kelas");%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ubah Kelas</title>

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

<body>
<div class="container">
<tr>
    <table>

  <div class="header"><!-- end .header -->
    <table width="100%" border="0">
      <tr>
        <td bgcolor="#FFFFFF"><img src="images/arasz.JPG" width="936" height="142" />&nbsp;</td>
      </tr>
    </table>
  </div>
  
  <div class="content">
    <table width="100%" border="0">
      <tr>
          <td width="15%" height="241"><img src="images/bg4a.JPG" width="180" height="600" />&nbsp;</td>
        <td width="85%" valign="top"><table width="100%" border="0">
          <tr>
            <td width="17%" align="center"><a href="Home">Halaman Muka</a></td>
            <td width="14%" align="center"><a href="Pengguna">Pengguna</a></td>
            <td width="10%" align="center"><a href="SiswaServlet">Siswa</a></td>
            <td width="11%" align="center" bgcolor="#188DC2">Kelas</td>
            <td width="11%" align="center"><a href="daftarsemester">Semester</a></td>
            <td width="10%" align="center">Absensi</td>
            <td width="11%" align="center">Laporan</td>
            <td width="12%" align="center"><a href="Logout">Log Out</a></td>
          </tr>
        </table>
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI --> 

          <h1>Ubah / Hapus Kelas</h1>
        
          <form method="post" action="">
    <table border="0">
     
    <tr>
        <td>Nama Kelas</td>
        <td><input class="input" type="text" name="namakelas" value="<%= kelas.getNamakelas()%>"></td>
    </tr>
    <tr>
        <td>Guru Wali</td>
        <td><input class="input" type="text" name="namaguru" value="<%= kelas.getNamaguru()%>"></td>
    </tr>    
        
    
    <tr>
        <td></td>
        <td><input type="submit" value="Simpan" onclick ="this.form.action='ubah_kelas';this.form.submit()">
        <input type="reset" value="Batal" onclick ="this.form.action='batal_kelas';this.form.submit()">
        <td><input type="button" value="Hapus" onclick="this.form.action='hapus_kelas';this.form.submit();"></td>
    </tr>
    </table>
    </form>

          <!-- SAMPAI SINI  -->
          
          <p>&nbsp;</p>
<p>&nbsp;</p></td>
     </tr>
    </table>
    <p align="center"><!-- end .content -->Copyright &copy; 2011    </p>
    <div class="footer">
      <div align="center">
      <pre>Margo Utomo - M. Komara Novianto - Heti Liyana E.</pre>
      <pre>Jurusan Sistem Informasi, Institut Teknologi Sepuluh Nopember - Surabaya  </pre>
    </div>
</div>
<!-- end .container --></div>
    </table>
 </tr>
</div>
</body>
    </html>