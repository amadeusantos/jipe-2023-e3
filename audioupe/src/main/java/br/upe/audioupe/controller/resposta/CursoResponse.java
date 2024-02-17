package br.upe.audioupe.controller.resposta;

import br.upe.audioupe.domain.Curso;
import br.upe.audioupe.domain.Disciplina;
import br.upe.audioupe.domain.Periodo;
import lombok.Getter;

import java.util.List;

@Getter
public class CursoResponse {

    private final Long id;

    private final String nome;

    private final String descricao;

    private final String coordenador;

    private final int periodos;

    private final int horasAcs;

    private final int vagasAnual;

    private final List<String> disciplinas;

    public CursoResponse(Curso curso) {
        this.id = curso.getId();
        this.nome = curso.getNome();
        this.descricao = curso.getDescricao();
        this.coordenador = curso.getCoordenacao();
        this.periodos = 8;
        this.horasAcs = curso.getHorasAcs();
        this.vagasAnual = curso.getVagasAnual();
        this.disciplinas = curso.getPeriodos().stream()
                .map(Periodo::getDisciplinas).flatMap(List::stream).map(Disciplina::getNome).toList();
    }
}
