
package user;

import java.sql.Date;



public class userDTO {
    private String email;
    private String password;
    private String avatarLink;
    private String address;
    private String fullName;
    private String phoneNumber;
    private String gender;
    private Date creationDate;
    private int status;
    private String roldeID;

    public userDTO(String email, String password, String avatarLink, String address, String fullName, String phoneNumber, String gender, Date creationDate, int status, String roldeID) {
        this.email = email;
        this.password = password;
        this.avatarLink = avatarLink;
        this.address = address;
        this.fullName = fullName;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.creationDate = creationDate;
        this.status = status;
        this.roldeID = roldeID;
    }
    
    public userDTO(){
        
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatarLink() {
        return avatarLink;
    }

    public void setAvatarLink(String avatarLink) {
        this.avatarLink = avatarLink;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getRoldeID() {
        return roldeID;
    }

    public void setRoldeID(String roldeID) {
        this.roldeID = roldeID;
    }

    @Override
    public String toString() {
        return "userDTO{" + "email=" + email + ", password=" + password + ", avatarLink=" + avatarLink + ", address=" + address + ", fullName=" + fullName + ", phoneNumber=" + phoneNumber + ", gender=" + gender + ", creationDate=" + creationDate + ", status=" + status + ", roldeID=" + roldeID + '}';
    }
    
    
}
