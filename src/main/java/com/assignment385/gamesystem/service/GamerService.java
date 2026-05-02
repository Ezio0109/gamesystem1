package com.assignment385.gamesystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assignment385.gamesystem.entity.Gamer;
import com.assignment385.gamesystem.repository.GamerRepository;

@Service
public class GamerService {

    @Autowired
    private GamerRepository gamerRepository;

    public List<Gamer> getAllGamers() {
        return gamerRepository.findAll();
    }

    public Gamer saveGamer(Gamer gamer) {
        return gamerRepository.save(gamer);
    }

    public Gamer updateGamer(Long id, Gamer updatedGamer) {
        Gamer existingGamer = gamerRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Gamer not found"));
        existingGamer.setUsername(updatedGamer.getUsername());
        existingGamer.setEmail(updatedGamer.getEmail());
        return gamerRepository.save(existingGamer);
    }

    public List<Object[]> getGamerGameDetails() {
        return gamerRepository.fetchGamerGameDetails();
    }
}