package com.nendrasys.model;

public class Gun
{
    private int id;
    private String gunName;
    private String description;
    private float priceInr;
    private float priceUsd;
    private String scope;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGunName() {
        return gunName;
    }

    public void setGunName(String gunName) {
        this.gunName = gunName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPriceInr() {
        return priceInr;
    }

    public void setPriceInr(float priceInr) {
        this.priceInr = priceInr;
    }

    public float getPriceUsd() {
        return priceUsd;
    }

    public void setPriceUsd(float priceUsd) {
        this.priceUsd = priceUsd;
    }

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    @Override
    public String toString() {
        return "Gun{" +
                "id=" + id +
                ", gunName='" + gunName + '\'' +
                ", description='" + description + '\'' +
                ", priceInr=" + priceInr +
                ", priceUsd=" + priceUsd +
                ", scope='" + scope + '\'' +
                '}';
    }
}
