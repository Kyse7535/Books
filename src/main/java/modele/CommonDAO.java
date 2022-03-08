package modele;



import javax.persistence.EntityManager;

import java.util.ArrayList;

public class CommonDAO<T> {

    protected EntityManager entityManager;

    public EntityManager getEntityManager() {
        return entityManager;
    }

    public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public CommonDAO() {
        this.entityManager = JpaUtil.getEmf().createEntityManager();
    }


    public T create(T object) {

        entityManager.persist(object);
        return object;
    };

    public boolean update(T object) {
        entityManager.merge(object);
        return false;
    }


    public boolean delete(Class entityClass, int id) {
        T object1 = (T) entityManager.find(entityClass, id);
        entityManager.remove(object1);
        return true;
    }

    public T findById(Class entityClass, int id) {
        T object = (T) entityManager.find(entityClass, id);
        return object;
    }



    public ArrayList findAll(String tableName) {
        ArrayList<T> objects = (ArrayList) entityManager.createQuery("from "+ tableName)
                .getResultList();

        return objects;
    }

    public void beginTransaction() {
        entityManager.getTransaction().begin();
    }
    public void commit() {
        entityManager.getTransaction().commit();
    }

    public void closeTransaction() {
        entityManager.close();
    }
}
