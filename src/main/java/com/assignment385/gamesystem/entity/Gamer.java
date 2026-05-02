package com.assignment385.gamesystem.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import java.util.List;

@Entity
public class Gamer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Username cannot be empty")
    private String username;

    @Email(message = "Invalid email format")
    @NotBlank(message = "Email is required")
    private String email;

    @ManyToMany
    @JoinTable(
        name = "gamer_library",
        joinColumns = @JoinColumn(name = "gamer_id"),
        inverseJoinColumns = @JoinColumn(name = "game_id")
    )
    private List<VideoGame> games;

    public Gamer() {}

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public List<VideoGame> getGames() { return games; }
    public void setGames(List<VideoGame> games) { this.games = games; }
}