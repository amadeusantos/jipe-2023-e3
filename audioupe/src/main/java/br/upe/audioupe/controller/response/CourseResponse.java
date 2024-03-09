package br.upe.audioupe.controller.response;

import br.upe.audioupe.model.Course;
import br.upe.audioupe.model.Discipline;
import br.upe.audioupe.model.Professor;
import br.upe.audioupe.model.enums.DegreeEnum;
import br.upe.audioupe.model.enums.EntriesEnum;
import br.upe.audioupe.model.enums.ModalityEnum;
import br.upe.audioupe.model.enums.ShiftEnum;
import lombok.Getter;

import java.util.List;

@Getter
public class CourseResponse {

    private final Long id;

    private final String name;

    private final String email;

    private final DegreeEnum degreeType;

    private final int workload;

    private final int extensionActivities;

    private final int additionalActivities;

    private final int periods;

    private final int annualVacancies;

    private final ModalityEnum modality;

    private final ShiftEnum shift;

    private final EntriesEnum entries;

    private final List<String> objectives;

    private final List<String> undergraduateProfile;

    private final List<String> skills;

    private final List<String> internship;

    private final List<String> finalPaper;

    private final List<String> disciplines;
    private final List<String> professors;

    public CourseResponse(Course course) {
        this.id = course.getId();
        this.name = course.getName();
        this.email = course.getEmail();
        this.degreeType = course.getDegreeType();
        this.workload = course.getWorkload();
        this.extensionActivities = course.getExtensionActivities();
        this.additionalActivities = course.getAdditionalActivities();
        this.periods = course.getPeriods();
        this.annualVacancies = course.getAnnualVacancies();
        this.modality = course.getModality();
        this.shift = course.getShift();
        this.entries = course.getEntries();
        this.objectives = List.of(course.getObjectives().split("; "));
        this.undergraduateProfile = List.of(course.getUndergraduateProfile().split("; "));
        this.skills = List.of(course.getSkills().split("; "));
        this.internship = List.of(course.getInternship().split("; "));
        this.finalPaper = List.of(course.getFinalPaper().split("; "));
        this.disciplines = course.getDisciplines().stream().map(Discipline::getName).toList();
        this.professors = course.getProfessors().stream().map(Professor::getName).toList();
    }
}