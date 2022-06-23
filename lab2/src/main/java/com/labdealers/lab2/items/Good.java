/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.labdealers.lab2.items;

/**
 *
 * @author yache
 */
public class Good {
    private String imageURL;
    private String name;
    private int cost;
    private int newCost;
    private String description;
    private String categorie;
    
    public Good() {
        this.imageURL = "";
        this.name = "";
        this.cost = 0;
        this.newCost = 0;
        this.description = "";
        this.categorie = "";
    }
    
    public Good(String imageURL, String name, int cost, int newCost, String description, String categorie) {
        this.imageURL = imageURL;
        this.name = name;
        this.cost = cost;
        this.newCost = newCost;
        this.description = description;
        this.categorie = categorie;
    }
    
    public String getImageURL() {
        return imageURL;
    }

    public String getName() {
        return name;
    }

    public int getCost() {
        return cost;
    }

    public int getNewCost() {
        return newCost;
    }

    public String getDescription() {
        return description;
    }
    
    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public void setNewCost(int newCost) {
        this.newCost = newCost;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public String getCategorie() {
        return categorie;
    }
    
}
