/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;
import java.util.List;
import javax.management.Query;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import jpa.exceptions.NonexistentEntityException;


//import java.io.Serializable;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;


/**
 *
 * @author aan
 
public class DaftarAbsensi implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DaftarAbsensi)) {
            return false;
        }
        DaftarAbsensi other = (DaftarAbsensi) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.DaftarAbsensi[ id=" + id + " ]";
    }
 } */

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
        List<Absensi> Absensi = new ArrayList<Absensi>();

        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT a FROM absensi AS a");
            Absensi absensi = q.getResultList();

        } finally {
            em.close();
        }
        return absensi;
    }
    
    public Absensi findAbsensi(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(absensi.class, id);
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
    
    public void deleteAbsensi(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Absensi absensi;
            try {
                absensi = em.getReference(Absensi.class, id);
                absensi.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The absensi with id " + id + " no longer exists.", enfe);
            }
            em.remove(absensi);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

     


public Absensi getAbsensi(String nama, String keterangan) {
        Absensi absensi = null;
        EntityManager em = getEntityManager();
        try {
            boolean hasilCheck = this.check(nama, keterangan);
            if (hasilCheck) {
                javax.persistence.Query q = em.createQuery("SELECT a FROM Absensi AS a WHERE a.nama=:nama AND a.keterangan=:ketarangan");
                q.setParameter("namapengguna", nama);
                q.setParameter ("keterangan", keterangan);
                absensi = (Absensi) q.getSingleResult();
            }
        } finally {
            em.close();
        }
        return absensi;
    }
          
    private boolean check(String nama, String keterangan) {
        
        
        throw new UnsupportedOperationException("Not yet implemented");
    }
}
   
        

