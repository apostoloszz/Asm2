package com.example.asm2.controller;

import com.example.asm2.entity.Donhang;
import com.example.asm2.service.DonHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/donhangs")
public class DonHangController {
    @Autowired
    private DonHangService donHangService;

    @GetMapping
    public String listDonHangs(Model model) {
        List<Donhang> donhangs = donHangService.getAllDonHangs();
        model.addAttribute("donhangs", donhangs);
        return "donhang/list";
    }

    @GetMapping("/{id}")
    public String viewDonHang(@PathVariable Long id, Model model) {
        Donhang donhang = donHangService.getDonHangById(id);
        model.addAttribute("donhang", donhang);
        return "donhang/view";
    }
}