/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;


import entity.Kelas;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import jpa.exceptions.NonexistentEntityException;

/**
 *
 * @author Heti Liyana
 */
public class DaftarKelas implements Serializable {

    public DaftarKelas() {
        emf = Persistence.createEntityManagerFactory("ArasPU");
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public boolean check(Long id) {
        boolean result = false;
        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT count(o) FROM Kelas AS o WHERE o.id=:id");
            q.setParameter("id", id);

            int jumlahKelas = ((Long) q.getSingleResult()).intValue();
            if (jumlahKelas > 0) {
                result = true;
            }
        } finally {
            em.close();
        }
        return result;
    }

    public Kelas getKelas(Long id) {
        Kelas kelas = null;
        EntityManager em = getEntityManager();
        try {
            boolean hasilCheck = this.check(id);
            if (hasilCheck) {
                Query q = em.createQuery("SELECT object(o) FROM Kelas AS o WHERE o.id=:id");
                q.setParameter("id", id);
                kelas = (Kelas) q.getSingleResult();
            }
        } finally {
            em.close();
        }
        return kelas;
    }
    
    public List<Kelas> getKelas() {
        List<Kelas> Kelass = new ArrayList<Kelas>();

        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT object(o) FROM Kelas AS o");
            Kelass = q.getResultList();

        } finally {
            em.close();
        }
        return Kelass;
    }

    public void editKelas(Kelas kelas) {
        EntityManager em = getEntityManager();
        em.getTransaction().begin();
        try {
            em.merge(kelas);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }

    public void addKelas(Kelas kelas) {
        EntityManager em = getEntityManager();
        em.getTransaction().begin();
        try {
            em.persist(kelas);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }

    public void deleteKelas(Long id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Kelas kelas;
            try {
                kelas = em.getReference(Kelas.class, id);
                kelas.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The Kelas with id " + id + " no longer exists.", enfe);
            }
            em.remove(kelas);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public EntityManagerFactory getEmf() {
        return emf;
    }

    public void setEmf(EntityManagerFactory emf) {
        this.emf = emf;
    }
}