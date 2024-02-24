package br.upe.audioupe.controller.response;

import br.upe.audioupe.model.Course;
import br.upe.audioupe.model.Discipline;
import jakarta.persistence.*;
import lombok.Getter;

import java.util.Arrays;
import java.util.List;

@Getter
public class DisciplineResponse {

    private final Long id;

    private final String name;

    private final String code;

    private final int period;

    private final int theoreticalWorkload;

    private final int practicalWorkload;

    private final String program;

    private final String GeneralObjective;

    private final List<String> specificObjective;

    private final List<String> contentProgram;

    private final List<String> bibliography;

    @ManyToOne
    private final String course;


    public DisciplineResponse(Discipline discipline) {
        this.id = discipline.getId();
        this.name = discipline.getName();
        this.code = discipline.getCode();
        this.period = discipline.getPeriod();
        this.theoreticalWorkload = discipline.getTheoreticalWorkload();
        this.practicalWorkload = discipline.getPracticalWorkload();
        this.program = discipline.getProgram();
        GeneralObjective = discipline.getGeneralObjective();
        this.specificObjective = Arrays.stream(discipline.getSpecificObjective().split("; ")).toList();
        this.contentProgram = Arrays.stream(discipline.getContentProgram().split("; ")).toList();
        this.bibliography = Arrays.stream(discipline.getBibliography().split("; ")).toList();
        this.course = discipline.getCourse().getName();
    }
}
