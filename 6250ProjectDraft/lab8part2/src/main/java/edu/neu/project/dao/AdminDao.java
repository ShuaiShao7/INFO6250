package edu.neu.project.dao;

import edu.neu.project.pojo.Admin;
import edu.neu.project.pojo.Supervisor;
import org.hibernate.HibernateException;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class AdminDao extends BaseDao{
    public List<Admin> getAdmins() {
        List<Admin> admins = new ArrayList<>();
        try {
            beginTransaction();
            Query q = getSession().createQuery("from Administrator", Admin.class);
            admins = q.list();
        } catch (HibernateException e) {
            rollbackTransaction();
        } finally {
            close();
        }
        return admins;
    }

    public Admin AdCheck(int id, String up){
        String hql="from Administrator where id=:id and password=:up";
        Query query=getSession().createQuery(hql);
        query.setInteger("id",id);
        query.setString("up",up);
        return (Admin) query.uniqueResult();
    }


}
