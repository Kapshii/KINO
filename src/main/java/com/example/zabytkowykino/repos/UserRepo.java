package com.example.zabytkowykino.repos;

import com.example.zabytkowykino.domianimpl.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);


}
