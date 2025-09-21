package com.project.cinemille.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.UuidGenerator;

import java.util.List;
import java.util.UUID;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Movie {

    @Id
    @GeneratedValue
    @UuidGenerator
    private UUID id;

    private String title;
    private String poster;

    @Column(length = 2000)
    private String description;

    private String duration;
    private String director;
    private String releaseYear;

    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Schedule> schedules;
}
