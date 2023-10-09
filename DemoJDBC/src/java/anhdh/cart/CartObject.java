/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anhdh.cart;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author DoHoangAnh
 */
public class CartObject implements Serializable {

    private Map<String, Integer> items;

    public Map<String, Integer> getItems() {
        return items;
    }

    public void addItemToCart(String itemID, int quantity) {
        //1. Check exist
        if (itemID == null) {
            return;
        }
        if (itemID.trim().isEmpty()) {
            return;
        }
        if (quantity <= 0) {
            return;
        }
        //2. check items exist
        if (this.items == null) {
            this.items = new HashMap<>();
        }//end items not existed
        //3. check item existed
        if (this.items.containsKey(itemID)) {
            quantity += this.items.get(itemID);
        }
        this.items.put(itemID, quantity);
    }

    public void removeItemFromCart(String itemID) {
        if (itemID == null) {
            return;
        }
        if (itemID.trim().isEmpty()) {
            return;
        }
        //2. check existed
        if (this.items == null) {
            return;
        }
        //3. Check item existed
        if (this.items.containsKey(itemID)) {
            this.items.remove(itemID);
            if (this.items.isEmpty()) {
                this.items = null;
            }
        }
    }
}
