package com.example.asm2.service;

import com.example.asm2.entity.Taikhoan;
import com.example.asm2.repository.TaiKhoanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class TaiKhoanService {

    @Autowired
    private TaiKhoanRepository taiKhoanRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public void register(Taikhoan taiKhoan) {
        taiKhoan.setPassword(passwordEncoder.encode(taiKhoan.getPassword()));
        taiKhoanRepository.save(taiKhoan);
    }

    // Additional methods for login, update, etc.
}