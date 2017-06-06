/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import ThreadVote.RunVotePull;
import ThreadVote.RunVoteVideo;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Youssef
 */
@WebServlet(name = "ServletActiver", urlPatterns = {"/activer"})
public class ServletActiver extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Thread t1;
    Thread t2;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext servletContext = this.getServletContext();
        String nom = request.getParameter("nom");
        String etat = request.getParameter("etat");
        RunVoteVideo run;
        RunVotePull pull;
        if (nom.equals("video")) {
            if (etat.equals("activer")) {
                if (servletContext.getAttribute("runvotevideo") != null) {

                } else {
                    RunVoteVideo r = new RunVoteVideo();
                    t1 = new Thread(r);
                    t1.start();
                    servletContext.setAttribute("runvotevideo", r);
                    servletContext.setAttribute("thread1", t1);
                    request.setAttribute("message", "Vote de vidéo activé!");

                }

            } else {
                if (servletContext.getAttribute("runvotevideo") != null) {
                    run = (RunVoteVideo) servletContext.getAttribute("runvotevideo");
                    t1 = new Thread(run);
                    t1.stop();
                    servletContext.setAttribute("thread1", t1);
                    request.setAttribute("message", "Vote de vidéo désactivé!");

                } else {

                }
            }
        } else {
            if (etat.equals("activer")) {
                if (servletContext.getAttribute("runvotepull") != null) {

                } else {
                    RunVotePull r = new RunVotePull();
                    t2 = new Thread(r);
                    t2.start();
                    servletContext.setAttribute("runvotepull", r);
                    servletContext.setAttribute("thread2", t2);
                    request.setAttribute("message", "Vote de pull activé!");

                }

            } else {
                if (servletContext.getAttribute("runvotepull") != null) {
                    pull = (RunVotePull) servletContext.getAttribute("RunVotePull");
                    t2 = new Thread(pull);
                    t2.stop();
                    servletContext.setAttribute("thread2", t2);
                    request.setAttribute("message", "Vote de pull désactivé!");

                } else {

                }
            }

        }
        this.getServletContext().getRequestDispatcher("/administrer.jsp").forward(request, response);

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
