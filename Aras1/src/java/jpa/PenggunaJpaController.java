/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa;

import entity.Pengguna;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import jpa.exceptions.NonexistentEntityException;

/**
 *
 * @author Margo Utomo
 */
public class PenggunaJpaController implements Serializable {

    public PenggunaJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Pengguna pengguna) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(pengguna);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Pengguna pengguna) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            pengguna = em.merge(pengguna);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = pengguna.getId();
                if (findPengguna(id) == null) {
                    throw new NonexistentEntityException("The pengguna with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Pengguna pengguna;
            try {
                pengguna = em.getReference(Pengguna.class, id);
                pengguna.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The pengguna with id " + id + " no longer exists.", enfe);
            }
            em.remove(pengguna);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Pengguna> findPenggunaEntities() {
        return findPenggunaEntities(true, -1, -1);
    }

    public List<Pengguna> findPenggunaEntities(int maxResults, int firstResult) {
        return findPenggunaEntities(false, maxResults, firstResult);
    }

    private List<Pengguna> findPenggunaEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Pengguna.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Pengguna findPengguna(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Pengguna.class, id);
        } finally {
            em.close();
        }
    }

    public int getPenggunaCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Pengguna> rt = cq.from(Pengguna.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
