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

    @Column(columnDefinition = "TEXT")
    private String conteudoProgramatico;

    @Column(columnDefinition = "TEXT")
    private String materialApoio;

    @ManyToOne
    @JoinColumn(name = "periodo_id")
    private Periodo periodo;

}
