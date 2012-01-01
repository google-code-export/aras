<%-- 
    Document   : pengguna1
    Created on : Dec 18, 2011, 5:31:17 PM
    Author     : margoutomo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pengguna</title>
    </head>
    <body>
    <center>
        <form method="post" action="prosestambahpengguna">
            <p><strong>Pengguna</strong></p>
            <table border=0>
                <tr>
                    <td><div align="right">Nama Pengguna :</div></td>
                    <td><input class="input" type="text" name="namapengguna"></td>
                </tr>
                <tr>
                    <td><div align="right">Kata Sandi :</div></td>
                    <td><input class="input" type="password" name="katasandi"></td>
                </tr>    
                <tr>
                    <td><div align="right">Nama Lengkap :</div></td>
                    <td><input class="input" type="text" name="nama"></td>
                </tr>
                <tr>
                    <td><div align="right">N I P :</div></td>
                    <td><input class="input" type="text" name="nip"></td>
                </tr> 
                <tr>
                    <td><div align="right">Nomor Telepon :</div></td>
                    <td><input class="input" type="text" name="nomortelepon"></td>
                </tr>
                <tr>
                    <td><div align="right">Peran :</div></td>
                    <td><input class="input" type="radio" name="peran" value="admin">Admin</td>
                    <td><input class="input" type="radio" name="peran" value="guru">Guru</td>
                    <td><input class="input" type="radio" name="peran" value="tu">TU</td>
                </tr>
                <td><input type="submit" value="Tambah"></input></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
