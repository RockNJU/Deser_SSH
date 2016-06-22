package com.home.desert.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.home.desert.dao.BaseDao;


@Repository
public class BaseDaoImpl implements BaseDao {
	/** * Autowired �Զ�װ�� �൱��get() set() */
	@Autowired
	protected SessionFactory sessionFactory;

	/** * gerCurrentSession ���Զ��ر�session��ʹ�õ��ǵ�ǰ��session���� * * @return */
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	/** * openSession ��Ҫ�ֶ��ر�session ��˼�Ǵ�һ���µ�session * * @return */
	public Session getNewSession() {
		return sessionFactory.openSession();
	}

	public void flush() {
		getSession().flush();
	}

	public void clear() {
		getSession().clear();
	}

	/** * ���� id ��ѯ��Ϣ * * @param id * @return */
	@SuppressWarnings("rawtypes")
	public Object load(Class c, String id) {
		Session session = getSession();
		return session.get(c, id);
	}

	/** * ��ȡ������Ϣ * * @param c * * @return */

	public List getAllList(Class c) {
		String hql = "from " + c.getName();
		Session session = getSession();
		return session.createQuery(hql).list();

	}

	/** * ��ȡ������ * * @param c * @return */

	public Long getTotalCount(Class c) {
		Session session = getNewSession();
		String hql = "select count(*) from " + c.getName();
		Long count = (Long) session.createQuery(hql).uniqueResult();
		session.close();
		return count != null ? count.longValue() : 0;
	}

	/** * ���� * * @param bean * */
	public void save(Object bean) {
		try {
			Session session = getNewSession();
			session.save(bean);
			session.flush();
			session.clear();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/** * ���� * * @param bean * */
	public void update(Object bean) {
		Session session = getNewSession();
		session.update(bean);
		session.flush();
		session.clear();
		session.close();
	}

	/** * ɾ�� * * @param bean * */
	public void delete(Object bean) {

		Session session = getNewSession();
		session.delete(bean);
		session.flush();
		session.clear();
		session.close();
	}

	/** * ����IDɾ�� * * @param c �� * * @param id ID * */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void delete(Class c, String id) {
		Session session = getNewSession();
		Object obj = session.get(c, id);
		session.delete(obj);
		flush();
		clear();
		session.close();
	}

	/** * ����ɾ�� * * @param c �� * * @param ids ID ���� * */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void delete(Class c, String[] ids) {
		for (String id : ids) {
			Object obj = getSession().get(c, id);
			if (obj != null) {
				getSession().delete(obj);
			}
		}
	}
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void delete(Class c, int[] ids) {
		for (int id : ids) {
			Object obj = getSession().get(c, id);
			if (obj != null) {
				getSession().delete(obj);
			}
		}
	}

	@Override
	public int getLargestNumId(String className) {
		Session session=getNewSession();
		int  num=0;
		try{
			String sql="select max(o.id) from "+className+" o " ;
			num = (int)session.createQuery(sql).uniqueResult();
			session.clear();
			session.close();
		}catch(Exception x){
			num=1;
		}
		return num;	
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public void delete(Class c, int id) {
		Object obj = getSession().get(c, id);
		if (obj != null) {
			getSession().delete(obj);
		}
	}

	@Override
	public void save(List<Object> list) {
		// 批量插入
		Session session = getNewSession();
		Transaction tx = session.beginTransaction();     
        for ( int i=0; i<list.size(); i++ ) { //批量插入
                session.save(list.get(i));   
                if(i%100==0){   //每一百条刷新并写入数据库  
                    session.flush();  
                    session.clear();  
                }  
        }     
        tx.commit();   
        session.close();  
	}

	@Override
	public List findByHql(String hql) {
		Session session = getSession();
		return session.createQuery(hql).list();
	}

	@Override
	public Object findObjectByHql(String hql) {
		Session session = getSession();
		return session.createQuery(hql).uniqueResult();
	}
}
