/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entity.DaftarKelas;
import entity.DaftarSemester;
import entity.DaftarSiswa;
import entity.Kelas;
import entity.Semester;
import entity.Siswa;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author margoutomo
 */
public class ProsesUbahSiswa extends HttpServlet {

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
        
        Long id = Long.parseLong(request.getParameter("id") );
                
        DaftarSiswa siswax = new DaftarSiswa();
        Siswa siswa = siswax.findSiswa(id);
        
        DaftarKelas daftarkelas = new DaftarKelas();
        List<Kelas> kelas = daftarkelas.getKelas(); 
        request.setAttribute("listkelas", kelas);
        
        DaftarSemester daftarsemester = new DaftarSemester();
        List<Semester> semester = daftarsemester.getSemester();
        request.setAttribute("listsemester", semester);
        
        HttpSession sessionedit=request.getSession();
        sessionedit.setAttribute("siswa", siswa);
        request.setAttribute("siswa", siswa);
        
        try {
            RequestDispatcher rdp = request.getRequestDispatcher("pages/UbahSiswa.jsp");
            rdp.forward(request, response);
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProsesUbahSiswa</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProsesUbahSiswa at " + request.getContextPath () + "</h1>");
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
