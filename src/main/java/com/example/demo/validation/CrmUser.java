package com.example.demo.validation;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class CrmUser {

    private final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

    @NotNull(message = "is required")
    @Size(min = 2, message = "Min. length is 2")
    private String userName;

    @NotNull(message = "is required")
    @Size(min = 4, message = "Min. length is 4")
    private String password;

    @NotNull(message = "is required")
    @Size(min = 4, message = "Min. length is 2")
    private String matchingPassword;

    @NotNull(message = "is required")
    @Size(min = 2, message = "Min. length is 2")
    private String firstName;

    @NotNull(message = "is required")
    @Size(min = 2, message = "Min. length is 2")
    private String lastName;

    @NotNull(message = "is required")
    @Size(min = 4, message = "Min. length is 4")
    @Pattern(regexp = EMAIL_PATTERN, message = "Inserted value is not an email")
    private String email;

    public CrmUser() {

    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMatchingPassword() {
        return matchingPassword;
    }

    public void setMatchingPassword(String matchingPassword) {
        this.matchingPassword = matchingPassword;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
