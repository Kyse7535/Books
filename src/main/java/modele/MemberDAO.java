package modele;

import javaBeans.Member;

import java.util.ArrayList;

public class MemberDAO extends CommonDAO<Member>{

    public MemberDAO() {
        super();
    }


    public Member findByEmail(String email) {
        entityManager.getTransaction().begin();
        ArrayList<Member> members = (ArrayList<Member>) entityManager.createQuery(SQLConstant.FIND_BY_EMAIL, Member.class)
                .setParameter("email", email).getResultList();
        if (members.size() == 0)
            return null;

        return members.get(0);
    }

}
