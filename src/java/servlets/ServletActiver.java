/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import ThreadVote.RunVotePull;
import ThreadVote.RunVoteVideo;
import gestionnaires.GestionnaireUtilisateurs;
import java.io.IOException;
import java.util.Collection;
import javax.ejb.EJB;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeles.StateVote;
import modeles.Utilisateur;

/**
 *
 * @author Youssef
 */
@WebServlet(name = "ServletActiver", urlPatterns = {"/activer"})
public class ServletActiver extends HttpServlet {

    @EJB
    GestionnaireUtilisateurs userDao;
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
    StateVote stateVote;
    private static final String ATT_DAO_FACTORY = "initier";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (((StateVote) getServletContext().getAttribute(ATT_DAO_FACTORY)) != null) {
            this.stateVote = ((StateVote) getServletContext().getAttribute(ATT_DAO_FACTORY));

        } else {
            stateVote = new StateVote();
        }
        String nom = request.getParameter("nom");
        String etat = request.getParameter("etat");
        if (nom.equals("video")) {
            if (etat.equals("activer")) {
                if (stateVote != null && stateVote.getStateVideo().equals("actif")) {
                    request.setAttribute("message", "Vote de vidéo déjà activé!");

                } else {
                    ((StateVote) getServletContext().getAttribute(ATT_DAO_FACTORY)).setStateVideo("actif");
                    request.setAttribute("message", "Vote de vidéo activé!");

                }

            } else {
                if (stateVote.getStateVideo() != null && (stateVote.getStateVideo().equals("actif"))) {
                    ((StateVote) getServletContext().getAttribute(ATT_DAO_FACTORY)).setStateVideo("inactif");
                    System.out.println("Je me suis désactivé");
                    request.setAttribute("message", "Vote de vidéo désactivé!");

                } else {
                    request.setAttribute("message", "Vote de vidéo déjà désactivé!");

                }
            }
        } else {
            if (etat.equals("activer")) {
                if (stateVote.getStatePull() != null && stateVote.getStatePull().equals("actif")) {
                    request.setAttribute("message", "Vote de pull déjà activé!");

                } else {
                    ((StateVote) getServletContext().getAttribute(ATT_DAO_FACTORY)).setStatePull("actif");
                    System.out.println("Je me suis activé");
                    request.setAttribute("message", "Vote de pull activé!");

                }

            } else {
                if (stateVote.getStatePull() != null && stateVote.getStatePull().equals("actif")) {
                    ((StateVote) getServletContext().getAttribute(ATT_DAO_FACTORY)).setStatePull("inactif");
                    System.out.println("Je me suis désactivé");
                    request.setAttribute("message", "Vote de pull désactivé!");

                } else {
                    request.setAttribute("message", "Vote de pull déjà activé!");

                }
            }

        }
        Collection<Utilisateur> allUsers = userDao.findAllUsers();
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
