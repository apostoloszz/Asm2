package com.example.asm2.entity;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "giatrithuoctinh")
public class Giatrithuoctinh {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer gttt_id;

    @ManyToOne
    @JoinColumn(name = "thuoctinh_id", nullable = false)
    private Thuoctinh thuoctinh;

    private String giatri;
}