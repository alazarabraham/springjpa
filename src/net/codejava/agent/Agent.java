package net.codejava.agent;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
 
@Entity
public class Agent {
    private String firstname;
    private String middlename;
    private String lastname;
    private String password;
    private String phone;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long agent_id;
 

    private String emailaddress;
 
    protected Agent() {
    }
 
    protected Agent(String firstname, String middlename, String lastname,String password, String phone, String emailaddress) {
        this.firstname = firstname;
        this.middlename = middlename;
        this.lastname = lastname;
        this.password = password;
        this.phone = phone;
        this.emailaddress = emailaddress;
    }

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getMiddlename() {
		return middlename;
	}

	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Long getAgent_id() {
		return agent_id;
	}

	public void setAgent_id(Long agent_id) {
		this.agent_id = agent_id;
	}

	public String getEmailaddress() {
		return emailaddress;
	}

	public void setEmailaddress(String emailaddress) {
		this.emailaddress = emailaddress;
	}
 

    
}
