package edu.neu.project.pojo;

import javax.persistence.*;

@Entity(name = "Equipment")
@Table(name = "equipment")
public class Equipment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Equipment_ID")
    private int id;
    @Column(name = "Equipment_Name")
    private String eName;
    @Column(name = "Price")
    private String price;
    @Column(name = "Warranty_Period")
    private String warranty;

    @ManyToOne(cascade =CascadeType.ALL)
    @JoinColumn(name = "Supervisor_ID")
    private Supervisor supervisor;

    @ManyToOne(cascade =CascadeType.ALL)
    @JoinColumn(name = "Supplier_ID")
    private Supplier suppliers;

    public Supplier getSuppliers() {
        return suppliers;
    }

    public void setSuppliers(Supplier suppliers) {
        this.suppliers = suppliers;
    }

    public Supervisor getSupervisor() {
        return supervisor;
    }

    public void setSupervisor(Supervisor supervisor) {
        this.supervisor = supervisor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String geteName() {
        return eName;
    }

    public void seteName(String eName) {
        this.eName = eName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getWarranty() {
        return warranty;
    }

    public void setWarranty(String warranty) {
        this.warranty = warranty;
    }
}
