/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.labdealers.lab2.categories;

/**
 *
 * @author yache
 */
public class Categorie {
    
    private String name;
    private String parentName;
    private String imageURL;
    
    public Categorie(String name, String parentName, String imageURL) {
        this.name = name;
        this.parentName = parentName;
        this.imageURL = imageURL;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public void setParentName(String parentName) {
        this.parentName = parentName;
    }

    public String getName() {
        return name;
    }

    public String getParentName() {
        return parentName;
    }
    
    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public String getImageURL() {
        return imageURL;
    }
    
}
