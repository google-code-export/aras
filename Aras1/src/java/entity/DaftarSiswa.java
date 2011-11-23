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
public class DaftarSiswa {
    public DaftarSiswa() {
        emf = Persistence.createEntityManagerFactory("ArasPU"); 
    }

    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public List<Siswa> getSiswa() {
        List<Siswa> siswax = new ArrayList<Siswa>();

        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT a FROM Siswa AS a");
            siswax = q.getResultList();

        } finally {
            em.close();
        }
        return siswax;
    }
    
    public Siswa findSiswa(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Siswa.class, id);
        } finally {
            em.close();
        }
    }
    
    public void addSiswa(Siswa siswa) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(siswa);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    public void updateSiswa(Siswa siswa) {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(siswa);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }
    
    public void deleteSiswa(Integer id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Siswa siswa;
            try {
                siswa = em.getReference(Siswa.class, id);
                siswa.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The siswa with id " + id + " no longer exists.", enfe);
            }
            em.remove(siswa);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    
    
}
