<%-- 
    Document   : absensi
    Created on : Nov 29, 2011, 9:02:18 AM
    Author     : aan
--%>

<%@page import="entity.Kelas"%>
<%@page import="entity.DaftarKelas"%>
<%@page import="entity.DaftarAbsensi"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="entity.DaftarSiswa"%>
<%@page import="entity.Siswa"%>
<%@page import="java.util.Iterator"%>
<%@page import="entity.Absensi"%>
<%@page import="java.util.List"%>

        <% DaftarKelas dafkelas = new DaftarKelas();%>
        <% List <Kelas> kelas = (List)request.getAttribute("namakelas"); %>
        <% Iterator <Kelas> itkelas = kelas.iterator (); %>
        
        <%Date tanggal = new Date();%>
        

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>absensi</title>
        
        
    </head>
    
    <body>
        <h1>Absensi</h1>
        <form method="post">
        <table>
             <tr>
                 
                 <% while (itkelas.hasNext() ) {%>
                 <% Kelas nkelas = itkelas.next (); %>
                     <td> "<%=nkelas.getNamakelas()%>"><%=nkelas.getNamakelas()%> %></td>        
                     <td><a href="tambahabsensi?id=<%=nkelas.getId() %>"><font color="blue"><%=nkelas.getId()%></font></a></td>
                </tr> 
                <%}%>     
               <tr><td>&nbsp;</td></tr>
            
            </table>
        </form>
    </body>
</html>
