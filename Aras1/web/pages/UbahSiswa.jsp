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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% Siswa siswa = (Siswa)request.getAttribute("siswa");%>
<% List<Kelas> listkelas = (List<Kelas>) request.getAttribute("listkelas");%>
<% Iterator<Kelas> itKelas = listkelas.iterator();%>
<% Kelas kelas; %>

<% List<Semester> listsemester = (List<Semester>) request.getAttribute("listsemester");%>
<% Iterator<Semester> itSemester = listsemester.iterator();%>
<% Semester semester; %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ubah Siswa</title>
    </head>
    <body>
        <%-- out.println(kelas);--%>
    <center>
        <form method="post" action="">
            <table border=0>
                <tr>
                    <td> N I S : </td>
                    <td><input class="input" type="text" name="nis" value="<%= siswa.getNis()%>"></td>
                </tr>
                <tr>
                    <td> Nama Siswa : </td>
                    <td><input class="input" type="text" name="namasiswa" value="<%= siswa.getNamasiswa()%>"></td>
                </tr>
                <tr>
                    <td> Kelas : </td>
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
                    <td> Semester : </td>
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
                    <td> Nama Orangtua : </td>
                    <td><input class="input" type="text" name="namaortu" value="<%= siswa.getNamaortu()%>"></td>
                </tr>
                <tr>
                    <td> Alamat : </td>
                    <td><input class="input" type="text" name="alamat" value="<%= siswa.getAlamat()%>"></td>
                </tr>
                <tr>
                    <td> Nomor Telepon : </td>
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
    </center>
    </body>
</html>
