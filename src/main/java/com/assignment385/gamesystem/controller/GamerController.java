package com.assignment385.gamesystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.assignment385.gamesystem.entity.Gamer;
import com.assignment385.gamesystem.service.GamerService;

@Controller
public class GamerController {

    @Autowired
    private GamerService gamerService;

    @GetMapping("/gamers")
    public String listGamers(Model model) {
        model.addAttribute("gamers", gamerService.getAllGamers());
        return "gamers";
    }

    @GetMapping("/addGamer")
    public String showAddForm(Model model) {
        model.addAttribute("gamer", new Gamer());
        return "add-gamer";
    }

    @PostMapping("/saveGamer")
    public String saveGamer(@ModelAttribute Gamer gamer, Model model) {
        try {
            gamerService.saveGamer(gamer);
            return "redirect:/gamers";
        } catch (DataIntegrityViolationException e) {
            model.addAttribute("error", "Integrity Violation: Please check your input limits or duplicate entries.");
            return "add-gamer";
        }
    }

    @GetMapping("/editGamer/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        Gamer gamer = gamerService.getAllGamers().stream()
                .filter(g -> g.getId().equals(id))
                .findFirst()
                .orElse(null);
        model.addAttribute("gamer", gamer);
        return "edit-gamer";
    }

    @PostMapping("/updateGamer/{id}")
    public String updateGamer(@PathVariable Long id, @ModelAttribute Gamer gamer) {
        gamerService.updateGamer(id, gamer);
        return "redirect:/gamers";
    }

    @GetMapping("/gamer-library")
    public String viewGamerLibrary(Model model) {
        model.addAttribute("joinData", gamerService.getGamerGameDetails());
        return "gamer-games";
    }
}