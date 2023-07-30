/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package meal;

import java.text.DecimalFormat;
import java.util.Date;

/**
 *
 * @author Asus
 */
public class MealPackageDTO {
    
    DecimalFormat formatVND = new DecimalFormat("###,###,###");
    private int meal_package_id;
    private String title;
    private int quantity;
    private int price;
    private int discount_price;
    private String thumbnail;
    private String description;
    private String recipe;
    private Date create_at;
    private Date update_at;
    private boolean status;
    private int bird_id;
    private int lifecycle_id;
    private String img;

    public MealPackageDTO() {
    }

    public MealPackageDTO(int meal_package_id, String title, int quantity, int price, int discount_price, String thumbnail, String description, String recipe, Date create_at, Date update_at, boolean status, int bird_id, int lifecycle_id, String img) {
        this.meal_package_id = meal_package_id;
        this.title = title;
        this.quantity = quantity;
        this.price = price;
        this.discount_price = discount_price;
        this.thumbnail = thumbnail;
        this.description = description;
        this.recipe = recipe;
        this.create_at = create_at;
        this.update_at = update_at;
        this.status = status;
        this.bird_id = bird_id;
        this.lifecycle_id = lifecycle_id;
        this.img = img;
    }

    

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    

    public DecimalFormat getFormatVND() {
        return formatVND;
    }

    public void setFormatVND(DecimalFormat formatVND) {
        this.formatVND = formatVND;
    }

    public String getRecipe() {
        return recipe;
    }

    public void setRecipe(String recipe) {
        this.recipe = recipe;
    }


    public int getMeal_package_id() {
        return meal_package_id;
    }

    public void setMeal_package_id(int meal_package_id) {
        this.meal_package_id = meal_package_id;
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

    public void setPrice(int price) {
        this.price = price;
    }

    public int getDiscount_price() {
        return discount_price;
    }

    public void setDiscount_price(int discount_price) {
        this.discount_price = discount_price;
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

    public int getBird_id() {
        return bird_id;
    }

    public void setBird_id(int bird_id) {
        this.bird_id = bird_id;
    }

    public int getLifecycle_id() {
        return lifecycle_id;
    }

    public void setLifecycle_id(int lifecycle_id) {
        this.lifecycle_id = lifecycle_id;
    }

    public String getFormattedPrice() {
        return formatVND.format(price);
    }
    
    public String getFormattedDiscountPrice() {
        return formatVND.format(discount_price);
    }

    @Override
    public String toString() {
        return "MealPackageDTO{" + "formatVND=" + formatVND + ", meal_package_id=" + meal_package_id + ", title=" + title + ", quantity=" + quantity + ", price=" + price + ", discount_price=" + discount_price + ", thumbnail=" + thumbnail + ", description=" + description + ", recipe=" + recipe + ", create_at=" + create_at + ", update_at=" + update_at + ", status=" + status + ", bird_id=" + bird_id + ", lifecycle_id=" + lifecycle_id + ", img=" + img + '}';
    }

    

    
}
