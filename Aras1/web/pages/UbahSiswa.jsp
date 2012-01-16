<%-- 
    Document   : UbahSiswa
    Created on : Dec 28, 2011, 9:05:12 PM
    Author     : margoutomo
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="entity.Siswa"%>
<%@page import="entity.Kelas"%>
<%@page import="entity.Semester"%>

<% Siswa siswa = (Siswa)request.getAttribute("siswa");%>
<% List<Kelas> listkelas = (List<Kelas>) request.getAttribute("listkelas");%>
<% Iterator<Kelas> itKelas = listkelas.iterator();%>
<% Kelas kelas; %>

<% List<Semester> listsemester = (List<Semester>) request.getAttribute("listsemester");%>
<% Iterator<Semester> itSemester = listsemester.iterator();%>
<% Semester semester; %>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
            <td width="10%" align="Siswa">Siswa</td>
            <td width="11%" align="center"><a href="tambahkelas">Kelas</a></td>
            <td width="11%" align="center"><a href="tambahsemester">Semester</a></td>
            <td width="10%" align="center"><a href="absensikelas">Absensi</a></td>
            <td width="11%" align="center">Laporan</td>
            <td width="17%" align="center"><a href="Logout">Log Out</a></td>
          </tr>
        </table>
<!-- DARI SINI JANGAN LUPA YG LINE 6 JUGA DIGANTI --> 
        <form method="post" action="">
            <h2> Ubah Siswa </h2>
            <table border=0>
                <tr>
                    <td> N I S  </td>
                    <td><input class="input" type="text" name="nis" value="<%= siswa.getNis()%>"></td>
                </tr>
                <tr>
                    <td> Nama Siswa  </td>
                    <td><input class="input" type="text" name="namasiswa" value="<%= siswa.getNamasiswa()%>"></td>
                </tr>
                <tr>
                    <td> Kelas  </td>
                    <%--<td><input class="input" type="text" name="kelas" value="<%= siswa.getKelas().getNamakelas() %>"></td>
                </tr>--%>
                <td>
                    <select name="kelas">    
                    <%--<% Iterator<Kelas> iterator = listkelas.iterator(); %> --%>
                    <% while (itKelas.hasNext()) { kelas = itKelas.next(); 
                    if (siswa.getKelas().getId().equals(kelas.getId() )){
                        out.println("<option value=" + kelas.getNamakelas() + "selected=\"selected\">" + kelas.getNamakelas() + "</option>");
                    
                    }else { 
                        out.println("<option value=" + kelas.getNamakelas() + ">" + kelas.getNamakelas() + "</option>");
                    }
                    }%>
                    </select>
                    </td>
                </tr>
                <tr>
                    <td> Semester  </td>
                    <td>
                    <select name="semester">                    
                        <%--<% Iterator<Semester> itemester = listsemester.iterator(); %> --%>
                    <% while (itSemester.hasNext()) { semester = itSemester.next(); 
                    if (siswa.getSemester().getId().equals(semester.getId() )){
                        out.println("<option value=" + semester.getNamasemester() + "selected=\"selected\">" + semester.getNamasemester() + "</option>");
                    
                    }else { 
                        out.println("<option value=" + semester.getNamasemester() + ">" + semester.getNamasemester() + "</option>");
                    }
                    }%>
                    </select>
                    </td>
                
                </tr>
                <tr>
                    <td> Nama Orangtua </td>
                    <td><input class="input" type="text" name="namaortu" value="<%= siswa.getNamaortu()%>"></td>
                </tr>
                <tr>
                    <td> Alamat  </td>
                    <td><input class="input" type="text" name="alamat" value="<%= siswa.getAlamat()%>"></td>
                </tr>
                <tr>
                    <td> Nomor Telepon  </td>
                    <td><input class="input" type="text" name="nmrtlp" value="<%= siswa.getNmrtlp()%>"></td>
                </tr>              
                <tr>
                    <td></td>
                    <td><input type="submit" value="Simpan" onclick ="this.form.action='ubahsiswa';this.form.submit()">
                    <input type="reset" value="Batal" onclick ="this.form.action='BatalSiswa';this.form.submit()">
                    <td><input type="button" value="Hapus" onclick="this.form.action='HapusSiswa';this.form.submit();"></td>
    </tr>
            </table>
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
    </body>
    </html>