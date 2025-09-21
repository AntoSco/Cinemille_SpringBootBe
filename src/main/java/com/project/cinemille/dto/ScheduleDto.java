package com.project.cinemille.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.UUID;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ScheduleDto {
    private UUID id;
    private String theatre;
    private LocalDate fromDate;
    private LocalDate toDate;
    private UUID movieId;
    private String movieTitle;
}
