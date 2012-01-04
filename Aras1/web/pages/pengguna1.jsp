<%-- 
    Document   : pengguna1
    Created on : Dec 18, 2011, 5:31:17 PM
    Author     : margoutomo
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="entity.DaftarPengguna"%>
<%@page import="entity.Pengguna"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<% DateFormat df = new SimpleDateFormat("dd/MM/yyyy");%>
<% DaftarPengguna daftar = new DaftarPengguna();%>
<% List<Pengguna> pengguna = daftar.getPengguna();%>
<% Iterator<Pengguna> iterator = pengguna.iterator();%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pengguna</title>

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
            <td width="19%" align="center"><a href="Home">Halaman Muka</a></td>
            <td width="11%" align="center" bgcolor="#188DC2">Pengguna</td>
            <td width="10%" align="center">Siswa</td>
            <td width="11%" align="center">Kelas</td>
            <td width="11%" align="center">Semester</td>
            <td width="10%" align="center">Absensi</td>
            <td width="11%" align="center">Laporan</td>
            <td width="17%" align="center"><a href="Logout">Log Out</a></td>
          </tr>
        </table>
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI --> 

    <form method="post" action="prosestambahpengguna">
            <table border=0>
                ${Peringatan}
                <tr>
                    <td><div align="left">Nama Pengguna </div></td>
                    <td><input class="input" type="text" name="namapengguna"></td>
                </tr>
                <tr>
                    <td><div align="left">Kata Sandi </div></td>
                    <td><input class="input" type="password" name="katasandi"></td>
                </tr>    
                <tr>
                    <td><div align="left">Nama Lengkap </div></td>
                    <td><input class="input" type="text" name="nama"></td>
                </tr>
                <tr>
                    <td><div align="left">N I P </div></td>
                    <td><input class="input" type="text" name="nip"></td>
                </tr> 
                <tr>
                    <td><div align="left">Alamat </div></td>
                    <td><input class="input" type="text" name="alamat"></td>
                </tr>
                <tr>
                    <td><div align="left">Nomor Telepon </div></td>
                    <td><input class="input" type="text" name="telp"></td>
                </tr>
                <tr>
                    <td><div align="left">Peran </div></td>
                    <td>
                        <select name="peran">
                                        <option value="admin">Administrator</option>
                                        <option value="guru">Guru</option>
                                        <option value="tu">TU</option>
                                    </select>
                    </td>
                </tr>
                <td></td>
                <td><input type="submit" value="Tambah"></input></td>
                </tr>
            </table>
        </form>
        
        <table border=0>
            &nbsp;
         <tr>
                    <td width="10%" align="center">&nbsp;</td>
                    <th width="24%" align="center">Nama Pengguna</th>
                    <th colspan="2" align="center">NIP</th>
                    <th align="center">Peran</th>
                    <th width="11%" align="center">Ubah/Hapus</th>
                    <th width="3%" align="left">&nbsp;</th>
                </tr>
                <% while (iterator.hasNext()) {%>
                <% Pengguna next = iterator.next();%>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center"><%=next.getNamapengguna()%></td>
                    <td colspan="2" align="center"><%=next.getNip()%></td>
                    <td align="center"><%=next.getPeran()%></td>
                    <td align="center" bgcolor="#F4F4F4"><a href="ubahpengguna?id=<%=next.getId()%>"><font color="brown">pilih</font></a></td>
                    <td bgcolor="#F4F4F4">&nbsp;</td>
                </tr>
                <%}%>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table></td>
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