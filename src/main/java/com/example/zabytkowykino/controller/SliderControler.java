package com.example.zabytkowykino.controller;

import com.example.zabytkowykino.domianimpl.Sliders;
import com.example.zabytkowykino.domianimpl.User;
import com.example.zabytkowykino.repos.SliderRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

@Controller
public class SliderControler {
    @Autowired
    private SliderRepo sliderRepo;

    @Value("${upload.path}")
    private String uploadPath;
//private String uploadPath = System.getProperty("user.dir") + "/src/main/resources/img/";



    @GetMapping("/sliders")
    public String slidres(@RequestParam(required = false, defaultValue = "") String filter, Model model) {
        Iterable<Sliders> sliderss;

        if (filter != null && !filter.isEmpty()) {
            sliderss = sliderRepo.findByTag(filter);
        } else {
            sliderss = sliderRepo.findAll();
        }

        model.addAttribute("sliderss", sliderss);
        model.addAttribute("filter", filter);
        model.addAttribute("rok", sliderss);
        model.addAttribute("tag", sliderss);
        model.addAttribute("text", sliderss);
        model.addAttribute("opis", sliderss);
        return "sliders";
    }

    //    @PreAuthorize("hasAnyAuthority('ADMIN', 'USER')")
    @PostMapping(value = {"/sliders", "/sliders-image/{user}"})
    public String add(
            @AuthenticationPrincipal User user,
            @Valid Sliders sliders,
            BindingResult bindingResult,
            Model model,
            @RequestParam("file") MultipartFile file
    ) throws IOException {
        sliders.setAuthors(user);

        if (bindingResult.hasErrors()) {
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);

            model.mergeAttributes(errorsMap);
            model.addAttribute("sliders", sliders);
        } else {
            saveFile(sliders, file);

            model.addAttribute("sliders", null);

            sliderRepo.save(sliders);
        }

        Iterable<Sliders> sliderss = sliderRepo.findAll();

        model.addAttribute("sliderss", sliderss);
        model.addAttribute("rok", sliderss);
        model.addAttribute("text", sliderss);
        model.addAttribute("opis", sliderss);
        model.addAttribute("tag", sliderss);
        return "redirect:/sliders";
    }

    private void saveFile(@Valid Sliders sliders, @RequestParam("file") MultipartFile file) throws IOException {
        if (!file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath+"/logo");

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "_" + file.getOriginalFilename();

            file.transferTo(new File(uploadPath + "/sliders/" + resultFilename));

            sliders.setFilename(resultFilename);
        }
    }

    @GetMapping("/sliders-image/{user}")
    public String userSliders(
            @AuthenticationPrincipal User currentUser,
            @PathVariable User user, Model model,
            @RequestParam(required = false) Sliders image
    ) {
        Set<Sliders> sliderss = user.getSliders();
        model.addAttribute("rok", sliderss);
        model.addAttribute("text", sliderss);

        model.addAttribute("opis", sliderss);
        model.addAttribute("sliderss", sliderss);
        model.addAttribute("sliders", image);
        model.addAttribute("isCurrentUser", currentUser.equals(user));

        return "slidersImage";
    }

    @PutMapping("/sliders-image/{user}")
    public String updateSliders(
            @AuthenticationPrincipal User currentUser,
            @PathVariable Long user,
            @RequestParam("id") Sliders sliders,
            @RequestParam("text") String text,
            @RequestParam("tag") String tag,
            @RequestParam("rok") String rok,
            @RequestParam("opis") String opis,

            @RequestParam("file") MultipartFile file
    ) throws IOException {
        if (sliders.getAuthors().equals(currentUser)) {

            if (!StringUtils.isEmpty(tag)) {
                sliders.setTag(tag);
                sliders.setText(text);
                sliders.setRok(rok);
                sliders.setOpis(opis);
            }

            saveFile(sliders, file);

            sliderRepo.save(sliders);

        }

        return "redirect:/sliders-image/" + user;
    }

    @RequestMapping(value = "/sliders/delete/{id}")
    public String deleteSliders(@PathVariable  Long id) {

        sliderRepo.delete(id);
        return "redirect:/sliders";

    }
    @RequestMapping(value = "/sliders/deleteAll")
    public String deleteAll() {
       deleteFiles();
        sliderRepo.deleteAll();
        return "redirect:/sliders";

    }
    public void deleteFiles() {

        File file = new File( uploadPath + "/");

        if(file.delete()){
            System.out.println(file.getName() + " is deleted!"+file);
        }else{
            DeleteFiles();
            System.out.println(file.getName() +"Delete operation is failed.");
        }

    }


    public void DeleteFiles() {
        System.out.println("Called deleteFiles 3");

        String[] filename;
        File file = new File(uploadPath + "/logo/");
        if (file.isDirectory()) {
            filename = file.list();
            for (int i = 0; i < filename.length; i++) {
                File myFile = new File(file, filename[i]);
                System.out.println("deleteFiles"+filename);
                myFile.delete();
            }
            System.out.println("deleteFiles"+ filename);
        }

    }
}

