/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Admin;
import model.Patient;
import model.Therapist;

/**
 *
 * @author rhyth
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String email = (String) request.getParameter("email");
        String password = (String) request.getParameter("password");
        String accountType = (String) request.getParameter("accountType");
        HttpSession session= request.getSession();
        
        if(accountType.equals("patient")){
            
            Patient patient = new Patient();
            ArrayList<Patient> patientList = patient.getAllPatient();
            
            for(int i=0;i<patientList.size();i++){
                if(patientList.get(i).getEmail().equals(email) || patientList.get(i).getPassword().equals(password)){
                    patient = patientList.get(i);
                    break;
                }
            }
            session.setAttribute("patient", patient);
            request.getRequestDispatcher("landingPage.jsp").forward(request, response);
            
            
        }else if(accountType.equals("therapist")){
            
            Therapist therapist = new Therapist();
            ArrayList<Therapist> therapistList = therapist.getAllTherapist();
            
            for(int i=0;i<therapistList.size();i++){
                if(therapistList.get(i).getEmail().equals(email) || therapistList.get(i).getPassword().equals(password)){
                    therapist = therapistList.get(i);
                    break;
                }
            }
            session.setAttribute("therapist", therapist);
            request.getRequestDispatcher("TherapistDashboard.jsp").forward(request, response);
            
        }else{
            
            Admin admin = new Admin();
            ArrayList<Admin> adminList = admin.getAllAdminData();
            
            for(int i=0;i<adminList.size();i++){
                if(adminList.get(i).getEmail().equals(email) || adminList.get(i).getPassword().equals(password)){
                    admin = adminList.get(i);
                    break;
                }
            }
            session.setAttribute("admin", admin);
            request.getRequestDispatcher("AdminDashboard.jsp").forward(request, response);
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
