/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Margo Utomo
 */
@Entity
@Table(name = "pengguna")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Pengguna.findAll", query = "SELECT p FROM Pengguna p"),
    @NamedQuery(name = "Pengguna.findById", query = "SELECT p FROM Pengguna p WHERE p.id = :id"),
    @NamedQuery(name = "Pengguna.findByNama", query = "SELECT p FROM Pengguna p WHERE p.nama = :nama"),
    @NamedQuery(name = "Pengguna.findByNip", query = "SELECT p FROM Pengguna p WHERE p.nip = :nip"),
    @NamedQuery(name = "Pengguna.findByNamapengguna", query = "SELECT p FROM Pengguna p WHERE p.namapengguna = :namapengguna"),
    @NamedQuery(name = "Pengguna.findByKatasandi", query = "SELECT p FROM Pengguna p WHERE p.katasandi = :katasandi"),
    @NamedQuery(name = "Pengguna.findByNomortelepon", query = "SELECT p FROM Pengguna p WHERE p.nomortelepon = :nomortelepon")})
public class Pengguna implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "nama")
    private String nama;
    @Basic(optional = false)
    @Column(name = "nip")
    private String nip;
    @Basic(optional = false)
    @Column(name = "namapengguna")
    private String namapengguna;
    @Basic(optional = false)
    @Column(name = "katasandi")
    private String katasandi;
    @Basic(optional = false)
    @Column(name = "nomortelepon")
    private String nomortelepon;

    public Pengguna() {
    }

    public Pengguna(Integer id) {
        this.id = id;
    }

    public Pengguna(Integer id, String nama, String nip, String namapengguna, String katasandi, String nomortelepon) {
        this.id = id;
        this.nama = nama;
        this.nip = nip;
        this.namapengguna = namapengguna;
        this.katasandi = katasandi;
        this.nomortelepon = nomortelepon;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getNip() {
        return nip;
    }

    public void setNip(String nip) {
        this.nip = nip;
    }

    public String getNamapengguna() {
        return namapengguna;
    }

    public void setNamapengguna(String namapengguna) {
        this.namapengguna = namapengguna;
    }

    public String getKatasandi() {
        return katasandi;
    }

    public void setKatasandi(String katasandi) {
        this.katasandi = katasandi;
    }

    public String getNomortelepon() {
        return nomortelepon;
    }

    public void setNomortelepon(String nomortelepon) {
        this.nomortelepon = nomortelepon;
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
        if (!(object instanceof Pengguna)) {
            return false;
        }
        Pengguna other = (Pengguna) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Pengguna[ id=" + id + " ]";
    }
    
}
