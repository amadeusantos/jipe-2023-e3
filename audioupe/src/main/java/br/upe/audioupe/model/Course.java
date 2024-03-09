package br.upe.audioupe.model;

import br.upe.audioupe.model.enums.DegreeEnum;
import br.upe.audioupe.model.enums.EntriesEnum;
import br.upe.audioupe.model.enums.ModalityEnum;
import br.upe.audioupe.model.enums.ShiftEnum;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    private String email;

    private int workload;

    @Enumerated(EnumType.STRING)
    private DegreeEnum degreeType;

    private int extensionActivities;

    private int additionalActivities;

    private int periods;

    private int annualVacancies;

    @Enumerated(EnumType.STRING)
    private ModalityEnum modality;

    @Enumerated(EnumType.STRING)
    private ShiftEnum shift;

    @Enumerated(EnumType.STRING)
    private EntriesEnum entries;

    @Column(columnDefinition = "TEXT")
    private String objectives;

    @Column(columnDefinition = "TEXT")
    private String undergraduateProfile;

    @Column(columnDefinition = "TEXT")
    private String skills;

    @Column(columnDefinition = "TEXT")
    private String internship;

    @Column(columnDefinition = "TEXT")
    private String finalPaper;

    @OneToOne
    private Professor coordinator;

    @ManyToMany
    @JoinTable(
            name = "course_professor",
            joinColumns = @JoinColumn(name = "course_id"),
            inverseJoinColumns = @JoinColumn(name = "professor_id"))
    private List<Professor> professors;

    @OneToMany(mappedBy = "course")
    private List<Discipline> disciplines;

}
