/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller_pkg;

/**
 *
 * @author SUPERFERRETERIA
 */
public class Item {
    private int id_client;
    private String name_client;

    public Item(int id, String name_client) {
        this.id_client = id;
        this.name_client = name_client;
    }

    /**
     * @return the id_client
     */
    public int getId_client() {
        return id_client;
    }

    /**
     * @param id the id_client to set
     */
    public void setId_client(int id) {
        this.id_client = id;
    }

    /**
     * @return the name_client
     */
    public String getName_client() {
        return name_client;
    }

    /**
     * @param name_client the name_client to set
     */
    public void setName_client(String name_client) {
        this.name_client = name_client;
    }
    
    @Override
    public String toString (){
        return getName_client();
    }
}
