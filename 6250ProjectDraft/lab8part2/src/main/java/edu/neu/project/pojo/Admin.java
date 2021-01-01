package edu.neu.project.pojo;


import javax.annotation.processing.SupportedOptions;
import javax.persistence.*;
import java.util.Set;

@Entity(name="Administrator")
@Table(name="administrator")
public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="Admin_ID")
    private int id;

    @Column(name = "Password")
    private String password;




    @OneToMany(cascade =CascadeType.ALL)
    @JoinColumn(name="Admin_ID")
    private Set<Supervisor> supervisors;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Set<Supervisor> getSupervisors() {
        return supervisors;
    }

    public void setSupervisors(Set<Supervisor> supervisors) {
        this.supervisors = supervisors;
    }



}
