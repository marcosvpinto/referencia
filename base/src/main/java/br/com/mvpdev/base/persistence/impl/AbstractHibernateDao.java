package br.com.mvpdev.base.persistence.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.mvpdev.base.persistence.IOperations;

import com.google.common.base.Preconditions;

public abstract class AbstractHibernateDao<T extends Serializable> implements
	IOperations<T> {

    private Class<T> clazz;

    @Autowired
    private SessionFactory sessionFactory;

    protected final void setClazz(final Class<T> clazzToSet) {
	clazz = Preconditions.checkNotNull(clazzToSet);
    }

    protected final Session getCurrentSession() {
	return sessionFactory.getCurrentSession();
    }

    @SuppressWarnings("unchecked")
    @Override
    public T findOne(long id) {
	return (T) getCurrentSession().get(clazz, id);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<T> findAll() {
	return getCurrentSession().createQuery("from" + clazz.getName()).list();
    }

    @Override
    public void create(T entity) {
	Preconditions.checkNotNull(entity);
	getCurrentSession().saveOrUpdate(entity);
    }

    @SuppressWarnings("unchecked")
    @Override
    public T update(T entity) {
	Preconditions.checkNotNull(entity);
	return (T) getCurrentSession().merge(entity);
    }

    @Override
    public void delete(T entity) {
	Preconditions.checkNotNull(entity);
	getCurrentSession().delete(entity);
    }

    @Override
    public void deleteById(long entityId) {
	final T entity = findOne(entityId);
	Preconditions.checkState(entity != null);
	delete(entity);
    }

}
