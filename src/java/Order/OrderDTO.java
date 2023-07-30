/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Order;

import java.util.Date;

/**
 *
 * @author Asus
 */
public class OrderDTO {

    private int order_id;
    private String order_code;
    private Date order_date;
    private String note;
    private double totalmoney;
    private int status;
    private int user_id;

    public OrderDTO() {
    }

    public OrderDTO(int order_id, String order_code, Date order_date, String note, double totalmoney, int status, int user_id) {
        this.order_id = order_id;
        this.order_code = order_code;
        this.order_date = order_date;
        this.note = note;
        this.totalmoney = totalmoney;
        this.status = status;
        this.user_id = user_id;
    }

    /**
     * @return the order_id
     */
    public int getOrder_id() {
        return order_id;
    }

    /**
     * @param order_id the order_id to set
     */
    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    /**
     * @return the order_code
     */
    public String getOrder_code() {
        return order_code;
    }

    /**
     * @param order_code the order_code to set
     */
    public void setOrder_code(String order_code) {
        this.order_code = order_code;
    }

    /**
     * @return the order_date
     */
    public Date getOrder_date() {
        return order_date;
    }

    /**
     * @param order_date the order_date to set
     */
    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    /**
     * @return the note
     */
    public String getNote() {
        return note;
    }

    /**
     * @param note the note to set
     */
    public void setNote(String note) {
        this.note = note;
    }

    /**
     * @return the totalmoney
     */
    public double getTotalmoney() {
        return totalmoney;
    }

    /**
     * @param totalmoney the totalmoney to set
     */
    public void setTotalmoney(double totalmoney) {
        this.totalmoney = totalmoney;
    }

    /**
     * @return the status
     */
    public int getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }

    /**
     * @return the user_id
     */
    public int getUser_id() {
        return user_id;
    }

    /**
     * @param user_id the user_id to set
     */
    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "OrderDTO{" + "order_id=" + order_id + ", order_code=" + order_code + ", order_date=" + order_date + ", note=" + note + ", totalmoney=" + totalmoney + ", status=" + status + ", user_id=" + user_id + '}';
    }

}