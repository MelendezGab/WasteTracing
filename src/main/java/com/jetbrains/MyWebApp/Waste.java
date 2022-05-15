package com.jetbrains.MyWebApp;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
@Entity
public class Waste {
    @Id
    @GeneratedValue
    private Long id;
    private String name;
    private float amount;
    private String location;

    public Waste() {
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getAmount() { return amount; }

    public void setAmount(float amount) { this.amount = amount; }

    public String getLocation() { return location; }

    public void setLocation(String location) { this.location = location; }

    @Override
    public String toString() {
        return "Waste{" +
                "name='" + name + '\'' +
                "amount='" + amount+ '\'' +
                "location='" + location + '\'' +
                '}';
    }
}
