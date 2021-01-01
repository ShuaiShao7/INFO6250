package edu.neu.project.dao;

import edu.neu.project.pojo.Admin;
import edu.neu.project.pojo.Equipment;
import edu.neu.project.pojo.Member;
import edu.neu.project.pojo.Supervisor;
import org.hibernate.HibernateException;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class EquipmentDao extends BaseDao{

        public List<Equipment> getEquipments() {
            List<Equipment> equipments = new ArrayList<>();
            try {
                beginTransaction();
                Query q = getSession().createQuery("from Equipment ", Equipment.class);
                equipments = q.list();
            } catch (HibernateException e) {
                rollbackTransaction();
            } finally {
                close();
            }
            return equipments;
        }

//        public Supervisor Adcheck(int id, String up){
//            String hql="from Supervisor where id=:id and password=:up";
//            Query query=getSession().createQuery(hql);
//            query.setInteger("id",id);
//            query.setString("up",up);
//            return (Supervisor) query.uniqueResult();
//        }
//
//        public Admin AdCheck(int id, String up){
//            String hql="from Administrator where id=:id and password=:up";
//            Query query=getSession().createQuery(hql);
//            query.setInteger("id",id);
//            query.setString("up",up);
//            return (Admin) query.uniqueResult();
//        }


//        public List<Member> Adlogin(int id) {
//            String hql="From Member where supervisor.id=:id";
//            Query query=getSession().createQuery(hql);
//            query.setInteger("id",id);
//            return query.list();
//
//        }



        public Equipment getEquipment(Integer EquipmentId) {
            Equipment equipment = null;
            try {
                beginTransaction();
                equipment = getSession().find(Equipment.class, EquipmentId);
                commit();
            } catch (HibernateException e) {
                getSession().getTransaction().rollback();
            } finally {
                getSession().close();
            }
            return equipment;
        }

        public int addEquipment(Equipment equipment) {
            //Write code here
            int result=0;
            try{
                beginTransaction();
                getSession().save(equipment);
                commit();
                result=1;
            }catch (HibernateException e){
                getSession().getTransaction().rollback();
            }finally {
                getSession().close();
            }
            return result;
        }

        public int deleteEquipment(Integer EquipmentId) {
            //Write code here
            int result=0;
            try{
                beginTransaction();
                Equipment equipment =getSession().find(Equipment.class,EquipmentId);
                getSession().delete(equipment);
                commit();
                result=1;
            }catch (HibernateException e){
                getSession().getTransaction().rollback();
            }finally {
                getSession().close();
            }
            return result;
        }

        public int updateEquipment(Integer equipId, String Name, String price, String warranty) {
            //Write code here
            int result=0;
            try{
                beginTransaction();
                Equipment equipment =getSession().find(Equipment.class,equipId);
                equipment.seteName(Name);
                equipment.setPrice(price);
                equipment.setWarranty(warranty);
                getSession().update(equipment);
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


