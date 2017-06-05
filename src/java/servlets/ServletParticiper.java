/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import gestionnaires.GestionnaireUtilisateurs;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modeles.Utilisateur;

/**
 *
 * @author Youssef
 */
@WebServlet(name = "ServletParticiper", urlPatterns = {"/participer"})
public class ServletParticiper extends HttpServlet {

    @EJB
    GestionnaireUtilisateurs gestionnaire;

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
        HttpSession session = request.getSession(false);
        if (session != null) {
            Utilisateur u = (Utilisateur) session.getAttribute("sessionUser");
            request.setAttribute("profil", u.getProfil());
            this.getServletContext().getRequestDispatcher("/participer.jsp").forward(request, response);

        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }

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
            Utilisateur u = (Utilisateur) session.getAttribute("sessionUser");
            String profil = request.getParameter("profil");
            if (profil.equals("etudiant")) {
                u.setProfil(profil);
                u.setBirthDate(request.getParameter("birthday"));
                u.setNomMiage(request.getParameter("miage"));
                String diplome = request.getParameter("ancien");
                if (diplome.equals("oui")) {
                    u.setDiplome(0);
                } else {
                    u.setDiplome(1);
                }
            } else if (profil.equals("enseignant")) {
                u.setProfil(profil);
            } else {
                u.setProfil(profil);
                u.setFunctionEnt(request.getParameter("fonction"));
                u.setTelEnt(request.getParameter("telephone"));
                u.setAdresseEnt(request.getParameter("adresse"));
                u.setNomEnt(request.getParameter("entreprisenom"));
                u.setSecteurEnt(request.getParameter("secteur"));
            }
            gestionnaire.UpdateUser(u);
            session.setAttribute("sessionUser", u);
            this.getServletContext().getRequestDispatcher("/packs.jsp").forward(request, response);

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
