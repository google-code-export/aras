<%-- 
    Document   : tambahsemester
    Created on : Jan 1, 2012, 3:55:20 PM
    Author     : Heti Liyana
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="entity.DaftarSemester"%>
<%@page import="entity.Semester"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<% DateFormat df = new SimpleDateFormat("dd/MM/yyyy");%>
<% DaftarSemester daftar = new DaftarSemester();%>
<% List<Semester> semester = daftar.getSemester();%>
<% Iterator<Semester> iterator = semester.iterator();%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tambah Semester</title>

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
            <td width="10%" align="center"><a href="Siswa">Siswa</a></td>
            <td width="10%" align="center"><a href="tambahkelas">Kelas</a></td>
            <td width="13%" align="center" bgcolor="#188DC2">Semester</td>
            <td width="12%" align="center">Absensi</td>
            <td width="12%" align="center">Laporan</td>
            <td width="12%" align="center"><a href="Logout">Log Out</a></td>
          </tr>
        </table>
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI --> 

          <h1>Menambah Semester</h1>
          <form action="tambah_semester" method="POST">
          <table border="0">
      <tr>
        <td><div align="left"><p>Nama Semester :</p></div></td>
        <td><select name="namasemester">
          <option value="Ganjil">Ganjil</option>
          <option value="Genap">Genap</option>
        </select></td>
        <td><p>&nbsp;</p></td>
        <td><p>&nbsp;</p></td>
    </tr>
      <tr>
        <td><div align="left"><p>Tahun Ajaran :</p></div></td>
        <td><select name="tahunajaran">
          <option value="2011/2012">2011/2012</option>
          <option value="2012/2013">2012/2013</option>
          <option value="2013/2014">2013/2014</option>
          <option value="2014/2015">2014/2015</option>
          <option value="2015/2016">2015/2016</option>
          <option value="2016/2017">2016/2017</option>
          <option value="2017/2018">2017/2018</option>
          <option value="2018/2019">2018/2019</option>
          <option value="2019/2020">2019/2020</option>
          <option value="2020/2021">2020/2021</option>
          <option value="2021/2022">2021/2022</option>
          <option value="2022/2023">2022/2023</option>
          <option value="2023/2024">2023/2024</option>
          <option value="2024/2025">2024/2025</option>
          <option value="2025/2026">2025/2026</option>
          <option value="2026/2027">2026/2027</option>
          <option value="2027/2028">2027/2028</option>
          <option value="2028/2029">2028/2029</option>
          <option value="2029/2030">2029/2030</option>
          <option value="2030/2031">2030/2031</option>
          <option value="2031/2032">2031/2032</option>
          
        </select></td>
        <td><p>&nbsp;</p></td>
        <td><p>&nbsp;</p></td>
    </tr>
    
    <tr>
        <td></td>
        <td><input type="submit" value="Tambah" /></td>
         <td><p>&nbsp;</p></td>
        <td><p>&nbsp;</p></td>    
    </tr> 
    
</table>
</form>
          
          <h1>Daftar Semester</h1>
<form>
<table width="650" border="0">
   
    <tr>
                    <td width="10%" align="center">&nbsp;</td>
                    <th colspan="3" align="left">&nbsp;</th>
           </tr>
         <tr>
                    <td width="10%" align="center">&nbsp;</td>
                    <th width="10%" align="center">Id</th>
                    <th width="20%" align="center">Nama Semester</th>
                    <th width="" align="left">Tahun Ajaran</th>
                    <th width="10%" align="center">Ubah/Hapus</th>
                  
                   
                </tr>
                <% while (iterator.hasNext()) {%>
                <% Semester next = iterator.next();%>
                <tr>
                    <td>&nbsp;</td>
                    <td width="10%" align="right"><%=next.getId()%></td>
                    <td width="20%" align="center"><%=next.getNamasemester()%></td>
                    <td width="" align="left"><%=next.getTahunajaran()%></td>
                    <td align="center" bgcolor="#B9DDF3"><a href="ubahsemester?id=<%=next.getId()%>"><font color="black">pilih</font></a></td>
                </tr>
                <%}%>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table></td>


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