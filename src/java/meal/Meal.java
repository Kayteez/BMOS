/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package meal;

/**
 *
 * @author Asus
 */
public class Meal {
    private int quantity;
    private int meal_package_id;
    private int product_id;

    public Meal() {
    }

    public Meal(int quantity, int meal_package_id, int product_id) {
        this.quantity = quantity;
        this.meal_package_id = meal_package_id;
        this.product_id = product_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Meal{" + "quantity=" + quantity + ", meal_package_id=" + meal_package_id + ", product_id=" + product_id + '}';
    }

    public int getMeal_package_id() {
        return meal_package_id;
    }

    public void setMeal_package_id(int meal_package_id) {
        this.meal_package_id = meal_package_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }
    
    
}
