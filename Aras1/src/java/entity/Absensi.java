/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;

/**
 *
 * @author aan
 */
@Entity
public class Absensi implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String namasiswa;
    private String keterangan;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date tglAbsensi;
    @ManyToOne
    private Kelas kelas;
    //@ManyToOne
    //private Semester semester;

    public Kelas getKelas() {
        return kelas;
    }

    public void setKelas(Kelas kelas) {
        this.kelas = kelas;
    }

    public String getKeterangan() {
        return keterangan;
    }

    public void setKeterangan(String keterangan) {
        this.keterangan = keterangan;
    }

    public String getNamasiswa() {
        return namasiswa;
    }

    public void setNamasiswa(String namasiswa) {
        this.namasiswa = namasiswa;
    }

    public Date getTglAbsensi() {
        return tglAbsensi;
    }

    public void setTglAbsensi(Date tglAbsensi) {
        this.tglAbsensi = tglAbsensi;
    }
    
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
        if (!(object instanceof Absensi)) {
            return false;
        }
        Absensi other = (Absensi) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Absensi[ id=" + id + " ]";
    }
    
}
