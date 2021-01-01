package edu.neu.project.pojo;

import javax.persistence.*;
import java.util.Set;

@Entity(name="Supervisor")
@Table(name="supervisor")
public class Supervisor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="Supervisor_ID")
    private int id;
    @Column(name="First_Name")
    private String fName;
    @Column(name="Last_Name")
    private String lName;
    @Column(name = "Street")
    private String street;
    @Column(name = "City")
    private String city;
    @Column(name = "State")
    private String state;
    @Column(name = "Zip")
    private String zip;
    @Column(name = "Password")
    private String password;



@OneToMany(cascade =CascadeType.ALL)
@JoinColumn(name="Supervisor_ID")
    private Set<Member> members;


    public Set<Member> getMembers() {
        return members;
    }

    public void setMembers(Set<Member> members) {
        this.members = members;

    }

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "Supervisor_ID")
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

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


}
