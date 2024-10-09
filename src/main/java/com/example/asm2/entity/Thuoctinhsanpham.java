package com.example.asm2.entity;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "thuoctinhsanpham")
public class Thuoctinhsanpham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer ttsp_id;

    @ManyToOne
    @JoinColumn(name = "gttt_id", nullable = false)
    private Giatrithuoctinh giatrithuoctinh;

    @ManyToOne
    @JoinColumn(name = "sanpham_id", nullable = false)
    private Sanpham sanpham;

    // Getters and setters
    public Integer getTtspId() {
        return ttsp_id;
    }

    public void setTtspId(Integer ttspId) {
        this.ttsp_id = ttspId;
    }

    public Giatrithuoctinh getGiatrithuoctinh() {
        return giatrithuoctinh;
    }

    public void setGiatrithuoctinh(Giatrithuoctinh giatrithuoctinh) {
        this.giatrithuoctinh = giatrithuoctinh;
    }

    public Sanpham getSanpham() {
        return sanpham;
    }

    public void setSanpham(Sanpham sanpham) {
        this.sanpham = sanpham;
    }
}
