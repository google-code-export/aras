<%-- 
    Document   : tambahsemester
    Created on : Jan 1, 2012, 3:55:20 PM
    Author     : Heti Liyana
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tambah Kelas</title>

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
            <td width="19%" align="center">Halaman Muka</td>
            <td width="11%" align="center">Pengguna</td>
            <td width="10%" align="center">Siswa</td>
            <td width="11%" align="center">Kelas</td>
            <td width="11%" align="center" bgcolor="#188DC2">Semester</td>
            <td width="10%" align="center">Absensi</td>
            <td width="11%" align="center">Laporan</td>
            <td width="17%" align="center"><a href="../../src/java/servlets/Logout.java">Log Out</a></td>
          </tr>
        </table>
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI --> 

          <h1>Menambah Semester</h1>
        
          <table border="0">
      <tr>
        <td><div align="left"><p>Nama Semester :</p></div></td>
        <td><select name="namasemester" id="">
          <option>Ganjil</option>
          <option>Genap</option>
        </select></td>
        <td><p>&nbsp;</p></td>
        <td><p>&nbsp;</p></td>
    </tr>
      <tr>
        <td><div align="left"><p>Tahun Ajaran :</p></div></td>
        <td><select name="tahunajaran" id="">
          <option>2011/2012</option>
          <option>2012/2013</option>
          <option>2013/2014</option>
          <option>2014/2015</option>
          <option>2015/2016</option>
          <option>2016/2017</option>
          <option>2017/2018</option>
          <option>2018/2019</option>
          <option>2019/2020</option>
          <option>2020/2021</option>
          <option>2021/2022</option>
          <option>2022/2023</option>
          <option>2023/2024</option>
          <option>2024/2025</option>
          <option>2025/2026</option>
          <option>2026/2027</option>
          <option>2027/2028</option>
          <option>2028/2029</option>
          <option>2029/2030</option>
          <option>2030/2031</option>
          <option>2031/2032</option>
          <option>2032/2033</option>
          <option>2033/2034</option>
          <option>2034/2035</option>
          <option>2035/2036</option>
          <option>2036/2037</option>
          <option>2037/2038</option>
          <option>2038/2039</option>
          <option>2039/2040</option>
          <option>2040/2041</option>
          <option>2041/2042</option>
          <option>2042/2043</option>
          <option>2043/2044</option>
          <option>2044/2045</option>
          <option>2045/2046</option>
        </select></td>
        <td><p>&nbsp;</p></td>
        <td><p>&nbsp;</p></td>
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
    <p align="center"><!-- end .content -->Copyright &copy; 2011    </p>
    <div class="footer">
      <div align="center">
      <pre>Margo Utomo - M. Komara Novianto - Heti Liyana E.</pre>
      <pre>Jurusan Sistem Informasi, Institut Teknologi Sepuluh Nopember - Surabaya  </pre>
    </div>
</div>
<!-- end .container --></div>
    </body>
    </html>