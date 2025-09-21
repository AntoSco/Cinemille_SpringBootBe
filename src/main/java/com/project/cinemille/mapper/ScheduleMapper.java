package com.project.cinemille.mapper;

import com.project.cinemille.dto.ScheduleDto;
import com.project.cinemille.entity.Schedule;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface ScheduleMapper {

    @Mapping(source = "movie.id", target = "movieId")
    @Mapping(source = "movie.title", target = "movieTitle")
    ScheduleDto toDto(Schedule schedule);
}
