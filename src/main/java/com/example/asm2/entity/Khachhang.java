package com.example.asm2.entity;


import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "khachhang")
public class Khachhang {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer khachhang_id;

    private String ten;
    private String diachi;
    private String tinhthanhpho;
    private String quanhuyen;
    private String phuongxa;
    private String sodienthoai;
    private Date ngaytao;
    private Boolean trangthai;

    @ManyToOne
    @JoinColumn(name = "taikhoan_id", nullable = false)
    private Taikhoan taikhoan;

    @OneToMany(mappedBy = "khachhang")
    private List<Donhang> donhangList;

    // Getters and setters
    // ...
}