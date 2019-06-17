package com.example.zabytkowykino.controller;

import com.example.zabytkowykino.domianimpl.Message;
import com.example.zabytkowykino.domianimpl.User;
import com.example.zabytkowykino.repos.MessageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
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
import java.util.*;

@Controller
public class MessageController {
    @Autowired
    private MessageRepo messageRepo;


    //
    @Value("${upload.path}")
    private String uploadPath;
//    private String uploadPath = System.getProperty("user.dir") + "/src/main/resources/img";



    @GetMapping("/main")
    public String main(@RequestParam(required = false, defaultValue = "") String filter, Model model) {
        Iterable<Message> messages;

        if (filter != null && !filter.isEmpty()) {
            messages = messageRepo.findByTag(filter);
        } else {
            messages = messageRepo.findAll();
        }

        model.addAttribute("messages", messages);
        model.addAttribute("filter", filter);
        model.addAttribute("rok", messages);
        model.addAttribute("text", messages);
        model.addAttribute("opis", messages);

        return "main";
    }

    @PostMapping(value = {"/main", "/user-image/{user}"})
    public String add(
            @AuthenticationPrincipal User user,
            @Valid Message message,
            BindingResult bindingResult,
            Model model,
            @RequestParam("file") MultipartFile file
    ) throws IOException {
        message.setAuthor(user);

        if (bindingResult.hasErrors()) {
            Map<String, String> errorsMap = ControllerUtils.getErrors(bindingResult);

            model.mergeAttributes(errorsMap);
            model.addAttribute("message", message);
        } else {
            saveFile(message, file);

            model.addAttribute("message", null);

            messageRepo.save(message);
        }

        Iterable<Message> messages = messageRepo.findAll();

        model.addAttribute("messages", messages);
        model.addAttribute("tag", messages);
        model.addAttribute("rok", messages);
        model.addAttribute("text", messages);
        model.addAttribute("opis", messages);
        return "redirect:/main";
    }


    private void saveFile(@Valid Message message, @RequestParam("file") MultipartFile file) throws IOException {
        System.out.println("Product Image - " + file.getOriginalFilename());

        if (file != null && !file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();

            file.transferTo(new File(uploadPath +  "/" + resultFilename));
            System.out.println("Product Image resultFilename - " + resultFilename);
            message.setFilename(resultFilename);
        }
    }

    @GetMapping("/user-image/{user}")
    public String userMessages(
            @AuthenticationPrincipal User currentUser,
            @PathVariable User user, Model model,
            @RequestParam(required = false) Message image
    ) {
        Set<Message> messages = user.getMessages();
        model.addAttribute("rok", messages);
        model.addAttribute("text", messages);
        model.addAttribute("opis", messages);
        model.addAttribute("messages", messages);
        model.addAttribute("message", image);
        model.addAttribute("isCurrentUser", currentUser.equals(user));

        return "userMessages";
    }


    @PutMapping("/user-image/{user}")
    public String updateMessage(
            @AuthenticationPrincipal User currentUser,
            @PathVariable Long user,
            @RequestParam("id") Message message,
            @RequestParam("text") String text,
            @RequestParam("tag") String tag,
            @RequestParam("rok") String rok,
            @RequestParam("opis") String opis,
            @RequestParam("file") MultipartFile file
    ) throws IOException {
        if (message.getAuthor().equals(currentUser)) {


            if (!StringUtils.isEmpty(tag)) {
                message.setTag(tag);
                message.setText(text);
                message.setRok(rok);
                message.setOpis(opis);
            }

            saveFile(message, file);

            messageRepo.save(message);
        }


        return "redirect:/user-image/" + user;
    }

    //
    @RequestMapping(value = "/delete/{id}")
    public String delete(@PathVariable Long id){

        messageRepo.deleteById(id);

        return "redirect:/main";

    }
    @PreAuthorize("hasAnyAuthority('ADMIN', 'USER')")
    @RequestMapping(value = "/deleteAll")
    public String deleteAll() throws IOException {
        messageRepo.deleteAll();

        return "redirect:/main";
    }


//
//
//public static void readAndDeleteFiles(File[] fileList){
//
//    for(File file : fileList){
//        if (!file.isDirectory()){
//            try {
//
//
//
//                //deleting file
//                if(file.delete()){
//                    System.out.println(file.getCanonicalPath() + " is deleted!");
//                }
//                else{
//                    System.out.println(file.getCanonicalPath() + " could not be deleted!");
//                }
//
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//
//        }
//        else{
//            //recursive call to fetch file list in all levels of sub-directories and then read & delete each of them
//            readAndDeleteFiles(file.listFiles());
//        }
//    }
//}
//
//    public void deleteFiles() {
//
//        File file = new File( uploadPath + "/");
//
//        if(file.delete()){
//            System.out.println(file.getName() + " is deleted!"+file);
//        }else{
//            DeleteFiles();
//            System.out.println(file.getName() +"Delete operation is failed.");
//        }
//
//    }
//
//
//    public void DeleteFiles() {
//        System.out.println("Called deleteFiles 3");
//
//        String[] filename;
//        File file = new File(uploadPath + "/");
//        if (file.isDirectory()) {
//            filename = file.list();
//            for (int i = 0; i < filename.length; i++) {
//                File myFile = new File(file, filename[i]);
//                System.out.println("deleteFiles"+filename);
//                myFile.delete();
//            }
//
//        }
//
//    }

}