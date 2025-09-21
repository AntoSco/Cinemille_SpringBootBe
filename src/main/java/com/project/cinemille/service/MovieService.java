package com.project.cinemille.service;

import com.project.cinemille.entity.Movie;
import com.project.cinemille.repository.MovieRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
@RequiredArgsConstructor
public class MovieService {

    private final MovieRepository movieRepository;

    public List<Movie> findByScheduleDate(LocalDate date) {
        return movieRepository.findMoviesByDate(date);
    }
}
