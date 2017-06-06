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
import modeles.Vote;

/**
 *
 * @author TOSHIBA PC
 */
@Stateless
public class GestionnaireVotes {

    @PersistenceContext
    private EntityManager em;

    public void addVote(Vote vote) {
        em.persist(vote);
    }

    public Collection<Vote> getVotesByIdAuthor(Long idAuthor) {
        Collection<Vote> u = null;

        Query q = em.createQuery("select u from Utilisateur u where u.idauthor=:idauthor");
        q.setParameter("idauthor", idAuthor);
        try {
            u = q.getResultList();
        } catch (Exception e) {

        }
        return u;
    }
}
