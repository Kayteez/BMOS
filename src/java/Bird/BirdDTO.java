/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Bird;

/**
 *
 * @author 09047
 */
public class BirdDTO {
    private int bird_id;
    private String name;

    public BirdDTO() {
    }

    public BirdDTO(int bird_id, String name) {
        this.bird_id = bird_id;
        this.name = name;
    }

    public int getBird_id() {
        return bird_id;
    }

    public void setBird_id(int bird_id) {
        this.bird_id = bird_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
