/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package product;

/**
 *
 * @author theta
 */
public class productDTO {
    private int id;
    private String name;
    private String categoryID;
    private String thumbNailLink;
    private int originalSalePrice;
    private String details;
    private int salePrice;
    private boolean status;
    private int stock;
    private boolean saleStatus;

    public productDTO(int id, String name, String categoryID, String thumbNailLink, int originalSalePrice, String details, int salePrice, boolean status, int stock, boolean saleStatus) {
        this.id = id;
        this.name = name;
        this.categoryID = categoryID;
        this.thumbNailLink = thumbNailLink;
        this.originalSalePrice = originalSalePrice;
        this.details = details;
        this.salePrice = salePrice;
        this.status = status;
        this.stock = stock;
        this.saleStatus = saleStatus;
    }
    
    public productDTO(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getThumbNailLink() {
        return thumbNailLink;
    }

    public void setThumbNailLink(String thumbNailLink) {
        this.thumbNailLink = thumbNailLink;
    }

    public int getOriginalSalePrice() {
        return originalSalePrice;
    }

    public void setOriginalSalePrice(int originalSalePrice) {
        this.originalSalePrice = originalSalePrice;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public boolean isSaleStatus() {
        return saleStatus;
    }

    public void setSaleStatus(boolean saleStatus) {
        this.saleStatus = saleStatus;
    }

    @Override
    public String toString() {
        return "productDTO{" + "id=" + id + ", name=" + name + ", categoryID=" + categoryID + ", thumbNailLink=" + thumbNailLink + ", originalSalePrice=" + originalSalePrice + ", details=" + details + ", salePrice=" + salePrice + ", status=" + status + ", stock=" + stock + ", saleStatus=" + saleStatus + '}';
    }
    
    
}
