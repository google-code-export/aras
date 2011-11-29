<%-- 
    Document   : kelas
    Created on : Nov 28, 2011, 11:44:02 AM
    Author     : Heti Liyana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Menambah Kelas</h1>
        <form action="simpan_kelas" method="POST">
            Nama Kelas : <input type="text" name="namakelas" value="" /> <br>
            Nama Guru Wali : <input type="text" name="namaguru" value="" /> <br>
            <input type="submit" value="simpan" />
        <input type="reset" value="batal" />
        </form>
    </body>
</html>
