package com.example.asm2.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
@Entity
@Table(name = "sanpham")
public class Sanpham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer sanpham_id;

    private String ten;
    private String mota;
    private Integer soluong;
    private BigDecimal gia;
    private Integer chietkhau;
    private String anh;
    private Boolean trangthai;
    private String url;

    @OneToMany(mappedBy = "sanpham")
    private List<Chitietdonhang> chitietdonhangList;

    @OneToMany(mappedBy = "sanpham")
    private List<Thuoctinhsanpham> thuoctinhsanphamList;

}