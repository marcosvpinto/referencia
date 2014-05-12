package br.com.mvpdev.base.persistence.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.mvpdev.base.models.Usuario;
import br.com.mvpdev.base.persistence.IUsuarioDao;

@Repository
public class UsuarioDao extends AbstractHibernateDao<Usuario> implements
	IUsuarioDao {

    public UsuarioDao() {
	super();
	setClazz(Usuario.class);
    }

    @Override
    public Usuario findOne(long id) {
	// TODO Auto-generated method stub
	return null;
    }

    @Override
    public List<Usuario> findAll() {
	// TODO Auto-generated method stub
	return null;
    }

    @Override
    public void create(Usuario entity) {
	// TODO Auto-generated method stub

    }

    @Override
    public Usuario update(Usuario entity) {
	// TODO Auto-generated method stub
	return null;
    }

    @Override
    public void delete(Usuario entity) {
	// TODO Auto-generated method stub

    }

    @Override
    public void deleteById(long entityId) {
	// TODO Auto-generated method stub

    }

}
