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
 * @author aan
 */
public class DaftarAbsensi {
     private List<Absensi> absensi;
    public DaftarAbsensi() {
        emf = Persistence.createEntityManagerFactory("ArasPU"); 
    }

    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public List<Absensi> getAbsensi() {
        List<Absensi> absensix = new ArrayList<Absensi>();

        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT a FROM Absensi AS a") ;
            absensix = q.getResultList ();
           
        } finally {
            em.close();
        }
        return absensix;
    }
    
    public Absensi findAbsensi(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Absensi.class, id);
        } finally {
            em.close();
        }
    }
    
    public void addAbsensi(Absensi absensi) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(absensi);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    public void updateAbsensi(Absensi absensi) {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(absensi);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }
    
    public void deleteAbsensi(Long id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Absensi absensix;
            try {
                absensix = em.getReference(Absensi.class, id);
                absensix.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The absensi with id " + id + " no longer exists.", enfe);
            }
            em.remove(absensix);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

     public Absensi getAbsensi(String namasiswa, String keterangan) {
        Absensi absensix = null;
        EntityManager em = getEntityManager();
        try {
            boolean hasilCheck = this.check(namasiswa, keterangan);
            if (hasilCheck) {
                javax.persistence.Query q = em.createQuery("SELECT a FROM Absensi AS a WHERE a.namasiswa=:namasiswa AND a.keterangan=:keterangan");
                q.setParameter("namasiswa", namasiswa);
                q.setParameter ("keterangan", keterangan);
                absensix = (Absensi) q.getSingleResult();
            }
        } finally {
            em.close();
        }
        return absensix;
    }
          
    private boolean check(String namasiswa, String keterangan) {
        
        
        throw new UnsupportedOperationException("Not yet implemented");
    }
}
