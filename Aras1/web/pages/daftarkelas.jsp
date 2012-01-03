<%-- 
    Document   : halamankelas
    Created on : Jan 1, 2012, 3:56:10 PM
    Author     : Heti Liyana
--%>


<%@page import="entity.DaftarKelas"%>
<%@page import="entity.Kelas"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<% DaftarKelas daftar = new DaftarKelas();%>
<% List<Kelas> kelas = daftar.getKelas();%>
<% Iterator<Kelas> iterator = kelas.iterator();%>


<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Daftar Kelas</title>
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
        <td bgcolor="#FFFFFF"><img src="images/arasz.JPG" width="936" height="142" /></td>
      </tr>
    </table>
  </div>

  <div class="content">
    <table width="100%" border="0">
      <tr>
        <td width="15%" height="241"><img src="images/bg4a.JPG" width="180" height="600" /></td>
        <td width="85%" valign="top">
            <table width="100%" border="0">
          <tr>
            <td width="19%" align="center">Halaman Muka</td>
            <td width="11%" align="center">Pengguna</td>
            <td width="10%" align="center">Siswa</td>
            <td width="11%" align="center" bgcolor="#188DC2">Kelas</td>
            <td width="11%" align="center">Semester</td>
            <td width="10%" align="center">Absensi</td>
            <td width="11%" align="center"><a href="Logout">Laporan</a></td>
            <td width="17%" align="center"><a href="Logout">Log Out</a></td>
          </tr>
        </table>
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI --> 
         <table width="650" border="0">
             <tr>
                    <td width="10%" align="center">&nbsp;</td>
                    <th colspan="3" align="left">  DAFTAR KELAS</th>
           </tr>
         <tr>
                    <td width="10%" align="center">&nbsp;</td>
                    <th width="10%" align="center">Id Kelas</th>
                    <th width="20%" align="center">Nama Kelas</th>
                    <th width="" align="left">Guru Wali</th>
                  
                   
                </tr>
                <% while (iterator.hasNext()) {%>
      <% Kelas next = iterator.next();%>
                <tr>
                    <td>&nbsp;</td>
                    <td width="10%" align="right"><%=next.getId()%></td>
                    <td width="20%" align="center"><%=next.getNamakelas()%></td>
                    <td width="" align="left"><%=next.getNamaguru()%></td>
                  
                </tr>
                <%}%>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table></td>


             

        <!-- SAMPAI SINI  -->
          <p>&nbsp;</p>
        <td><p>&nbsp;</p></td>
    
    </table>
  
    <p align="center"><!-- end .content -->Copyright &copy; 2011  </p>
    <div class="footer">
      <div align="center">
      <pre>Margo Utomo - M. Komara Novianto - Heti Liyana E.</pre>
      <pre>Jurusan Sistem Informasi, Institut Teknologi Sepuluh Nopember - Surabaya  </pre>
    </div>
</div>
<!-- end .container --></div>
  </body>
</html>