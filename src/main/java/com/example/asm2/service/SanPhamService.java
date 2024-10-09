package com.example.asm2.service;

import com.example.asm2.entity.Sanpham;
import com.example.asm2.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class SanPhamService {

    @Autowired
    private SanPhamRepository sanPhamRepository;

    public List<Sanpham> getAllSanPhams() {
        return sanPhamRepository.findAll();
    }

    public Sanpham getSanPhamById(Long id) {
        return sanPhamRepository.findById(id).orElse(null);
    }
}