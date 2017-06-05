/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeles;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

/**
 *
<<<<<<< HEAD
 * @author Youssef
=======
 * @author TOSHIBA PC
>>>>>>> 104172e32507e1fd064fb23a6729ad77e49895d3
 */
@Entity
public class Utilisateur implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String email;
    private String password;
    private String nom;
    private String prenom;
    private String profil;
    private String birthDate;
    private String nomMiage;
    private Integer diplome;
<<<<<<< HEAD
    private String fonctionEnt;
=======
    private String functionEnt;
>>>>>>> 104172e32507e1fd064fb23a6729ad77e49895d3
    private String nomEnt;
    private String telEnt;
    private String adresseEnt;
    private String secteurEnt;
    private Integer numPack;
    private Integer paidPack;
    private Integer registeredOrNot;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getProfil() {
        return profil;
    }

    public void setProfil(String profil) {
        this.profil = profil;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getNomMiage() {
        return nomMiage;
    }

    public void setNomMiage(String nomMiage) {
        this.nomMiage = nomMiage;
    }

<<<<<<< HEAD
    public String getFonctionEnt() {
        return fonctionEnt;
    }

    public void setFonctionEnt(String fonctionEnt) {
        this.fonctionEnt = fonctionEnt;
=======
    public Integer getDiplome() {
        return diplome;
    }

    public void setDiplome(Integer diplome) {
        this.diplome = diplome;
    }

    public String getFunctionEnt() {
        return functionEnt;
    }

    public void setFunctionEnt(String functionEnt) {
        this.functionEnt = functionEnt;
>>>>>>> 104172e32507e1fd064fb23a6729ad77e49895d3
    }

    public String getNomEnt() {
        return nomEnt;
    }

    public void setNomEnt(String nomEnt) {
        this.nomEnt = nomEnt;
    }

    public String getTelEnt() {
        return telEnt;
    }

    public void setTelEnt(String telEnt) {
        this.telEnt = telEnt;
    }

    public String getAdresseEnt() {
        return adresseEnt;
    }

    public void setAdresseEnt(String adresseEnt) {
        this.adresseEnt = adresseEnt;
    }

    public String getSecteurEnt() {
        return secteurEnt;
    }

    public void setSecteurEnt(String secteurEnt) {
        this.secteurEnt = secteurEnt;
    }

    public Integer getNumPack() {
        return numPack;
    }

    public void setNumPack(Integer numPack) {
        this.numPack = numPack;
    }

<<<<<<< HEAD
    public Integer getDiplome() {
        return diplome;
    }

    public void setDiplome(Integer diplome) {
        this.diplome = diplome;
    }

=======
>>>>>>> 104172e32507e1fd064fb23a6729ad77e49895d3
    public Integer getPaidPack() {
        return paidPack;
    }

    public void setPaidPack(Integer paidPack) {
        this.paidPack = paidPack;
    }

    public Integer getRegisteredOrNot() {
        return registeredOrNot;
    }

    public void setRegisteredOrNot(Integer registeredOrNot) {
        this.registeredOrNot = registeredOrNot;
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
        if (!(object instanceof Utilisateur)) {
            return false;
        }
        Utilisateur other = (Utilisateur) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modeles.Utilisateur[ id=" + id + " ]";
    }
<<<<<<< HEAD
    /*
     * To change this license header, choose License Headers in Project Properties.
     * To change this template file, choose Tools | Templates
     * and open the template in the editor.
     */

}
=======

}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
>>>>>>> 104172e32507e1fd064fb23a6729ad77e49895d3
