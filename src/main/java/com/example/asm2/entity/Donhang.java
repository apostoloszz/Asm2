package com.example.asm2.entity;


import jakarta.persistence.*;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
@Data
@Entity
@Table(name = "donhang")
public class Donhang {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer donhang_id;
    @ManyToOne
    @JoinColumn(name = "khachhang_id", nullable = false)
    private Khachhang khachhang;

    private Date ngaytao;
    private Date ngaythanhtoan;
    private String trangthai;
    private BigDecimal phivanchuyen;
    private BigDecimal tonggia;

    @OneToMany(mappedBy = "donhang")
    private List<Chitietdonhang> chitietdonhangList;

}