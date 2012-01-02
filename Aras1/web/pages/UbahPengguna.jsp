<%-- 
    Document   : UbahPengguna
    Created on : Dec 05, 2011, 8:47:25 PM
    Author     : margoutomo
--%>

<%@page import="entity.Pengguna"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% Pengguna pengguna =(Pengguna)request.getAttribute("pengguna");%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ubah Pengguna</title>

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
            <td width="12%" align="center"><a href="Home">Home</a></td>
            <td width="14%" align="center">&nbsp;</td>
            <td width="10%" align="center">&nbsp;</td>
            <td width="10%" align="center">&nbsp;</td>
            <td width="13%" align="center">&nbsp;</td>
            <td width="12%" align="center">&nbsp;</td>
            <td width="12%" align="center">&nbsp;</td>
            <td width="12%" align="center"><a href="/Logout">Log Out</a></td>
          </tr>
        </table>
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI --> 
        <center><form method="post" action="">
    <table border=0>
        ${Peringatan}
    <tr>
        <td>Nama Pengguna </td>
        <td><input class="input" type="text" name="namapengguna" value="<%= pengguna.getNamapengguna()%>"></td>
    </tr>
    <tr>
        <td>Kata Sandi </td>
        <td><input class="input" type="password" name="katasandi" value="<%= pengguna.getKatasandi()%>"></td>
    </tr>    
        <tr>
        <td> Nama </td>
        <td><input class="input" type="text" name="nama" value="<%= pengguna.getNama()%>"></td>
    </tr>
        <tr>
        <td> NIP </td>
        <td><input class="input" type="text" name="nip" value="<%= pengguna.getNip()%>"></td>
    </tr>
    <tr>
        <td> Alamat </td>
        <td><input class="input" type="text" name="alamat" value="<%= pengguna.getAlamat()%>"></td>
    </tr>
        <tr>
        <td> Nomor Telepon </td>
        <td><input class="input" type="text" name="telp" value="<%= pengguna.getTelp()%>"></td>
    </tr>
    <tr> 
        <td> Peran </td>
        <td><input class="input" type="text" name="peran" value="<%= pengguna.getPeran()%>"></td>
    </tr>
    
    <tr>
        <td></td>
        <td><input type="submit" value="Simpan" onclick ="this.form.action='SimpanUbahPengguna';this.form.submit()">
        <input type="reset" value="Batal" onclick ="this.form.action='BatalPengguna';this.form.submit()">
        <td><input type="button" value="Hapus" onclick="this.form.action='HapusPengguna';this.form.submit();"></td>
    </tr>
    </table>
    </form>
        </center>
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