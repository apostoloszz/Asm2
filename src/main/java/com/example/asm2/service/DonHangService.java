package com.example.asm2.service;

import com.example.asm2.entity.Donhang;
import com.example.asm2.repository.DonHangRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class DonHangService {

    @Autowired
    private DonHangRepository donHangRepository;

    public List<Donhang> getAllDonHangs() {
        return donHangRepository.findAll();
    }

    public Donhang getDonHangById(Long id) {
        return donHangRepository.findById(id).orElse(null);
    }
}