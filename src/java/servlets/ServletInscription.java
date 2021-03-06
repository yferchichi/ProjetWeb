package servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import gestionnaires.GestionnaireUtilisateurs;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeles.Utilisateur;

/**
 *
 * @author Youssef
 */
@WebServlet(urlPatterns = {"/inscription"})
public class ServletInscription extends HttpServlet {

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
        this.getServletContext().getRequestDispatcher("/inscription.jsp").forward(request, response);

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
        String email = request.getParameter("email");
        String password = request.getParameter("motdepasse");
        String prenom = request.getParameter("prenom");
        String nom = request.getParameter("nom");
        String profil = request.getParameter("profil");
        String resultat = null;
        Utilisateur user = new Utilisateur();

        user.setEmail(email);
        user.setPassword(password);
        user.setPrenom(prenom);
        user.setNom(nom);
        user.setProfil(profil);

        Utilisateur u = userDao.addUser(user);
        System.out.println("Mail = " + email + " mot de passe = " + password);

        if (u != null) {
            resultat = "Succès";
            request.setAttribute("success", resultat);

            response.sendRedirect(request.getContextPath() + "/login");
        } else {
            request.setAttribute("success", resultat);
            this.getServletContext().getRequestDispatcher("/inscription.jsp").forward(request, response);

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
