<%-- 
    Document   : UbahSiswa
    Created on : Dec 28, 2011, 9:05:12 PM
    Author     : margoutomo
--%>

<%@page import="entity.Siswa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% Siswa siswa = (Siswa)request.getAttribute("siswa");%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ubah Siswa</title>
    </head>
    <body>
    <center>
        <form method="post" action="UbahSiswa">
            <table border=0>
                <tr>
                    <td> N I S : </td>
                    <td><input class="input" type="text" name="nis" value="<%= siswa.getNis().substring(0)%>"></td>
                </tr>
                <tr>
                    <td> Nama Siswa : </td>
                    <td><input class="input" type="text" name="namasiswa" value="<%= siswa.getNamasiswa().substring(0)%>"></td>
                </tr>
                <tr>
                    <td> Kelas : </td>
                    <td><input class="input" type="text" name="kelas" value="<%= siswa.getKelas().substring(0)%>"></td>
                </tr>
                <tr>
                    <td> Semester : </td>
                    <td><input class="input" type="text" name="semester" value="<%= siswa.getSemester().substring(0)%>"></td>
                </tr>
                <tr>
                    <td> Nama Orangtua : </td>
                    <td><input class="input" type="text" name="namaortu" value="<%= siswa.getNamaortu().substring(0)%>"></td>
                </tr>
                <tr>
                    <td> Alamat : </td>
                    <td><input class="input" type="text" name="alamat" value="<%= siswa.getAlamat().substring(0)%>"></td>
                </tr>
                <tr>
                    <td> Nomor Telepon : </td>
                    <td><input class="input" type="text" name="nmrtlp" value="<%= siswa.getNmrtlp().substring(0)%>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="input" type="submit" value="Simpan Perubahan"></td>
                </tr>
            </table>
        </form>
    </center>
    </body>
</html>
