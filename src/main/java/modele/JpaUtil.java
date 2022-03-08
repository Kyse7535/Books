package modele;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaUtil {

    private static EntityManagerFactory emf = null;

    public static EntityManagerFactory getEmf() {
        if (emf == null) {
            emf = Persistence.createEntityManagerFactory("catalog");
            return emf;
        }
        return emf;
    }


    public static void close() {
        if (emf != null) {
            JpaUtil.emf.close();
            emf = null;
        }

    }
}
