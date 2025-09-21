package com.project.cinemille.mapper;

import com.project.cinemille.dto.MovieDto;
import com.project.cinemille.entity.Movie;
import com.project.cinemille.entity.Schedule;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;

@Mapper(componentModel = "spring")
public interface MovieMapper {

    @Mapping(source = "schedules", target = "scheduleTheatre" , qualifiedByName = "firstScheduleTheatre")
    MovieDto toDto(Movie movie);
    Movie toEntity(MovieDto dto);

    @Named("firstScheduleTheatre")
    static String firstScheduleTheatre(List<Schedule> schedules) {
        if (schedules == null || schedules.isEmpty()) return null;
        Schedule s = schedules.getFirst();
        return s == null ? null : s.getTheatre();
    }
}
