<%-- 
    Document   : UbahPengguna
    Created on : Dec 05, 2011, 8:47:25 PM
    Author     : margoutomo
--%>

<%@page import="entity.Pengguna"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% Pengguna pengguna =(Pengguna)request.getAttribute("pengguna");%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ubah Pengguna</title>
    </head>
    <body>
        <center><form method="post" action="">
    <table border=0>
    <tr>
        <td>Nama Pengguna :</td>
        <td><input class="input" type="text" name="namapengguna" value="<%= pengguna.getNamapengguna().substring(0)%>"</td>
    </tr>
    <tr>
        <td>Kata Sandi :</td>
        <td><input class="input" type="password" name="katasandi" value="<%= pengguna.getKatasandi().substring(0)%>"</td>
    </tr>    
        <tr>
        <td> Nama :</td>
        <td><input class="input" type="text" name="nama" value="<%= pengguna.getNama().substring(0)%>"</td>
    </tr>
        <tr>
        <td> NIP :</td>
        <td><input class="input" type="text" name="nip" value="<%= pengguna.getNip().substring(0)%>"</td>
    </tr>
        <tr>
        <td> Nomor Telepon :</td>
        <td><input class="input" type="text" name="telp" value="<%= pengguna.getTelp().substring(0)%>"</td>
    </tr>
    <tr> 
        <td> Peran : </td>
        <td><input class="input" type="text" name="peran" value="<%= pengguna.getPeran().substring(0)%>"</td>
    </tr>
    
    <tr>
        <td></td>
        <td><input type="submit" value="Simpan" /></td>
    </tr>
    </table>
    </form>
        </center>
    </body>
</html>
