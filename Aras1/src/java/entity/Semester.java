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
import javax.persistence.Temporal;

/**
 *
 * @author Heti Liyana
 */
@Entity
public class Semester implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String namasemester;
    private String tahunajaran;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date tanggalawal;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date tanggalakhir;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    public String getNamasemester() {
        return namasemester;
    }

    public void setNamasemester(String namasemester) {
        this.namasemester = namasemester;
    }

    public String getTahunajaran() {
        return tahunajaran;
    }

    public void setTahunajaran(String tahunajaran) {
        this.tahunajaran = tahunajaran;
    }
    
    public Date getTanggalawal() {
        return tanggalawal;
    }

    public void setTanggalawal(Date tanggalawal) {
        this.tanggalawal = tanggalawal;
    }
    
    public Date getTanggalakhir() {
        return tanggalakhir;
    }

    public void setTanggalakhir(Date tanggalakhir) {
        this.tanggalakhir = tanggalakhir;
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
        if (!(object instanceof Semester)) {
            return false;
        }
        Semester other = (Semester) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Semester[ id=" + id + " ]";
    }
    
}
