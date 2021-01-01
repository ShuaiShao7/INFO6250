package edu.neu.project.pojo;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "Supplier")
@Table(name = "supplier")
public class Supplier {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Supplier_ID")
    private int id;
    @Column(name="Company_Name")
    private String company;
    @Column(name = "Contact_No")
    private String contact;
    @Column(name = "Password")
    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "Supplier_ID")
    private Set<Equipment> equipments;

    public Set<Equipment> getEquipments() {
        return equipments;
    }

    public void setEquipments(Set<Equipment> equipments) {
        this.equipments = equipments;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
}
