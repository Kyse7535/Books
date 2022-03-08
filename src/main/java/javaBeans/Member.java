package javaBeans;

import javax.persistence.*;

@Entity
@Table(name = "member")
public class Member {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "member_id", nullable = false)
    private Integer id;

    @Column(name = "member_lastname", length = 60)
    private String memberLastname;

    @Column(name = "member_firstname", length = 60)
    private String memberFirstname;

    @Column(name = "member_email", length = 100)
    private String memberEmail;

    @Column(name = "member_address", length = 100)
    private String memberAddress;

    @Column(name = "member_password", length = 20)
    private String memberPassword;

    public String getMemberPassword() {
        return memberPassword;
    }

    public void setMemberPassword(String memberPassword) {
        this.memberPassword = memberPassword;
    }

    public String getMemberAddress() {
        return memberAddress;
    }

    public void setMemberAddress(String memberAddress) {
        this.memberAddress = memberAddress;
    }

    public String getMemberEmail() {
        return memberEmail;
    }

    public void setMemberEmail(String memberEmail) {
        this.memberEmail = memberEmail;
    }

    public String getMemberFirstname() {
        return memberFirstname;
    }

    public void setMemberFirstname(String memberFirstname) {
        this.memberFirstname = memberFirstname;
    }

    public String getMemberLastname() {
        return memberLastname;
    }

    public void setMemberLastname(String memberLastname) {
        this.memberLastname = memberLastname;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Member{" +
                "id=" + id +
                ", memberLastname='" + memberLastname + '\'' +
                ", memberFirstname='" + memberFirstname + '\'' +
                ", memberEmail='" + memberEmail + '\'' +
                ", memberAddress='" + memberAddress + '\'' +
                ", memberPassword='" + memberPassword + '\'' +
                '}';
    }


}