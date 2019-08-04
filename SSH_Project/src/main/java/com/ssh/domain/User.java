package com.ssh.domain;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User extends UuidEntity{

	private String name;
	private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
