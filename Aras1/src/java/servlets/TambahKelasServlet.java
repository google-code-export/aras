/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entity.DaftarKelas;
import entity.DaftarPengguna;
import entity.Kelas;
import entity.Pengguna;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Heti Liyana
 */
//@WebServlet(name = "TambahKelasServlet", urlPatterns = {"/tambah_kelas"})
public class TambahKelasServlet extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        
        String nama = request.getParameter("namakelas");
        String guru = request.getParameter("namaguru");
        
        DaftarKelas klas = new DaftarKelas();
        Kelas kls = new Kelas();
              
        kls.setNamakelas(nama);
        kls.setNamaguru(guru);
        
        if (nama.isEmpty() || guru.isEmpty() ) {
            request.setAttribute("Peringatan","Semua kolom harus di isi!");
            RequestDispatcher rdp = request.getRequestDispatcher("pages/tambahkelas.jsp");
            rdp.forward(request, response);
                   
        }else if (klas.check(nama, guru) == true ) {
            request.setAttribute("Peringatan", "Nama Kelas sudah digunakan");
            RequestDispatcher rdp = request.getRequestDispatcher("pages/tambahkelas.jsp");
            rdp.forward(request, response);
            
        }else if (nama.length() > 4){
            request.setAttribute("Peringatan", "Nama Kelas maksimal 4 digit");
            RequestDispatcher rdp = request.getRequestDispatcher("pages/tambahkelas.jsp");
            rdp.forward(request, response);
        
       
        }else{
            
        kls.setNamakelas(nama);
        kls.setNamaguru(guru);
        
        klas.addKelas(kls);
            RequestDispatcher rdp = request.getRequestDispatcher("pages/tambahkelas.jsp");
            rdp.forward(request, response);
        //response.sendRedirect("tambahkelas");
        }
        
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
        processRequest(request, response);
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
        processRequest(request, response);
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

    