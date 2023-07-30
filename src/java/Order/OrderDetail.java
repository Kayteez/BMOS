/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Order;

/**
 *
 * @author Asus
 */
public class OrderDetail {

    private int orderDetail_id;
    private int price;
    private int quantity;
    private int meal_package_id;
    private int order_id;
    private int product_id;
    private String title_product;
    private String thumbnail;

    public OrderDetail() {
    }

    public OrderDetail(int orderDetail_id, int price, int quantity, int product_id, int order_id, String title_product, String thumbnail) {
        this.orderDetail_id = orderDetail_id;
        this.price = price;
        this.quantity = quantity;
        this.product_id = product_id;
        this.order_id = order_id;
        this.title_product = title_product;
        this.thumbnail = thumbnail;
    }

    public OrderDetail(int orderDetail_id, int price, int quantity, int meal_package_id, int order_id, int product_id) {
        this.orderDetail_id = orderDetail_id;
        this.price = price;
        this.quantity = quantity;
        this.meal_package_id = meal_package_id;
        this.order_id = order_id;
        this.product_id = product_id;
    }

    public int getMeal_package_id() {
        return meal_package_id;
    }

    public void setMeal_package_id(int meal_package_id) {
        this.meal_package_id = meal_package_id;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public int getOrderDetail_id() {
        return orderDetail_id;
    }

    public void setOrderDetail_id(int orderDetail_id) {
        this.orderDetail_id = orderDetail_id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getTitle_product() {
        return title_product;
    }

    public void setTitle_product(String title_product) {
        this.title_product = title_product;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "orderDetail_id=" + orderDetail_id + ", price=" + price + ", quantity=" + quantity + ", meal_package_id=" + meal_package_id + ", order_id=" + order_id + ", product_id=" + product_id + '}';
    }

    public String printDetail() {
        return "|Title: " + title_product + "|quantity: " + quantity + "|price: " + price + "|" + "thumbnail: " + thumbnail;
    }

}
