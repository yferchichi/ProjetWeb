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
<<<<<<< HEAD
 * @author Youssef
=======
 * @author TOSHIBA PC
>>>>>>> 104172e32507e1fd064fb23a6729ad77e49895d3
 */
@Stateless
public class GestionnaireUtilisateurs {

    @PersistenceContext
    private EntityManager em;

<<<<<<< HEAD
    public Utilisateur addUser(Utilisateur u) {

=======
    public Utilisateur addUsers(Utilisateur u) {
>>>>>>> 104172e32507e1fd064fb23a6729ad77e49895d3
        em.persist(u);
        return u;
    }

    public Utilisateur findUserById(Long Id) {
<<<<<<< HEAD

        return em.find(Utilisateur.class, Id);

=======
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
>>>>>>> 104172e32507e1fd064fb23a6729ad77e49895d3
    }

    public Collection<Utilisateur> findAllUsers() {
        Query q = em.createQuery("select u from Utilisateur u");
        return q.getResultList();
<<<<<<< HEAD

    }

    public Boolean upadteUser(Utilisateur u) {
=======
    }

    public Boolean UpdateUser(Utilisateur u) {
>>>>>>> 104172e32507e1fd064fb23a6729ad77e49895d3
        em.refresh(u);
        return true;
    }

<<<<<<< HEAD
    public Collection<Utilisateur> findSomeUsers(int begin, int end) {

        Query q = em.createQuery("select u from Utilisateur u");
        return q.getResultList().subList(begin, end);

=======
    public Collection<Utilisateur> findSomeUsers(Integer begin, Integer end) {
        Query q = em.createQuery("select u from Utilisateur u");
        return q.getResultList().subList(begin, end);
>>>>>>> 104172e32507e1fd064fb23a6729ad77e49895d3
    }
}
