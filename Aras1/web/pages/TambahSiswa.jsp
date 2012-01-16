<%-- 
    Document   : TambahSiswa
    Created on : Dec 6, 2011, 8:02:00 AM
    Author     : Margo Utomo
--%>

<%@page import="entity.Siswa"%>
<%@page import="entity.DaftarSiswa"%>
<%@page import="entity.Semester"%>
<%@page import="entity.DaftarSemester"%>
<%@page import="entity.Kelas"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="entity.DaftarKelas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- untuk memilih daftar kelas--%>
<% DaftarKelas daftarkelas = new DaftarKelas();%>
<% List<Kelas> kelas = daftarkelas.getKelasx();%>
<% Iterator<Kelas> itKelas = kelas.iterator();%>

<%-- memiloh daftar semester --%>
<% DaftarSemester daftarsemester = new DaftarSemester();%>
<% List<Semester> semester = daftarsemester.getSemester();%>
<% Iterator<Semester> itSemester = semester.iterator();%>

<% DaftarSiswa daftar = new DaftarSiswa();%>
<% List<Siswa> siswa = daftar.getSiswas();%>
<% Iterator<Siswa> iterator = siswa.iterator();%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Siswa</title>

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
          <tr>
            <td width="19%" align="center"><a href="Home">Halaman Muka</a></td>
            <td width="11%" align="center"><a href="penggua">Pengguna</a></td>
            <td width="10%" align="center" bgcolor="#188DC2">Siswa</td>
            <td width="11%" align="center"><a href="tambahkelas">Kelas</a></td>
            <td width="11%" align="center"><a href="tambahsemester">Semester</a></td>
            <td width="10%" align="center"><a href="absensikelas">Absensi</a></td>
            <td width="11%" align="center">Laporan</td>
            <td width="17%" align="center"><a href="Logout">Log Out</a></td>
          </tr>
        </table>
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI -->  
    <%--<center>--%>
        <form method="post" action="TambahSiswa">
            <h2>Tambah Siswa</h2>
            <table border=0>
                <tr>
                    <td> N I S  </td>
                    <td><input class="input" type="text" name="nis"></td>
                </tr>
                <tr>
                    <td> Nama Siswa  </td>
                    <td><input class="input" type="text" name="namasiswa"></td>
                </tr>
                <tr>
                    <td> Kelas  </td>
                    <td>
                        <select name="kelas">
                                        <option value="">Pilih Kelas</option>
                                        <% while (itKelas.hasNext()) {%>
                                        <% Kelas next = itKelas.next();%>
                                        <option value=<%=next.getId()%>><%=next.getNamakelas()%></option>
                                        <%}%>
                                    </select>
                    </td>
                </tr>
                <tr>
                    <td> Semester  </td>
                    <td>
                        <select name="semester">
                                        <option value="">Pilih Semester</option>
                                        <% while (itSemester.hasNext()) {%>
                                        <% Semester next = itSemester.next();%>
                                        <option value=<%=next.getId()%>><%=next.getNamasemester()%></option>
                                        <%}%>
                                    </select>
                    </td>
                </tr>
                <tr>
                    <td> Nama Orangtua  </td>
                    <td><input class="input" type="text" name="namaortu"></td>
                </tr>
                <tr>
                    <td> Alamat  </td>
                    <td><input class="input" type="text" name="alamat"></td>
                </tr>
                <tr>
                    <td> Nomor Telepon  </td>
                    <td><input class="input" type="text" name="nmrtlp"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="input" type="submit" value="Simpan"></td>
                </tr>
                ${Peringatan}
            </table>
        </form>
            
            <table border=0>
            <h2>Daftar Siswa</h2>
         <tr>
                    <td width="10%" align="center">&nbsp;</td>
                    <th width="24%" align="center">N I S</th>
                    <th colspan="2" align="center">Nama Siswa</th>
                    <th align="center">Kelas</th>
                    <th align="center">Alamat</th>
                    <th width="11%" align="center">Ubah/Hapus</th>
                    
                </tr>
                <% while (iterator.hasNext()) {%>
                <% Siswa next = iterator.next();%>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center"><%=next.getNis()%></td>
                    <td colspan="2" align="center"><%=next.getNamasiswa()%></td>
                    <td align="center"><%=next.getKelas().getNamakelas()%></td>
                    <td align="center"><%=next.getAlamat() %></td>
                    <td align="center" bgcolor="#B9DDF3"><a href="ubahsiswa?id=<%=next.getId()%>"><font color="brown">pilih</font></a></td>
                    
                </tr>
                <%}%>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table></td>
            <%--</center>--%>
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


