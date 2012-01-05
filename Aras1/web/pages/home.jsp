<%-- 
    Document   : home
    Created on : Jan 1, 2012, 3:55:20 PM
    Author     : Heti Liyana
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>

<% DateFormat df = new SimpleDateFormat("dd/MM/yyyy");%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Halaman Muka</title>

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
        <td width="15%" height="241"><img src="images/bg4a.JPG" width="180" height="600" /></td>
        <td width="85%" valign="top"><table width="100%" border="0">
          <tr>
            <td width="17%" align="center">&nbsp;</td>
            <td width="14%" align="center">&nbsp;</td>
            <td width="10%" align="center">&nbsp;</td>
            <td width="10%" align="center">&nbsp;</td>
            <td width="13%" align="center">&nbsp;</td>
            <td width="12%" align="center">&nbsp;</td>
            <td width="12%" align="center">&nbsp;</td>
            <td width="12%" align="center"><a href="Logout">Log Out</a></td>
          </tr>
        </table>
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI --> 

          <h1>Selamat Datang di Halaman Utama ARAS!</h1>
        
          <table width="646" border="0">
      <tr>
        <td colspan="2"><p>Daftar Menu Aplikasi Rekapitulasi Absensi Siswa :</p></td>
        </tr>
      <tr>
        <td width="164"><p><a href="pengguna">Pengguna</a></p></td>
        <td width="472"><p>Berisi Tambah, Ubah, Hapus Pengguna</p></td>
    </tr>
    <tr>
        <td width="164"><p><a href="SiswaServlet">Siswa</a></p></td>
        <td>Berisi Tambah, Ubah, Hapus Siswa</td>
    </tr> 
    <tr>
        <td width="164"><p><a href="tambahkelas">Kelas</a></p></td>
        <td>Berisi Tambah, Ubah, Hapus Kelas</td>
    </tr>
    <tr>
        <td width="164"><p><a href="semester">Semester</a></p></td>
        <td>Berisi Tambah, Ubah, Hapus Semester</td>
    </tr>
    <tr>
        <td width="164"><p>Absensi</p></td>
        <td>Berisi halaman absensi siswa</td>
    </tr>
    <tr>
        <td width="164"><p>Laporan</p></td>
        <td>Berisi halaman laporan rekapitulasi absensi siswa</td>
    </tr>
    
</table>

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