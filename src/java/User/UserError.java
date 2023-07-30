/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package User;

/**
 *
 * @author Giang Hoang
 */
public class UserError {
    private String  usernameLengthErr;
    private String userNameError;
    private String fullNameError;
    private String emailError;
    private String phoneError;
    private String addressError;
    private String passwordError;
    private String confirmPsError;
    private String userNameExisted;

    public UserError() {
    }

    public UserError(String usernameLengthErr, String userNameError, String fullNameError, String emailError, String phoneError, String addressError, String passwordError, String confirmPsError, String userNameExisted) {
        this.usernameLengthErr = usernameLengthErr;
        this.userNameError = userNameError;
        this.fullNameError = fullNameError;
        this.emailError = emailError;
        this.phoneError = phoneError;
        this.addressError = addressError;
        this.passwordError = passwordError;
        this.confirmPsError = confirmPsError;
        this.userNameExisted = userNameExisted;
    }

   
    public String getUserNameExisted() {
        return userNameExisted;
    }

    public void setUserNameExisted(String userNameExisted) {
        this.userNameExisted = userNameExisted;
    }

    

    public String getUserNameError() {
        return userNameError;
    }

    public void setUserNameError(String userNameError) {
        this.userNameError = userNameError;
    }

    public String getConfirmPsError() {
        return confirmPsError;
    }

    public void setConfirmPsError(String confirmPsError) {
        this.confirmPsError = confirmPsError;
    }

    

    public String getFullNameError() {
        return fullNameError;
    }

    public void setFullNameError(String fullNameError) {
        this.fullNameError = fullNameError;
    }

    public String getEmailError() {
        return emailError;
    }

    public void setEmailError(String emailError) {
        this.emailError = emailError;
    }

    public String getPhoneError() {
        return phoneError;
    }

    public void setPhoneError(String phoneError) {
        this.phoneError = phoneError;
    }

    public String getAddressError() {
        return addressError;
    }

    public void setAddressError(String addressError) {
        this.addressError = addressError;
    }

    public String getPasswordError() {
        return passwordError;
    }

    public void setPasswordError(String passwordError) {
        this.passwordError = passwordError;
    }

    /**
     * @return the usernameLengthErr
     */
    public String getUsernameLengthErr() {
        return usernameLengthErr;
    }

    /**
     * @param usernameLengthErr the usernameLengthErr to set
     */
    public void setUsernameLengthErr(String usernameLengthErr) {
        this.usernameLengthErr = usernameLengthErr;
    }

    
}
