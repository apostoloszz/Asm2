package com.example.asm2.controller;

import com.example.asm2.entity.Taikhoan;
import com.example.asm2.service.TaiKhoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/taikhoans")
public class TaiKhoanController {
    @Autowired
    private TaiKhoanService taiKhoanService;

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("taikhoan", new Taikhoan());
        return "taikhoan/register";
    }

    @PostMapping("/register")
    public String registerTaiKhoan(@ModelAttribute Taikhoan taiKhoan) {
        taiKhoanService.register(taiKhoan);
        return "redirect:/login";
    }
}
