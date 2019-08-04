package com.ssh.domain;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import org.hibernate.annotations.GenericGenerator;

@MappedSuperclass
public class UuidEntity {
    private String id;
    
    @Id
    @GenericGenerator(name="entityId",strategy="uuid")
    @GeneratedValue(generator="entityId")
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
     
}
