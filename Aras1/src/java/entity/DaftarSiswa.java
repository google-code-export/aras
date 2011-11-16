/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

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
    
    
}
