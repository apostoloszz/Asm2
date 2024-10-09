package com.example.asm2.controller;

import com.example.asm2.entity.GioHangItem;
import com.example.asm2.service.GioHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/giohang")
public class GioHangController {
    @Autowired
    private GioHangService gioHangService;

    @GetMapping
    public String viewGioHang(Model model) {
        List<GioHangItem> gioHangItems = gioHangService.getAllItems();
        model.addAttribute("gioHangItems", gioHangItems);
        return "giohang/view";
    }

    @PostMapping("/add")
    public String addToGioHang(@RequestParam Long sanphamId, @RequestParam int quantity) {
        gioHangService.addItem(sanphamId, quantity);
        return "redirect:/giohang";
    }

    @PostMapping("/remove")
    public String removeFromGioHang(@RequestParam Long sanphamId) {
        gioHangService.removeItem(sanphamId);
        return "redirect:/giohang";
    }
}
