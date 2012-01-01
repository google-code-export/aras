/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;


import entity.Semester;
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
public class DaftarSemester implements Serializable {

    public DaftarSemester() {
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
            Query q = em.createQuery("SELECT count(o) FROM Semester AS o WHERE o.id=:id");
            q.setParameter("id", id);

            int jumlahSemester = ((Long) q.getSingleResult()).intValue();
            if (jumlahSemester > 0) {
                result = true;
            }
        } finally {
            em.close();
        }
        return result;
    }

    public Semester getSemester(Long id) {
        Semester semester = null;
        EntityManager em = getEntityManager();
        try {
            boolean hasilCheck = this.check(id);
            if (hasilCheck) {
                Query q = em.createQuery("SELECT object(o) FROM Semester AS o WHERE o.id=:id");
                q.setParameter("id", id);
                semester = (Semester) q.getSingleResult();
            }
        } finally {
            em.close();
        }
        return semester;
    }
    
    public List<Semester> getSemester() {
        List<Semester> Semesters = new ArrayList<Semester>();

        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT object(o) FROM Semester AS o");
            Semesters = q.getResultList();

        } finally {
            em.close();
        }
        return Semesters;
    }

    public void editSemester(Semester semester) {
        EntityManager em = getEntityManager();
        em.getTransaction().begin();
        try {
            em.merge(semester);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }

    public void addSemester(Semester semester) {
        EntityManager em = getEntityManager();
        em.getTransaction().begin();
        try {
            em.persist(semester);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }

    public void deleteSemester(Long id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Semester semester;
            try {
                semester = em.getReference(Semester.class, id);
                semester.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The Semester with id " + id + " no longer exists.", enfe);
            }
            em.remove(semester);
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