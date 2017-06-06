/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import modeles.StateVote;

/**
 *
 * @author TOSHIBA PC
 */
@WebListener
public class Initializer implements ServletContextListener {

    private static final String ATT_DAO_FACTORY = "initier";

    private StateVote stateVote;

    @Override
    public void contextInitialized(ServletContextEvent event) {
        ServletContext servletContext = event.getServletContext();
        stateVote = new StateVote();
        servletContext.setAttribute(ATT_DAO_FACTORY, this.stateVote);
        System.out.println("J'ai initialisé l'a variable voulue");
    }

    @Override
    public void contextDestroyed(ServletContextEvent event) {
    }
}
