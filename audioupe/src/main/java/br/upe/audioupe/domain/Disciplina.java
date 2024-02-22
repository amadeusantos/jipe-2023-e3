package br.upe.audioupe.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Disciplina {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String nome;

    private int cargaHorariaTotal;

    private String conteudoProgramatico;

    private String materialApoio;

    @ManyToOne
    @JoinColumn(name = "curso_id")
    private Curso curso;

}
