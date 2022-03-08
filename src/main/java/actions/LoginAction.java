/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

import javaBeans.Member;
import modele.MemberDAO;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author cdavezac
 */
public class LoginAction extends ActionSupport {

    private static final long serialVersionUID = 1L;

    private String email;
    private String password;



    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String execute()
    {

        HttpServletRequest req = ServletActionContext.getRequest();
        setEmail(req.getParameter("email"));
        System.out.println(req.getParameter("email"));
        setPassword(req.getParameter("password"));
        MemberDAO memberDAO = new MemberDAO();
        Member member = memberDAO.findByEmail(email);
        if (member != null) {
            Map<String, Object> session;
            //open the current session
            session = ActionContext.getContext().getSession();
            //register email and password as session var
            session.put("email", email);
            session.put("password", password);

            addActionMessage("You are a valid user!");
            return SUCCESS;
        }
        else{
            addActionError("UNKNOW USER!");
            addFieldError("email", "Enter your Email again");
            addFieldError("password", "Enter your Password again");
            System.out.println("error");
            Logger.getLogger(LoginAction.class.getName()).log(Level.SEVERE, null, "Invalid user error");
            return ERROR;
        }
    }
}
