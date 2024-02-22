package br.upe.audioupe.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Discipline {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    private String code;

    private int period;

    private int theoreticalWorkload;

    private int practicalWorkload;

    @Column(columnDefinition = "TEXT")
    private String program;

    @Column(columnDefinition = "TEXT")
    private String GeneralObjective;

    @Column(columnDefinition = "TEXT")
    private String specificObjective;

    @Column(columnDefinition = "TEXT")
    private String contentProgram;

    @Column(columnDefinition = "TEXT")
    private String bibliography;

}
