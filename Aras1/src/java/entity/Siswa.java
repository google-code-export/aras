/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Margo Utomo
 */
@Entity
public class Siswa implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String nis;
    private String namasiswa;
    private String kelas;
    private String semester;
    private String namaortu;
    private String alamat;
    private String nmrtlp;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    
    public String getNis() {
        return nis;
    }
    
    public void setNis (String nis) {
        this.nis = nis;
    }
    
    public String getNamasiswa() {
        return namasiswa;
    }
    
    public void setNamasiswa (String namasiswa) {
        this.namasiswa = namasiswa;
    }
    
    public String getKelas() {
        return kelas;
    }
    
    public void setKelas (String kelas) {
        this.kelas = kelas;
    }
    
    public String getSemester() {
        return semester;
    }
    
    public void setSemester (String semester) {
        this.semester = semester;
    }
    
    public String getNamaortu() {
        return namaortu;
    }
    
    public void setNamaortu (String namaortu) {
        this.namaortu = namaortu;
    }
    
    public String getAlamat() {
        return alamat;
    }
    
    public void setAlamat (String alamat) {
        this.alamat = alamat;
    }
    
    public String getNmrtlp() {
        return nmrtlp;
    }
    
    public void setnmrtlp (String nmrtlp) {
        this.nmrtlp = nmrtlp;
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
        if (!(object instanceof Siswa)) {
            return false;
        }
        Siswa other = (Siswa) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Siswa[ id=" + id + " ]";
    }
    
}
