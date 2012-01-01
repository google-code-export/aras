/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entity.DaftarSemester;
import entity.Semester;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Heti Liyana
 */
public class TambahSemesterServlet extends HttpServlet {

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
        
        String dateString = request.getParameter("tanggalawal");
        String tanggalString = request.getParameter("tanggalkhir");
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/mm/yyyy");
        Date awal = dateFormat.parse(dateString);
        Date akhir = dateFormat.parse(tanggalString);
        String sem = request.getParameter("namasemester");
        String tahun = request.getParameter("tahunajaran");
        DaftarSemester daftar = new DaftarSemester ();
        Semester semester = new Semester ();
        
        semester.setNamasemester(sem);
        semester.setTahunajaran(tahun);
        semester.setTanggalawal(awal);
        semester.setTanggalakhir(akhir);
        
        daftar.addSemester(semester);
        response.sendRedirect("semester");
        
        
        
        try {
           
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
            Logger.getLogger(TambahSemesterServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(TambahSemesterServlet.class.getName()).log(Level.SEVERE, null, ex);
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
