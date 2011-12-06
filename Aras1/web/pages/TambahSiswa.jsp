<%-- 
    Document   : TambahSiswa
    Created on : Dec 6, 2011, 8:02:00 AM
    Author     : Margo Utomo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah Siswa</title>
    </head>
    <body>
    <center><form method="post" action="TambahSiswa">
            <table border=0>
                <tr>
                    <td> N I S : </td>
                    <td><input class="input" type="text" name="nis"></td>
                </tr>
                <tr>
                    <td> Nama Siswa : </td>
                    <td><input class="input" type="text" name="namasiswa"></td>
                </tr>
                <tr>
                    <td> Kelas : </td>
                    <td><input class="input" type="text" name="kelas"></td>
                </tr>
                <tr>
                    <td> Semester : </td>
                    <td><input class="input" type="text" name="semester"></td>
                </tr>
                <tr>
                    <td> Nama Orangtua : </td>
                    <td><input class="input" type="text" name="namaortu"></td>
                </tr>
                <tr>
                    <td> Alamat : </td>
                    <td><input class="input" type="text" name="alamat"></td>
                </tr>
                <tr>
                    <td> Nomor Telepon : </td>
                    <td><input class="input" type="text" name="nmrtlp"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="input" type="submit" value="Simpan"></td>
                </tr>
            </table>
        </form>
    </center>
    </body>
</html>


