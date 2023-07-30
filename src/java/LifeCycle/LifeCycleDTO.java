/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package LifeCycle;

/**
 *
 * @author 09047
 */
public class LifeCycleDTO {
    private int lifecycle_id;
    private String name;

    public LifeCycleDTO() {
    }

    public LifeCycleDTO(int lifecycle_id, String name) {
        this.lifecycle_id = lifecycle_id;
        this.name = name;
    }

    public int getLifecycle_id() {
        return lifecycle_id;
    }

    public void setLifecycle_id(int lifecycle_id) {
        this.lifecycle_id = lifecycle_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
