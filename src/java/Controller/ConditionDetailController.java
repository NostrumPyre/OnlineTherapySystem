/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
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
import model.Appointment;
import model.Patient;
import model.Questionaire;
import model.Report;
import model.Therapist;

/**
 *
 * @author thoriqulhaqjibrilalqudsy
 */
@WebServlet(name = "ConditionDetailController", urlPatterns = {"/ConditionDetailController"})
public class ConditionDetailController extends HttpServlet {

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
        Appointment appointment = new Appointment();
        ArrayList<Appointment> appointmentList = (ArrayList<Appointment>) appointment.getAllAppointment();
        HttpSession session = request.getSession();
        session.setAttribute("appointmentList", appointmentList);
      
        Patient patient = new Patient();
        ArrayList<Patient> patientList = (ArrayList<Patient>) patient.getAllPatient();
        session.setAttribute("patientList", patientList);
        
        Therapist therapist = new Therapist();
        ArrayList<Therapist> therapistList = (ArrayList<Therapist>) therapist.getAllTherapist();
        session.setAttribute("therapistList", therapistList);
        
        Questionaire questionaire = new Questionaire();
        ArrayList<Questionaire> questionaireList = (ArrayList<Questionaire>) questionaire.getAllQuestionaire();
        session.setAttribute("questionaireList", questionaireList);
        
        Report report = new Report();
        ArrayList<Report> reportList = (ArrayList<Report>) report.getAllReport();
        session.setAttribute("reportList", reportList);
        
        request.getRequestDispatcher("ConditionDetail.jsp").forward(request, response);
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
