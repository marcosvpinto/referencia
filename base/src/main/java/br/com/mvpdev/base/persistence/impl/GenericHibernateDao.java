package br.com.mvpdev.base.persistence.impl;

import java.io.Serializable;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import br.com.mvpdev.base.persistence.IGenericDao;

@Repository
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class GenericHibernateDao<T extends Serializable> extends
	AbstractHibernateDao<T> implements IGenericDao<T> {

}
