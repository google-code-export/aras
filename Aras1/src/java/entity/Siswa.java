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
import javax.persistence.ManyToOne;

/**
 *
 * @author Margo Utomo
 */
@Entity
public class Siswa implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    public Long getIdKelas() {
        return idKelas;
    }

    public void setIdKelas(Long idKelas) {
        this.idKelas = idKelas;
    }
    
    private Long idKelas;
    private String nis;
    private String namasiswa;
    //private String kelas; //ambil dari tabel lain
    //private String semester; //ambil dari tabel lain
    private String namaortu;
    private String alamat;
    private String nmrtlp;
    @ManyToOne
    private Kelas kelas;
    @ManyToOne
    private Semester semester;
    
        public Long getId() {
        return id;
    }

    public void setId(Long id) {
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
    
    public Kelas getKelas() {
        return kelas;
    }
    
    public void setKelas (Kelas kelas) {
        this.kelas = kelas;
    }
    
    public Semester getSemester() {
        return semester;
    }
    
    public void setSemester (Semester semester) {
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
