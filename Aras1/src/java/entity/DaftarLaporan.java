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
 * @author aan
 */
public class DaftarLaporan {
//    private List<Laporan> laporan;
    public DaftarLaporan() {
        emf = Persistence.createEntityManagerFactory("ArasPU"); 
    }

    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

   public List<Laporan> getLaporan(int bln,Long idKelas) {
        List<Laporan> laporan = new ArrayList<Laporan>();

        EntityManager em = getEntityManager();
        try {
            Query q = em.createQuery("SELECT a.siswa,count(a.keterangan) as keterangan  FROM Absensi AS a where month(a.tglabsensi)=:bln and a.idKelas=:idKelas group by a.siswa") ;
            q.setParameter("bln", bln);
            q.setParameter("idKelas", idKelas);
            laporan = q.getResultList ();
           
        } finally {
            em.close();
        }
        return laporan;
    }

    
     
}
