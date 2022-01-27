/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Patient;
import model.Questionaire;
/*
 *
 * @author syafa
 */
@WebServlet(name = "QuestionaireController", urlPatterns = {"/QuestionaireController"})
public class QuestionaireController extends HttpServlet 
{
    /*
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            HttpSession session = request.getSession();
            
            String gender = (String) session.getAttribute("gender");
            String age = (String) session.getAttribute("age"); 
            String interest = (String) session.getAttribute("interest");
            String comm_pref = (String) session.getAttribute("comm_pref");
            String gen_pref = (String) session.getAttribute("gen_pref");
            String country = (String) session.getAttribute("country");
            String pref_language = (String) session.getAttribute("pref_language");
            String patient_condition = (String) session.getAttribute("patient_condition");
            
            Patient patient = (Patient) session.getAttribute("patient");  
            Questionaire questionaire = new Questionaire();
            
            questionaire.insertQuestionaire(patient.getPatientid(), gender, age, interest, comm_pref, gen_pref, country, pref_language, patient_condition);

            RequestDispatcher rd = request.getRequestDispatcher("Therapist.jsp"); 
            rd.forward(request, response); 
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
