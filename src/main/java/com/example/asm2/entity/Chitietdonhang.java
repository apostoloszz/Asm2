package com.example.asm2.entity;


import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@Entity
@Table(name = "chitietdonhang")
public class Chitietdonhang {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer ctdh_id;

    @ManyToOne
    @JoinColumn(name = "donhang_id", nullable = false)
    private Donhang donhang;

    @ManyToOne
    @JoinColumn(name = "sanpham_id", nullable = false)
    private Sanpham sanpham;

    private Integer soluong;
    private BigDecimal gia;
    private Integer chietkhau;
    private BigDecimal tonggia;

    // Getters and setters
    // ...
}
