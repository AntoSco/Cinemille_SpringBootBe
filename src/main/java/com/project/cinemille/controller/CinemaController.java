package com.project.cinemille.controller;

import com.project.cinemille.dto.MovieDto;
import com.project.cinemille.dto.ScheduleDto;
import com.project.cinemille.mapper.MovieMapper;
import com.project.cinemille.mapper.ScheduleMapper;
import com.project.cinemille.service.MovieService;
import com.project.cinemille.service.ScheduleService;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/api/v1")
@RequiredArgsConstructor
public class CinemaController {

    private final MovieService movieService;
    private final ScheduleService scheduleService;
    private final MovieMapper movieMapper;
    private final ScheduleMapper scheduleMapper;

    @GetMapping("/moviesScheduleHistory")
    public List<ScheduleDto> getAllSchedules() {
        return scheduleService.findAll()
                .stream()
                .map(scheduleMapper::toDto)
                .toList();
    }

    @GetMapping("/moviesSchedule")
    public List<MovieDto> getMoviesScheduleByDate(
            @RequestParam("date") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate date
    ) {
        return movieService.findByScheduleDate(date)
                .stream()
                .map(movieMapper::toDto)
                .toList();
    }
}
