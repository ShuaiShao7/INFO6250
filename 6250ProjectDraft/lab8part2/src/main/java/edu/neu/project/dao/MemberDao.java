package edu.neu.project.dao;

import edu.neu.project.pojo.Member;
import org.hibernate.HibernateException;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MemberDao extends BaseDao{
    public List<Member> getMembers() {
        List<Member> members = new ArrayList<>();
        try {
            beginTransaction();
            Query q = getSession().createQuery("from Member ", Member.class);
            members = q.list();
        } catch (HibernateException e) {
            rollbackTransaction();
        } finally {
            close();
        }
        return members;
    }


    public Member Memcheck(String uName, String up){
        String hql="from Member where uName=:uName and password=:up";
        Query query=getSession().createQuery(hql);
        query.setString("uName",uName);
        query.setString("up",up);
        return (Member) query.uniqueResult();
    }

    public long checkRev(String section, Date date,String time) {
        String hql = "select count(time) as times from Member group by date,section,time having section=:section and date=:date and time=:time";
        Query query = getSession().createQuery(hql);
        query.setString("section",section);
        query.setDate("date",date);
        query.setString("time",time);
        if(query.uniqueResult()==null){
            return 0;
        }
        else {
            return (long) query.uniqueResult();
        }
    }

    public List<Member> Memlogin(String uName) {
        String hql="From Member where uName=:uName";
        Query query=getSession().createQuery(hql);
        query.setString("uName",uName);
        return query.list();

    }

    public List<Member> Memlogin2(int id) {
        String hql="From Member where id=:id";
        Query query=getSession().createQuery(hql);
        query.setInteger("id",id);
        return query.list();

    }

    public List<Member> MemSearch(String id) {
        String hql="From Member where fName =:id or lName =:id";
        Query query=getSession().createQuery(hql);
//        query.setString("id","%"+id+"%");
        query.setString("id",id);
        return query.list();
    }


    public double MemRate() {
        String hql = "select avg(rate) from Member where rate>'0' ";
        Query query = getSession().createQuery(hql);
        if (query.uniqueResult() == null) {
            return 0;
        } else {
            return (double)query.uniqueResult();
        }
    }

    public List<Member> MemReview(){
        String hql="from Member where rate>'0' ";
        Query query=getSession().createQuery(hql);

        return query.list();
    }



    public Member getMember(Integer memberId) {
        Member member= null;
        try {
            beginTransaction();
            member = getSession().find(Member.class, memberId);
            commit();
        } catch (HibernateException e) {
            getSession().getTransaction().rollback();
        } finally {
            getSession().close();
        }
        return member;
    }


    public int addMember(Member member) {
        //Write code here
        int result=0;
        try{
            beginTransaction();
            getSession().save(member);
            commit();
            result=1;
        }catch (HibernateException e){
            getSession().getTransaction().rollback();
        }finally {
            getSession().close();
        }
        return result;
    }

    public int deleteMember(Integer MemberId) {
        //Write code here
        int result=0;
        try{
            beginTransaction();
            Member member=getSession().find(Member.class,MemberId);
            getSession().delete(member);
            commit();
            result=1;
        }catch (HibernateException e){
            getSession().getTransaction().rollback();
        }finally {
            getSession().close();
        }
        return result;
    }

    public int updateMember(Integer MemberId, String fName, String lName, String street,String city,String state,String zip,String uName,String password) {
        //Write code here
        int result=0;
        try{
            beginTransaction();
            Member member=getSession().find(Member.class,MemberId);
            member.setfName(fName);
            member.setlName(lName);
            member.setStreet(street);
            member.setCity(city);
            member.setState(state);
            member.setZip(zip);
            member.setuName(uName);
            member.setPassword(password);
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



    public int updateMemberDate(Integer MemberId, String fName, String lName, String street,String city,String state,String zip,String password,Date date, String section, String time) {
        //Write code here
        int result=0;
        try{
            beginTransaction();
            Member member=getSession().find(Member.class,MemberId);
            member.setfName(fName);
            member.setlName(lName);
            member.setStreet(street);
            member.setCity(city);
            member.setState(state);
            member.setZip(zip);
            member.setPassword(password);
            member.setDate(date);
            member.setSection(section);
            member.setTime(time);
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


    public int updateMemberReview(Integer MemberId, String fName, String lName, String street,String city,String state,String zip,String password, String review,String rate) {
        //Write code here
        int result=0;
        try{
            beginTransaction();
            Member member=getSession().find(Member.class,MemberId);
            member.setfName(fName);
            member.setlName(lName);
            member.setStreet(street);
            member.setCity(city);
            member.setState(state);
            member.setZip(zip);
            member.setPassword(password);
            member.setReview(review);
            member.setRate(rate);
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

}
