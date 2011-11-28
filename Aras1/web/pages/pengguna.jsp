<%-- 
    Document   : pengguna
    Created on : Nov 26, 2011, 2:25:31 PM
    Author     : aan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>pengguna</title>
    </head>
    <body>
        <h1>Mendaftarkan Pengguna</h1>
        <form action="simpan_pengguna" method="POST">
            <input type="text" name="namapengguna" value="" /> <br>
            <input type="password" name="katasandi" value="" /> <br>
            <input type="submit" value="simpan" />
        <input type="reset" value="batal" />
        </form>
    </body>
    
</html>
