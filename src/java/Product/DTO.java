package Product;

import java.text.DecimalFormat;
import java.util.Date;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author Thắng
 */
public class DTO {

    DecimalFormat formatVND = new DecimalFormat("###,###,###");
    private int product_id;
    private String title;
    private int quantity;
    private int price;
    private int discount_price;
    private float weight;
    private String thumbnail;
    private String description;
    private Date create_at;
    private Date update_at;
    private boolean status;
    private int category_id;
    private int bird_id;

    public DTO() {
    }

    public DTO(String title) {
        this.title = title;
    }

    public DTO(int product_id, String title, int quantity, int price, int discount_price, float weight, String thumbnail, String description, Date create_at, Date update_at, boolean status, int category_id, int bird_id) {
        this.product_id = product_id;
        this.title = title;
        this.quantity = quantity;
        this.price = price;
        this.discount_price = discount_price;
        this.weight = weight;
        this.thumbnail = thumbnail;
        this.description = description;
        this.create_at = create_at;
        this.update_at = update_at;
        this.status = status;
        this.category_id = category_id;
        this.bird_id = bird_id;
    }



    public DecimalFormat getFormatVND() {
        return formatVND;
    }

    public void setFormatVND(DecimalFormat formatVND) {
        this.formatVND = formatVND;
    }

    public int getBird_id() {
        return bird_id;
    }

    public void setBird_id(int bird_id) {
        this.bird_id = bird_id;
    }
    
    

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public String getFormattedPrice() {
        return formatVND.format(price);
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getDiscount_price() {
        return discount_price;
    }

    public String getFormattedDiscountPrice() {
        return formatVND.format(discount_price);
    }

    public void setDiscount_price(int discount_price) {
        this.discount_price = discount_price;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getCreate_at() {
        return create_at;
    }

    public void setCreate_at(Date create_at) {
        this.create_at = create_at;
    }

    public Date getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(Date update_at) {
        this.update_at = update_at;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    @Override
    public String toString() {
        return "DTO{" + "product_id=" + product_id + ", title=" + title + ", quantity=" + quantity + ", price=" + getFormattedPrice() + ", discount_price=" + getFormattedDiscountPrice() + ", weight=" + weight + ", thumbnail=" + thumbnail + ", description=" + description + ", create_at=" + create_at + ", update_at=" + update_at + ", status=" + status + ", category_id=" + category_id + '}';
    }

}
