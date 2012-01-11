<%-- 
    Document   : halamanlogin
    Created on : Nov 10, 2011, 8:01:10 AM
    Author     : Margo Utomo
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>

<% DateFormat df = new SimpleDateFormat("dd/MM/yyyy");%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Halaman Login</title>
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
        <td bgcolor="#FFFFFF"><img src="images/arasz.JPG" width="936" height="142" /></td>
      </tr>
    </table>
  </div>
  
  <div class="content">
    <table width="100%" border="0">
      <tr>
        <td width="15%" height="241"><img src="images/bg4a.JPG" width="180" height="600" /></td>
        <td width="85%" valign="top"><table width="100%" border="0">
          
        </table>
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI -->  
    <%--<center>--%>
        <center>
            <form method="post" action="Login">
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p><strong>Selamat Datang di ARAS</strong></p>
    <table border=0>
        ${Peringatan}
    <tr>
        <td><div align="right">Nama Pengguna :</div></td>
        <td><input class="input" type="text" name="namapengguna"></td>
    </tr>
    <tr>
        <td><div align="right">Kata Sandi :</div></td>
        <td><input class="input" type="password" name="katasandi"></td>
    </tr>    
    <tr>
        <td></td>
        <td><input type="submit" value="Masuk" /></td>
    </tr>
    </table>
    </form></center>
    </body>
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
</html>

</html>
