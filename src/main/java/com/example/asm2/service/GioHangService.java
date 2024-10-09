package com.example.asm2.service;

import com.example.asm2.entity.GioHangItem;
import com.example.asm2.entity.Sanpham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.asm2.repository.SanPhamRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@Service
public class GioHangService {

    private List<GioHangItem> items = new ArrayList<>();

    @Autowired
    private SanPhamRepository sanPhamRepository;

    public List<GioHangItem> getAllItems() {
        return items;
    }

    public void addItem(Long sanphamId, int quantity) {
        // Check if the product exists in the database
        Optional<Sanpham> sanPhamOpt = sanPhamRepository.findById(sanphamId);
        if (!sanPhamOpt.isPresent()) {
            throw new IllegalArgumentException("Product not found");
        }

        // Check if the item already exists in the cart
        for (GioHangItem item : items) {
            if (item.getSanphamId().equals(sanphamId)) {
                // Update quantity if the item already exists
                item.setQuantity(item.getQuantity() + quantity);
                return;
            }
        }

        // Add new item to the cart
        GioHangItem newItem = new GioHangItem(sanphamId, quantity);
        items.add(newItem);
    }

    public void removeItem(Long sanphamId) {
        items.removeIf(item -> item.getSanphamId().equals(sanphamId));
    }
}