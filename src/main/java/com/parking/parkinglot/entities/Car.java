package com.parking.parkinglot.entities;

import jakarta.persistence.*;

@Entity
public class Car {
    private Long id;

    @Id
    @GeneratedValue
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    private String licencePlate;

    @Basic
    public String getLicensePlate() {
        return licencePlate;
    }

    public void setLicensePlate(String licencePlate) {
        this.licencePlate = licencePlate;
    }

    private String parkingSpot;

    @Basic
    public String getParkingSpot() {
        return parkingSpot;
    }

    public void setParkingSpot(String parkingSpot) {
        this.parkingSpot = parkingSpot;
    }

    private User owner;

    @ManyToOne
    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }
}
