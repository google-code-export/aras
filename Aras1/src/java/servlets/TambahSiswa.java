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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Margo Utomo
 */
public class TambahSiswa extends HttpServlet {

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
        
        String nis = request.getParameter("nis");
        String namasiswa = request.getParameter("namasiswa");
        String idkelas = request.getParameter("kelas");
        String idsemester = request.getParameter("semester");
        String namaortu = request.getParameter("namaortu");
        String alamat = request.getParameter("alamat");
        String nmrtlp = request.getParameter("nmrtlp");
        
        DaftarSiswa siswax = new DaftarSiswa();
        Siswa siswa = new Siswa();
                
                      
        if (nis.isEmpty() || namasiswa.isEmpty() || idkelas.isEmpty() || idsemester.isEmpty() || namaortu.isEmpty() || alamat.isEmpty() || nmrtlp.isEmpty()){
            request.setAttribute("Peringatan", "Semua kolom harus di isi");
            RequestDispatcher rdp = request.getRequestDispatcher("pages/TambahSiswa.jsp");
            rdp.forward(request, response);
            
        }else if (siswax.check(nis, namasiswa) == true ) {
            request.setAttribute("Peringatan", "NIS dan Nama Pengguna sudah digunakan");
            RequestDispatcher rdp = request.getRequestDispatcher("pages/TambahSiswa.jsp");
            rdp.forward(request, response);
            
        }else if(!nis.matches("[0-9]*")){
            request.setAttribute("Peringatan", "NIS hanya boleh di isi dengan angka saja");
            RequestDispatcher rdp = request.getRequestDispatcher("pages/TambahSiswa.jsp");
            rdp.forward(request, response);
            
        }else if (!nmrtlp.matches("[0-9]*")){
            request.setAttribute("Peringatan", "Nomor Telepon hanya boleh di isi dengan angka saja");
            RequestDispatcher rdp = request.getRequestDispatcher("pages/TambahSiswa.jsp");
            rdp.forward(request, response);
        
        }else{
            
            DaftarKelas daftarkelas = new DaftarKelas();
            Kelas kelas = daftarkelas.getKelas(Long.parseLong(request.getParameter("kelas")));
            
            DaftarSemester daftarsemester = new DaftarSemester();
            Semester semester = daftarsemester.getSemester(Long.parseLong(request.getParameter("semester")));
                        
            siswa.setNis(nis);
            siswa.setNamasiswa(namasiswa);
            siswa.setKelas(kelas);
            siswa.setSemester(semester);
            siswa.setNamaortu(namaortu);
            siswa.setnmrtlp(nmrtlp);
            
            siswax.addSiswa(siswa);
            RequestDispatcher rdp = request.getRequestDispatcher("pages/TambahSiswa.jsp");
            rdp.forward(request, response);
        }
        
                
        
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TambahSiswa</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TambahSiswa at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
             */
            RequestDispatcher rdp = request.getRequestDispatcher("/pages/TambahSiswa.jsp") ;
            rdp.forward(request, response);
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
