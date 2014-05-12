package br.com.mvpdev.base.persistence;

import java.io.Serializable;

public interface IGenericDao<T extends Serializable> extends IOperations<T> {

}
