<%-- 
    Document   : pengguna1
    Created on : Dec 18, 2011, 5:31:17 PM
    Author     : margoutomo
--%>

<%@page import="entity.DaftarPengguna"%>
<%@page import="entity.Pengguna"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% DaftarPengguna daftar = new DaftarPengguna();%>
<% List<Pengguna> pengguna = daftar.getPengguna();%>
<% Iterator<Pengguna> iterator = pengguna.iterator();%>
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
                ${Peringatan}
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
                    <td><div align="right">Alamat :</div></td>
                    <td><input class="input" type="text" name="alamat"></td>
                </tr>
                <tr>
                    <td><div align="right">Nomor Telepon :</div></td>
                    <td><input class="input" type="text" name="telp"></td>
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
        
        <table border=0>
         <tr>
                    <td width="10%" align="center">&nbsp;</td>
                    <th width="24%" align="center">Nama Pengguna</th>
                    <th colspan="2" align="center">NIP</th>
                    <th align="center">Peran</th>
                    <th width="11%" align="center">Ubah/Hapus</th>
                    <th width="3%" align="left">&nbsp;</th>
                </tr>
                <% while (iterator.hasNext()) {%>
                <% Pengguna next = iterator.next();%>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center"><%=next.getNamapengguna()%></td>
                    <td colspan="2" align="center"><%=next.getNip()%></td>
                    <td align="center"><%=next.getPeran()%></td>
                    <td align="center" bgcolor="#F4F4F4"><a href="ubahpengguna?id=<%=next.getId()%>"><font color="brown">pilih</font></a></td>
                    <td bgcolor="#F4F4F4">&nbsp;</td>
                </tr>
                <%}%>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table></td>
    
</table>
    </center>
</body>
</html>
