package com.example.asm2.entity;


import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "taikhoan")
public class Taikhoan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer taikhoan_id;

    private String username;
    private String password;
    private String email;
    private Date ngaytao;
    private String quyen;
    private String trangthai;

    @OneToMany(mappedBy = "taikhoan")
    private List<Khachhang> khachhangList;

    // Getters and setters
    // ...
}

