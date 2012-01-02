<%-- 
    Document   : tambahabsensi
    Created on : Nov 29, 2011, 9:02:18 AM
    Author     : aan
--%>

<%@page import="entity.DaftarAbsensi"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="entity.DaftarSiswa"%>
<%@page import="entity.Siswa"%>
<%@page import="java.util.Iterator"%>
<%@page import="entity.Absensi"%>
<%@page import="java.util.List"%>

        <% DaftarAbsensi dafAb=new DaftarAbsensi();%>
        <% List <Absensi> absen =dafAb.getAbsensi() ; %>
        <% Iterator <Absensi> itabsen = absen.iterator (); %>
        <% DaftarSiswa dafsiswa=new DaftarSiswa();%>
        <% List <Siswa> siswa = (List)request.getAttribute("siswa"); %>
        <% Iterator <Siswa> itsiswa = siswa.iterator (); %>
        
        <%Date tanggal = new Date();%>
        

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>tambahabsensi</title>
        
        
    </head>
    
    <body>
        <h1>Tambah Absensi</h1>
        <form method="post">
        <table>
             <tr>
                 <td width="10%">&nbsp;</td>
                 <td >Tanggal</td><td><input type="text" name="tgl" value="<%=DateFormat.getDateInstance(3).format(tanggal)%>"></td>
             </tr>
             <tr>
                 <td width="10%">&nbsp;</td>
                 <td >NIS</td><td><select name="nis">
                  <% while (itsiswa.hasNext() ) {%>
                    <% Siswa nsiswa = itsiswa.next (); %>
                     <option value="<%=nsiswa.getNis()%>"><%=nsiswa.getNis()+"-"+nsiswa.getNamasiswa()%></option> %>        
                    <%}%>
                     </tr>
             <tr>
                 <td width="10%">&nbsp;</td>
                 <td>Keterangan</td><td><select name="keterangan">
                       <option value="1">Masuk</option>
                       <option value="2">Sakit</option>
                       <option value="3">Izin</option>
                       <option value="4">Tanpa Keterangan</option>
                   </select></td>
              </tr> 
            
              
            <% while (itabsen.hasNext() ) {%>
                <% Absensi next = itabsen.next (); %>
                <tr>
                    <td>
                <%=next.getSiswa().getNamasiswa()  %>
                    </td>
                    <td>
                <%=next.getKeterangan() %>   
                    </td>
                </tr>
                <% }%>
                <tr><td>
        <input name="Simpan" value="Simpan" type="submit">
        <input name="Batal" value="Batal" type="reset">
                    </td></tr>

        <%--
            <input type="text" name="namapengguna" value="" /> <br>
            <input type="password" name="katasandi" value="" /> <br>
            <input type="submit" value="simpan" />
            <input type="reset" value="batal" />
            
            --%>
            </table>
        </form>
    </body>
</html>
