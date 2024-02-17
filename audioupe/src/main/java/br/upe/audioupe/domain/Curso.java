package br.upe.audioupe.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Curso {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(unique = true)
    private String nome;

    @Column(columnDefinition = "TEXT")
    private String descricao;

    private String email;

    private int horasAcs;

    private int vagasAnual;

    private String coordenacao;

    @OneToMany
    private Set<Periodo> periodos;

    @ManyToMany(mappedBy = "cursos")
    private Set<Professor> professores;

}
