/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;
import entity.Kelas;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import jpa.exceptions.NonexistentEntityException;

/**
 *
 * @author Heti Liyana
 */
public class DaftarKelas {

    public DaftarKelas() {
        emf = Persistence.createEntityManagerFactory("ArasPU");
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public List<Kelas> getKelas() {
        List<Kelas> kelasx = new ArrayList<Kelas>();

        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT Object(a) FROM Kelas AS a");
            kelasx = q.getResultList();

        } finally {
            em.close();
        }
        return kelasx;
    }

    public Kelas findKelas(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Kelas.class, id);
        } finally {
            em.close();
        }
    }

    public void addKelas(Kelas kelas) {
        EntityManager em = null;
        em = getEntityManager();
        em.getTransaction().begin();
        try {

            em.persist(kelas);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void updateKelas(Kelas kelas) {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(kelas);
            em.getTransaction().commit();
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

    public Kelas getKelas(String namakelas, String namaguru) {
        Kelas kelas = null;
        EntityManager em = getEntityManager();
        try {
            boolean hasilCheck = this.check(namakelas, namaguru);
            if (hasilCheck) {
                Query q = (Query) em.createQuery("SELECT a FROM Kelas AS a WHERE a.namaKelas=:namaKelas AND a.namaGuru=:namaGuru");
                q.setParameter("namaKelas", namakelas);
                q.setParameter("namaGuru", namaguru);
                kelas = (Kelas) q.getSingleResult();
            }
        } finally {
            em.close();
        }
        return kelas;
    }

    public boolean check(String namakelas, String namaguru) {
        boolean result = false;
        EntityManager em = getEntityManager();
        try {
            Query q = (Query) em.createQuery("SELECT a FROM Kelas AS a WHERE a.namaKelas=:namaKelas AND a.namaGuru=:namaGuru");
            q.setParameter("namaKelas", namakelas);
            q.setParameter("namaGuru", namaguru);
            int jumlahKelas = ((Long) q.getSingleResult()).intValue();
            if (jumlahKelas == 1) {
                result = true;
            }
        } finally {
            em.close();
        }
        return result;
    }
}
