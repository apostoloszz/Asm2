package com.example.asm2.entity;


import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Entity
@Table(name = "thuoctinh")
public class Thuoctinh {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer thuoctinh_id;

    private String ten;

    @OneToMany(mappedBy = "thuoctinh")
    private List<Giatrithuoctinh> giatrithuoctinhList;

    // Getters and setters
    public Integer getThuoctinhId() {
        return thuoctinh_id;
    }

    public void setThuoctinhId(Integer thuoctinhId) {
        this.thuoctinh_id = thuoctinhId;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public List<Giatrithuoctinh> getGiatrithuoctinhList() {
        return giatrithuoctinhList;
    }

    public void setGiatrithuoctinhList(List<Giatrithuoctinh> giatrithuoctinhList) {
        this.giatrithuoctinhList = giatrithuoctinhList;
    }
}
