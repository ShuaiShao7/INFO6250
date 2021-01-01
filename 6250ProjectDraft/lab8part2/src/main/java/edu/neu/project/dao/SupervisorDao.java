package edu.neu.project.dao;

import edu.neu.project.pojo.Admin;
import edu.neu.project.pojo.Supervisor;
import edu.neu.project.pojo.Member;
import org.hibernate.HibernateException;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class SupervisorDao extends BaseDao{
    public List<Supervisor> getSupervisors() {
        List<Supervisor> supervisors = new ArrayList<>();
        try {
            beginTransaction();
            Query q = getSession().createQuery("from Supervisor", Supervisor.class);
            supervisors = q.list();
        } catch (HibernateException e) {
            rollbackTransaction();
        } finally {
            close();
        }
        return supervisors;
    }

    public Supervisor Adcheck(int id, String up){
        String hql="from Supervisor where id=:id and password=:up";
        Query query=getSession().createQuery(hql);
        query.setInteger("id",id);
        query.setString("up",up);
        return (Supervisor) query.uniqueResult();
    }

//    public Admin AdCheck(int id, String up){
//        String hql="from Administrator where id=:id and password=:up";
//        Query query=getSession().createQuery(hql);
//        query.setInteger("id",id);
//        query.setString("up",up);
//        return (Admin) query.uniqueResult();
//    }

    public int deleteRev(Integer memId) {
        //Write code here
        int result=0;
        try{
            beginTransaction();
            Member member =getSession().find(Member.class,memId);
           member.setReview(null);
           member.setRate(null);
            getSession().update(member);
            commit();
            result=1;
        }catch (HibernateException e){
            getSession().getTransaction().rollback();
        }finally {
            getSession().close();
        }
        return result;
    }


    public int deleteReserve(Integer memId) {
        //Write code here
        int result=0;
        try{
            beginTransaction();
            Member member =getSession().find(Member.class,memId);
            member.setDate(null);
            member.setTime(null);
            member.setSection(null);
            getSession().update(member);
            commit();
            result=1;
        }catch (HibernateException e){
            getSession().getTransaction().rollback();
        }finally {
            getSession().close();
        }
        return result;
    }


    public List<Member> MemList(){
       String hql="From Member";
       Query query=getSession().createQuery(hql);

       return query.list();

    }



    public Supervisor getSuper(Integer supId) {
        Supervisor supervisor = null;
        try {
            beginTransaction();
            supervisor = getSession().find(Supervisor.class, supId);
            commit();
        } catch (HibernateException e) {
            getSession().getTransaction().rollback();
        } finally {
            getSession().close();
        }
        return supervisor;
    }

    public int addSuper(Supervisor supervisor) {
        //Write code here
        int result=0;
        try{
            beginTransaction();
            getSession().save(supervisor);
            commit();
            result=1;
        }catch (HibernateException e){
            getSession().getTransaction().rollback();
        }finally {
            getSession().close();
        }
        return result;
    }

    public int deleteSuper(Integer supId) {
        //Write code here
        int result=0;
        try{
            beginTransaction();
            Supervisor supervisor =getSession().find(Supervisor.class,supId);
            getSession().delete(supervisor);
            commit();
            result=1;
        }catch (HibernateException e){
            getSession().getTransaction().rollback();
        }finally {
            getSession().close();
        }
        return result;
    }

    public int updateSuper(Integer supId, String fName, String lName, String street,String city,String state,String zip,String password) {
        //Write code here
        int result=0;
        try{
            beginTransaction();
            Supervisor supervisor =getSession().find(Supervisor.class,supId);
            supervisor.setfName(fName);
            supervisor.setlName(lName);
            supervisor.setStreet(street);
            supervisor.setCity(city);
            supervisor.setState(state);
            supervisor.setZip(zip);
            supervisor.setPassword(password);
            getSession().update(supervisor);
            commit();
            result=1;
        }catch (HibernateException e){
            getSession().getTransaction().rollback();
        }finally {
            getSession().close();
        }
        return result;
    }
}
