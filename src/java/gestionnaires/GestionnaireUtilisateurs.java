/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestionnaires;

import java.util.Collection;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import modeles.Utilisateur;

/**
 *
 * @author Youssef
 */
@Stateless
public class GestionnaireUtilisateurs {

    @PersistenceContext
    private EntityManager em;

    public Utilisateur addUser(Utilisateur u) {

        em.persist(u);
        return u;
    }

    public Utilisateur findUserById(Long Id) {

        return em.find(Utilisateur.class, Id);

    }

    public Collection<Utilisateur> findAllUsers() {
        Query q = em.createQuery("select u from Utilisateur u");
        return q.getResultList();

    }

    public Boolean upadteUser(Utilisateur u) {
        em.refresh(u);
        return true;
    }

    public Collection<Utilisateur> findSomeUsers(int begin, int end) {

        Query q = em.createQuery("select u from Utilisateur u");
        return q.getResultList().subList(begin, end);

    }
}
