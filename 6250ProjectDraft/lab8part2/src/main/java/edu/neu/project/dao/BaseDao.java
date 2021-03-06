/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.neu.project.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Surya
 */
public class BaseDao {
    private static final SessionFactory sf = new Configuration().configure("hibernate.xml").buildSessionFactory();
    private Session session = null;

    public Session getSession() {
        if (session == null || !session.isOpen()) {
            session = sf.openSession();
        }
        return session;
    }

    public void beginTransaction() {
        getSession().beginTransaction();
    }

    public void commit() {
        getSession().getTransaction().commit();
    }

    public void close() {
        getSession().close();
    }

    public void rollbackTransaction() {
        getSession().getTransaction().rollback();
    }
}
