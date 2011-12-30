<%-- 
    Document   : absensi
    Created on : Nov 29, 2011, 9:02:18 AM
    Author     : aan
--%>

<%@page import="java.util.Iterator"%>
<%@page import="entity.Absensi"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>tambahabsensi</title>
        
        
        <% List <Absensi> siswa = (List)request.getAttribute("siswa"); %>
        <% Iterator <Absensi> iterator = siswa.iterator (); %>
        
    </head>
    
    <body>
        <h1>Tambah Absensi</h1>
        <form method="post">
            
            <% while (iterator.hasNext() ) {%>
                <% Absensi next = iterator.next (); %>
                
                <%=next.getNamasiswa()  %>
                <%=next.getKeterangan() %>            
            
        <input name="check_list[]" value="1" type="checkbox">M     
        <input name="check_list[]" value="2" type="checkbox">S
        <input name="check_list[]" value="3" type="checkbox">I
        <input name="check_list[]" value="4" type="checkbox">TK <br>
        <% }%>
        <input name="Simpan" value="Simpan" type="submit">
        <input name="Batal" value="Batal" type="reset">
 

        
        
        
            <%--
            <input type="text" name="namapengguna" value="" /> <br>
            <input type="password" name="katasandi" value="" /> <br>
            <input type="submit" value="simpan" />
        <input type="reset" value="batal" />
            
            --%>
            
        </form>
    </body>
</html>
