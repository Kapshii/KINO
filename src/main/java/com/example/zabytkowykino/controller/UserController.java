package com.example.zabytkowykino.controller;

import com.example.zabytkowykino.domianimpl.Role;
import com.example.zabytkowykino.domianimpl.User;
import com.example.zabytkowykino.repos.UserRepo;
import com.example.zabytkowykino.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userSevice;

    @Autowired
    private UserRepo userRepo;

    @PreAuthorize("hasAnyAuthority('ADMIN', 'USER')")
    @GetMapping
    public String userList(Model model) {
        model.addAttribute("users", userSevice.findAll());
        model.addAttribute("email", userSevice.findAll());
        return "panel";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN', 'USER')")
    @GetMapping("{user}")
    public String userEditForm(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());

        return "listUser";
    }



    @PreAuthorize("hasAnyAuthority('ADMIN', 'USER')")
    @PostMapping
    public String userSave(
            @RequestParam String username,
            @RequestParam Map<String, String> form,
            @RequestParam("userId") User user
    ) {
        userSevice.saveUser(user, username, form);

        return "redirect:/user";
    }


    @GetMapping("profile")
    public String getProfile(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("username", user.getUsername());
        model.addAttribute("email", user.getEmail());

        return "profile";
    }

    @PostMapping("profile")
    public String updateProfile(
            @AuthenticationPrincipal User user,
            @RequestParam String password
    ) {
        userSevice.updateProfile(user, password);

        return "redirect:/user";
    }

    @RequestMapping("/delete/{id}")
    public String deleteUser (@PathVariable("id") long id, RedirectAttributes redirectAttributes){

          userRepo.deleteById(id);
          redirectAttributes.addFlashAttribute("message","Delete Users!!");
        return "redirect:/user";

    }




}