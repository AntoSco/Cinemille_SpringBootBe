package com.project.cinemille.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.UUID;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MovieDto {
    private UUID id;
    private String title;
    private String poster;
    private String description;
    private String duration;
    private String director;
    private String releaseYear;
    private String scheduleTheatre;
}
