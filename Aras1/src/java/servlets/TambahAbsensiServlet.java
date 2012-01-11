/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entity.Absensi;
import entity.DaftarAbsensi;
import entity.DaftarKelas;
import entity.DaftarSiswa;
import entity.Kelas;
import entity.Siswa;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author aan
 */
public class TambahAbsensiServlet extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        HttpSession sesIdKls = request.getSession(true);
        Long idKelas=(Long)sesIdKls.getAttribute("idKelas");
        
        String dateString = request.getParameter("tgl");
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy");
        Date tglTran = dateFormat.parse(dateString);

        String keterangan = (String) request.getParameter("keterangan");

        DaftarAbsensi daftar = new DaftarAbsensi();
        Absensi absensi = new Absensi();

        DaftarSiswa dsis = new DaftarSiswa();
        Siswa sis = dsis.findSiswa(Long.parseLong(request.getParameter("nis")));

        absensi.setTglAbsensi(tglTran);
        absensi.setSiswa(sis);
        absensi.setIdSiswa(sis.getId());
        absensi.setKeterangan(keterangan);
        absensi.setIdKelas(idKelas);

        if (daftar.check(sis.getId(), idKelas)==true){
            request.setAttribute("errorAbsen", "Siswa ini sudah diabsen hari ini");
        }
             
        else{
            daftar.addAbsensi(absensi);
        }
        try {
            RequestDispatcher rdp = request.getRequestDispatcher("pages/absensi.jsp");
            rdp.forward(request, response);
            //response.sendRedirect("absensi");
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TambahAbsensiServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TambahAbsensiServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
             */
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(TambahAbsensiServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(TambahAbsensiServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
