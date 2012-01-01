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
    
    public Siswa findSiswa(Long id) {
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
    
    public void deleteSiswa(Long id) throws NonexistentEntityException {
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
    
    public Siswa getSiswa(String nis, String namasiswa) {
        Siswa siswa = null;
        EntityManager em = getEntityManager();
        try {
            boolean hasilCheck = this.check(nis, namasiswa);
            if (hasilCheck) {
                Query q = (Query) em.createQuery("SELECT a FROM Siswa AS a WHERE a.nis=:nis AND a.namasiswa=:namasiswa");
                q.setParameter("nis", nis);
                q.setParameter("namasiswa", namasiswa);
                siswa = (Siswa) q.getSingleResult();
            }
        } finally {
            em.close();
        }
        return siswa;
    }

    public boolean check(String nis, String namasiswa) {
        boolean result = false;
        EntityManager em = getEntityManager();
        try {
            Query q = (Query) em.createQuery("SELECT a FROM Siswa AS a WHERE a.nis=:nis AND a.namasiswa=:namasiswa");
                q.setParameter("nis", nis);
                q.setParameter("namasiswa", namasiswa);
            int jumlahSiswa = ((Integer) q.getSingleResult()).intValue();
            if (jumlahSiswa == 1) {
                result = true;
            }
        } finally {
            em.close();
        }
        return result;
    }
    
    
    
}
