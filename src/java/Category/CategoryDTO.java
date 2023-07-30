/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Category;

/**
 *
 * @author Asus
 */
public class CategoryDTO {
    private int category_id;
    private String category_name;
    private boolean status;
    private String img;

    public CategoryDTO() {
    }

    public CategoryDTO(int category_id, String category_name, boolean status, String img) {
        this.category_id = category_id;
        this.category_name = category_name;
        this.status = status;
        this.img = img;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    
    
}
