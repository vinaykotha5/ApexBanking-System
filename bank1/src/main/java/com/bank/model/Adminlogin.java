package com.bank.model;

import java.io.Serializable;

public class Adminlogin implements Serializable {
	
    private static final long serialVersionUID = 1;
    private String username;
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}