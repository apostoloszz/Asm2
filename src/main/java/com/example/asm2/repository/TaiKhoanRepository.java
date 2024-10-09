package com.example.asm2.repository;

import com.example.asm2.entity.Taikhoan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TaiKhoanRepository extends JpaRepository<Taikhoan, Long> {
    Taikhoan findByUsername(String username);
    // Bạn có thể thêm các phương thức truy vấn tùy chỉnh ở đây nếu cần
}
