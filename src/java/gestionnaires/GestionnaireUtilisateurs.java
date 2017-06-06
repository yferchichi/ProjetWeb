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

    public Utilisateur findUserByEmail(String email, String password) {
        Utilisateur u = new Utilisateur();
        Query q = em.createQuery("select u from Utilisateur u where u.email=:email and u.password=:password");
        q.setParameter("email", email);
        q.setParameter("password", password);
        try {
            u = (Utilisateur) q.getSingleResult();
        } catch (Exception e) {

        }
        return u;
    }

    public Collection<Utilisateur> findAllUsers() {
        Query q = em.createQuery("select u from Utilisateur u");
        return q.getResultList();

    }

    public Boolean UpdateUser(Utilisateur u) {
        em.merge(u);
        return true;
    }

    public Collection<Utilisateur> findSomeUsers(int begin, int end) {

        Query q = em.createQuery("select u from Utilisateur u");
        return q.getResultList().subList(begin, end);

    }
}
