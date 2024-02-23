package br.upe.audioupe.controller.response;

import br.upe.audioupe.model.Course;
import br.upe.audioupe.model.Professor;
import br.upe.audioupe.model.enums.DegreeEnum;
import lombok.Getter;

import java.util.List;

@Getter
public class ProfessorResponse {

    private final Long id;

    private final String name;

    private final String email;

    private final DegreeEnum degree;

    private final String field;

    private final String areasOfExpertise;

    private final List<String> courses;

    public ProfessorResponse(Professor professor) {
        this.id = professor.getId();
        this.name = professor.getName();
        this.email = professor.getEmail();
        this.degree = professor.getDegree();
        this.field = professor.getField();
        this.areasOfExpertise = professor.getAreasOfExpertise();
        this.courses = professor.getCourses().stream().map(Course::getName).toList();
    }
}
