
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="entity.DaftarKelas"%>
<%@page import="entity.Kelas"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<% DateFormat df = new SimpleDateFormat("dd/MM/yyyy");%>
<% DaftarKelas daftar = new DaftarKelas();%>
<% List<Kelas> kelas = daftar.getKelas();%>
<% Iterator<Kelas> iterator = kelas.iterator();%>


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
             <td width="19%" align="center"><a href="Home">Halaman Muka</a></td>
            <td width="11%" align="center">Pengguna</td>
            <td width="10%" align="center">Siswa</td>
            <td width="11%" align="center" bgcolor="#188DC2">Kelas</td>
            <td width="11%" align="center"><a href="daftarsemester">Semester</a></td>
            <td width="10%" align="center">Absensi</td>
            <td width="11%" align="center">Laporan</td>
            <td width="12%" align="center"><a href="Logout">Log Out</a></td>
          </tr>
               
        </table>
            
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI --> 

          <h1>Menambah Kelas</h1>
        <form action="tambah_kelas" method="POST">
          <table border="0">
              
      <tr>

                    <td><div align="right">Nama Kelas :</div></td>
                    <td><input class="input" type="text" name="namakelas"></td>
                </tr>
                <tr>
                    <td><div align="right">Guru Wali :</div></td>
                    <td><input class="input" type="text" name="namaguru"></td>
                </tr>    
      <tr>

                <td></td>
                <td><input type="submit" value="Tambah"></td>
                
                </tr>
            </table>
        </form>
        
       <h1>Daftar Kelas</h1>
<form>
<table width="650" border="0">
   
    <tr>
                    <td width="10%" align="center">&nbsp;</td>
                    <th colspan="3" align="left">&nbsp;</th>
           </tr>
         <tr>
                    <td width="10%" align="center">&nbsp;</td>
                    <th width="10%" align="center">Id Kelas</th>
                    <th width="20%" align="center">Nama Kelas</th>
                    <th width="" align="left">Guru Wali</th>
                    <th width="10%" align="center">Ubah/Hapus</th>
                  
                   
                </tr>
                <% while (iterator.hasNext()) {%>
                <% Kelas next = iterator.next();%>
                <tr>
                    <td>&nbsp;</td>
                    <td width="10%" align="right"><%=next.getId()%></td>
                    <td width="20%" align="center"><%=next.getNamakelas()%></td>
                    <td width="" align="left"><%=next.getNamaguru()%></td>
                    <td align="center" bgcolor="#B9DDF3"><a href="ubahkelas?id=<%=next.getId()%>"><font color="black">pilih</font></a></td>
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