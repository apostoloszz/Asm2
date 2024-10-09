package com.example.asm2.entity;

public class GioHangItem {
    private Long sanphamId;
    private int quantity;

    public GioHangItem(Long sanphamId, int quantity) {
        this.sanphamId = sanphamId;
        this.quantity = quantity;
    }

    public Long getSanphamId() {
        return sanphamId;
    }

    public void setSanphamId(Long sanphamId) {
        this.sanphamId = sanphamId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "GioHangItem{" +
                "sanphamId=" + sanphamId +
                ", quantity=" + quantity +
                '}';
    }
}