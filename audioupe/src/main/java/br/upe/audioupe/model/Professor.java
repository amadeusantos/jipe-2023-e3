package br.upe.audioupe.model;

import br.upe.audioupe.model.enums.DegreeEnum;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Professor {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    private String email;

    @Enumerated(EnumType.STRING)
    private DegreeEnum degree;

    private String field;

    private String areasOfExpertise;

    @ManyToMany
    private List<Course> courses;

}
