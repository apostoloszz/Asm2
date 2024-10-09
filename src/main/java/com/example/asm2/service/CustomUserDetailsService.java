package com.example.asm2.service;
import com.example.asm2.entity.Taikhoan;
import com.example.asm2.repository.TaiKhoanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private TaiKhoanRepository taiKhoanRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Taikhoan taikhoan = taiKhoanRepository.findByUsername(username);
        if (taikhoan == null) {
            throw new UsernameNotFoundException("Không tìm thấy người dùng với tên đăng nhập: " + username);
        }

        return User.builder()
                .username(taikhoan.getUsername())
                .password(taikhoan.getPassword()) // Mật khẩu đã được mã hóa
                .roles(taikhoan.getQuyen()) // Quyền của người dùng (ví dụ: "ADMIN", "USER")
                .build();
    }
}
