package edu.neu.project.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity(name="Member")
@Table(name="member")
public class Member {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name = "Member_ID")
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
    @Column(name="Reserve_Date")
    @Temporal(TemporalType.DATE)
    private Date date;

    @Column(name = "Review")
    private String review;
    @Column(name = "Rate")
    private String rate;

    @Column(name="Section")
    private String section;

    @Column(name="Time")
    private String time;

    @Column(name="User_Name")
    private String uName;

//    @Column(name = "Supervisor_ID")
//        private int Sid;
        @ManyToOne(cascade =CascadeType.ALL)
        @JoinColumn(name = "Supervisor_ID")
        private Supervisor supervisor;

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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    //    public Member( String fName, String lName, String street, String city, String state, String zip, String password) {
////        this.id = id;
//        this.fName = fName;
//        this.lName = lName;
//        this.street = street;
//        this.city = city;
//        this.state = state;
//        this.zip = zip;
//        this.password = password;
//
//    }
}
