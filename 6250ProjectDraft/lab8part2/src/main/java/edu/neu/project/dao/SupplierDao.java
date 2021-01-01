package edu.neu.project.dao;

import edu.neu.project.pojo.Admin;
import edu.neu.project.pojo.Member;
import edu.neu.project.pojo.Supervisor;
import edu.neu.project.pojo.Supplier;
import org.hibernate.HibernateException;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class SupplierDao extends BaseDao{

        public List<Supplier> getSuppliers() {
            List<Supplier> suppliers = new ArrayList<>();
            try {
                beginTransaction();
                Query q = getSession().createQuery("from Supplier", Supplier.class);
                suppliers = q.list();
            } catch (HibernateException e) {
                rollbackTransaction();
            } finally {
                close();
            }
            return suppliers;
        }

        public Supplier Supcheck(int id, String up){
            String hql="from Supplier where id=:id and password=:up";
            Query query=getSession().createQuery(hql);
            query.setInteger("id",id);
            query.setString("up",up);
            return (Supplier) query.uniqueResult();
        }

        public List<Supplier> Supplierlogin(int id) {
            String hql="From Supplier where id=:id";
            Query query=getSession().createQuery(hql);
            query.setInteger("id",id);
            return query.list();

        }



//        public List<Supplier> Adlogin(int id) {
//            String hql="From Member where supervisor.id=:id";
//            Query query=getSession().createQuery(hql);
//            query.setInteger("id",id);
//            return query.list();
//
//        }



        public Supplier getSupplier(Integer supplierId) {
            Supplier supplier = null;
            try {
                beginTransaction();
                supplier = getSession().find(Supplier.class, supplierId);
                commit();
            } catch (HibernateException e) {
                getSession().getTransaction().rollback();
            } finally {
                getSession().close();
            }
            return supplier;
        }

        public int addSupplier(Supplier supplier) {
            //Write code here
            int result=0;
            try{
                beginTransaction();
                getSession().save(supplier);
                commit();
                result=1;
            }catch (HibernateException e){
                getSession().getTransaction().rollback();
            }finally {
                getSession().close();
            }
            return result;
        }

        public int deleteSupplier(Integer supplierId) {
            //Write code here
            int result=0;
            try{
                beginTransaction();
                Supplier supplier =getSession().find(Supplier.class,supplierId);
                getSession().delete(supplier);
                commit();
                result=1;
            }catch (HibernateException e){
                getSession().getTransaction().rollback();
            }finally {
                getSession().close();
            }
            return result;
        }

        public int updateSupplier(Integer supplierId, String Company, String Contact,String password) {
            //Write code here
            int result=0;
            try{
                beginTransaction();
                Supplier supplier =getSession().find(Supplier.class,supplierId);
                supplier.setCompany(Company);
                supplier.setContact(Contact);
                supplier.setPassword(password);
                getSession().update(supplier);
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


