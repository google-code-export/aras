<%-- 
    Document   : TambahPengguna
    Created on : Nov 24, 2011, 10:46:53 AM
    Author     : Margo Utomo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah Pengguna</title>
    </head>
    <body>
        <center><form method="post" action="ProsesTambahPengguna">
    <table border=0>
    <tr>
        <td>Nama Pengguna :</td>
        <td><input class="input" type="text" name="namapengguna"></td>
    </tr>
    <tr>
        <td>Kata Sandi :</td>
        <td><input class="input" type="password" name="katasandi"></td>
    </tr>    
        <tr>
        <td> Nama :</td>
        <td><input class="input" type="text" name="nama"></td>
    </tr>
        <tr>
        <td> NIP :</td>
        <td><input class="input" type="text" name="nip"></td>
    </tr>
        <tr>
        <td> Nomor Telepon :</td>
        <td><input class="input" type="text" name="nomortelepon"></td>
    </tr>
    <tr>
        <td></td>
        <td><input type="submit" value="Simpan" /></td>
    </tr>
    </table>
    </form></center>
    </body>
</html>
