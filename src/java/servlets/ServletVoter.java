/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import gestionnaires.GestionnaireUtilisateurs;
import gestionnaires.GestionnaireVotes;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.ejb.EJB;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modeles.Choice;
import modeles.StateVote;
import modeles.Utilisateur;
import modeles.Vote;

/**
 *
 * @author Youssef
 */
@WebServlet(name = "ServletVoter", urlPatterns = {"/voter"})
public class ServletVoter extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     *
     */
    @EJB
    GestionnaireVotes gestionnaire;
    StateVote stateVote;
    private static final String ATT_DAO_FACTORY = "initier";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
        this.stateVote = ((StateVote) getServletContext().getAttribute(ATT_DAO_FACTORY));
        if (stateVote.getStatePull() != null && stateVote.getStatePull().equals("actif")) {
            request.setAttribute("thread22", "OK");
        } else {
            request.setAttribute("thread22", "KO");

        }
        if (stateVote.getStateVideo() != null && stateVote.getStateVideo().equals("actif")) {
            request.setAttribute("thread11", "OK");

        } else {
            request.setAttribute("thread11", "KO");

        }
        this.getServletContext().getRequestDispatcher("/voter.jsp").forward(request, response);
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
        HttpSession session = request.getSession(false);
        if (session != null) {
            System.out.println("Je suis dans le dopost");

            Utilisateur person = (Utilisateur) session.getAttribute("sessionUser");
            String premier = request.getParameter("premier");
            String deuxieme = request.getParameter("deuxieme");
            String troisieme = request.getParameter("trois");
            String sujet = request.getParameter("sujet");
            Vote vote = new Vote();
            vote.setIdAuthor(person.getId());
            vote.setSubject(sujet);
            Choice c = new Choice();
            c.setContent(premier);
            ArrayList<Choice> listChoices = new ArrayList<Choice>();
            listChoices.add(c);
            Choice c1 = new Choice();
            c1.setContent(deuxieme);
            listChoices.add(c1);
            Choice c2 = new Choice();
            c2.setContent(troisieme);
            listChoices.add(c2);
            vote.setListChoices(listChoices);
            gestionnaire.addVote(vote);
            request.setAttribute("message", "Vous avez voté!");
            this.getServletContext().getRequestDispatcher("/accueil.jsp").forward(request, response);

        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
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
