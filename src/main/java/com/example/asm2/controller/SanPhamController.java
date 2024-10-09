package com.example.asm2.controller;

import com.example.asm2.entity.Sanpham;
import com.example.asm2.service.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/sanphams")
public class SanPhamController {
    @Autowired
    private SanPhamService sanPhamService;

    @GetMapping
    public String listSanPhams(Model model) {
        List<Sanpham> sanphams = sanPhamService.getAllSanPhams();
        model.addAttribute("sanphams", sanphams);
        return "sanpham/list";
    }

    @GetMapping("/{id}")
    public String viewSanPham(@PathVariable Long id, Model model) {
        Sanpham sanpham = sanPhamService.getSanPhamById(id);
        model.addAttribute("sanpham", sanpham);
        return "sanpham/view";
    }
}