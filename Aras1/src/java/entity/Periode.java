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
 * @author aan
 */
@Entity
public class Periode implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
  //  private Long idKelas;
    private String Harian;
    private String Bulanan;
    private String Semesteran;
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getBulanan() {
        return Bulanan;
    }

    public void setBulanan(String Bulanan) {
        this.Bulanan = Bulanan;
    }

    public String getHarian() {
        return Harian;
    }

    public void setHarian(String Harian) {
        this.Harian = Harian;
    }

    public String getSemesteran() {
        return Semesteran;
    }

    public void setSemesteran(String Semesteran) {
        this.Semesteran = Semesteran;
    }

    /*public Long getIdKelas() {
        return idKelas;
    }

    public void setIdKelas(Long idKelas) {
        this.idKelas = idKelas;
    }*/

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Periode)) {
            return false;
        }
        Periode other = (Periode) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Periode[ id=" + id + " ]";
    }
    
}
