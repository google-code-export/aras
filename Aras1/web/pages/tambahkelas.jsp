<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tambah Kelas</title>
<link href="style/coba-indeks.css" rel="stylesheet" type="text/css" />
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
  <div class="header"><!-- end .header -->
    <table width="100%" border="0">
      <tr>
        <td bgcolor="#FFFFFF"><img src="../images/arasz.JPG" width="936" height="142" /></td>
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
        <td width="15%" height="241"><img src="../images/bg4a.JPG" width="180" height="600" /></td>
        <td width="85%" valign="top"><table width="100%" border="0">
          <tr>
            <td width="19%" align="center">Halaman Muka</td>
            <td width="11%" align="center">Pengguna</td>
            <td width="10%" align="center">Siswa</td>
            <td width="11%" align="center" bgcolor="#188DC2">Kelas</td>
            <td width="11%" align="center">Semester</td>
            <td width="10%" align="center">Absensi</td>
            <td width="11%" align="center">Laporan</td>
            <td width="17%" align="center"><a href="../../src/java/servlets/Logout.java">Log Out</a></td>
          </tr>
        </table>
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI --> 

          <h1>Menambah Kelas</h1>
        
          <table border="0">
      <tr>
        <td><div align="left">
          <p>Nama Kelas :</p>
        </div></td>
        <td><input type="text" name="namakelas" value="" /></td>
    </tr>
    <tr>
        <td><div align="left"><span class="nama">Nama Guru Wali </span>:</div></td>
        <td><input type="text" name="namaguru" value="" /></td>
    </tr>    
    <tr>
        <td></td>
        <td><input type="submit" value="simpan" />
              <input type="reset" value=" batal " /></td>
    </tr> 
</table>
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