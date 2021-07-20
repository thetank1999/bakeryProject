/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package post;

import java.sql.Date;

/**
 *
 * @author theta
 */
public class postDTO {
    private int id;
    private String posterEmail;
    private String title;
    private String thumbnail;
    private Date uploadDate;
    private boolean status;
    private String detail;
    private String category;
    private boolean onSlider;
    private Date updateDate;

    public postDTO(int id, String posterEmail, String title, String thumbnail, Date uploadDate, boolean status, String detail, String category, boolean onSlider, Date updateDate) {
        this.id = id;
        this.posterEmail = posterEmail;
        this.title = title;
        this.thumbnail = thumbnail;
        this.uploadDate = uploadDate;
        this.status = status;
        this.detail = detail;
        this.category = category;
        this.onSlider = onSlider;
        this.updateDate = updateDate;
    }

    @Override
    public String toString() {
        return "postDTO{" + "id=" + id + ", posterEmail=" + posterEmail + ", title=" + title + ", thumbnail=" + thumbnail + ", uploadDate=" + uploadDate + ", status=" + status + ", detail=" + detail + ", category=" + category + ", onSlider=" + onSlider + ", updateDate=" + updateDate + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPosterEmail() {
        return posterEmail;
    }

    public void setPosterEmail(String posterEmail) {
        this.posterEmail = posterEmail;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public Date getUploadDate() {
        return uploadDate;
    }

    public void setUploadDate(Date uploadDate) {
        this.uploadDate = uploadDate;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public boolean isOnSlider() {
        return onSlider;
    }

    public void setOnSlider(boolean onSlider) {
        this.onSlider = onSlider;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
    
    
}
