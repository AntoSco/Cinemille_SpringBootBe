package com.project.cinemille.repository;

import com.project.cinemille.entity.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

public interface MovieRepository extends JpaRepository<Movie, UUID> {

    @Query("""
        SELECT DISTINCT m FROM Movie m
        JOIN m.schedules s
        WHERE :date BETWEEN s.fromDate AND s.toDate
    """)
    List<Movie> findMoviesByDate(LocalDate date);
}
