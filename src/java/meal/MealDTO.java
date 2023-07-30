/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package meal;

import Product.DTO;

/**
 *
 * @author Asus
 */
public class MealDTO {
    private String title;
    private int price;
    private String description;
    private String thumbnail;
    private int discount_price;
    private String title_product;

    public MealDTO() {
    }

    public MealDTO(String title, int price, String description, String thumbnail, int discount_price, String title_product) {
        this.title = title;
        this.price = price;
        this.description = description;
        this.thumbnail = thumbnail;
        this.discount_price = discount_price;
        this.title_product = title_product;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public int getDiscount_price() {
        return discount_price;
    }

    public void setDiscount_price(int discount_price) {
        this.discount_price = discount_price;
    }

    public String getTitle_product() {
        return title_product;
    }

    public void setTitle_product(String title_product) {
        this.title_product = title_product;
    }

    
    
}
