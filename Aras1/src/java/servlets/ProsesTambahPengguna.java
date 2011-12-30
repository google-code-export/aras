/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entity.DaftarPengguna;
import entity.Pengguna;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Margo Utomo
 */
public class ProsesTambahPengguna extends HttpServlet {

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
        
        String namapengguna = request.getParameter("namapengguna");
        String katasandi = request.getParameter("katasandi");
        String nama = request.getParameter("nama");
        String nip = request.getParameter("nip");
        String telp = request.getParameter("telp");
        String peran = request.getParameter("peran");
        
        DaftarPengguna penggunax = new DaftarPengguna();
        Pengguna pengguna = new Pengguna();
        
        if (namapengguna.equals("") && katasandi.equals("") && nama.equals("") && nip.equals("") && telp.equals("") && peran.equals("")) {
            request.setAttribute("Peringatan","Semua kolom harus di isi");
            RequestDispatcher rdp = request.getRequestDispatcher("pengguna");
            rdp.forward(request, response);
            
        }else if(!nip.matches("[0-9]*")){
            request.setAttribute("Peringatan", "NIP hanya boleh di isi dengan angka saja");
            RequestDispatcher rdp = request.getRequestDispatcher("pengguna");
            rdp.forward(request, response);
            
        }else{
            pengguna.setKatasandi(katasandi);
            pengguna.setNamapengguna(namapengguna);
            pengguna.setNama(nama);
            pengguna.setNip(nip);
            pengguna.setTelp(telp);
            pengguna.setPeran(peran);
            
            penggunax.addPengguna(pengguna);
        }
        
        try {
             response.sendRedirect("pengguna");
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProsesTambahPengguna</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProsesTambahPengguna at " + request.getContextPath () + "</h1>");
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
