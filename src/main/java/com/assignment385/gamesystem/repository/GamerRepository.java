package com.assignment385.gamesystem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.assignment385.gamesystem.entity.Gamer;

@Repository
public interface GamerRepository extends JpaRepository<Gamer, Long> {

    // Custom query to perform an INNER JOIN between Gamer and VideoGame
    @Query("SELECT g.username, v.title FROM Gamer g JOIN g.games v")
    List<Object[]> fetchGamerGameDetails();
}