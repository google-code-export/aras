/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.Query;
import jpa.exceptions.NonexistentEntityException;

/**
 *
 * @author Margo Utomo
 */
public class DaftarPengguna {

    public DaftarPengguna() {
        emf = Persistence.createEntityManagerFactory("ArasPU");
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public List<Pengguna> getPengguna() {
        List<Pengguna> penggunax = new ArrayList<Pengguna>();

        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT a FROM Pengguna AS a");
            penggunax = q.getResultList();

        } finally {
            em.close();
        }
        return penggunax;
    }

    public Pengguna findPengguna(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Pengguna.class, id);
        } finally {
            em.close();
        }
    }

    public void addPengguna(Pengguna pengguna) {
        EntityManager em = null;
        em = getEntityManager();
        em.getTransaction().begin();
        try {

            em.persist(pengguna);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void updatePengguna(Pengguna pengguna) {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(pengguna);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public void deletePengguna(Long id) throws NonexistentEntityException {
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

    public Pengguna getPengguna(String namapengguna, String katasandi) {
        Pengguna pengguna = null;
        EntityManager em = getEntityManager();
        try {
            boolean hasilCheck = this.check(namapengguna, katasandi);
            if (hasilCheck) {
                Query q = em.createQuery("SELECT a FROM Pengguna AS a WHERE a.namapengguna=:namapengguna AND a.katasandi=:katasandi");
                q.setParameter("namapengguna", namapengguna);
                q.setParameter("katasandi", katasandi);
                pengguna = (Pengguna) q.getSingleResult();
            }
        } finally {
            em.close();
        }
        return pengguna;
    }

    public boolean check(String namapengguna, String katasandi) {
        boolean result = false;
        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT COUNT (a) FROM Pengguna AS a WHERE a.namapengguna=:namapengguna AND a.katasandi=:katasandi");
            q.setParameter("namapengguna", namapengguna);
            q.setParameter("katasandi", katasandi);
            int jumlahUser = ((Long) q.getSingleResult()).intValue();
            if (jumlahUser == 1) {
                result = true;
            }
        } finally {
            em.close();
        }
        return result;
    }
}
