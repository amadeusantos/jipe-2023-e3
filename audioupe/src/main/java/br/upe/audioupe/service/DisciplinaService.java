package br.upe.audioupe.service;

import br.upe.audioupe.domain.Disciplina;
import br.upe.audioupe.repository.DisciplinaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DisciplinaService {

    @Autowired
    private DisciplinaRepository disciplinaRepository;

    public Page<Disciplina> obterDisciplinasPorCurso(Long curso_id, Pageable pageable){
        return this.disciplinaRepository.findByCursoId(curso_id, pageable);
    }

    public List<Disciplina> obterDisciplinasPorCursoEPeriodo(Long curso_id, Long periodo_id){
        return this.disciplinaRepository.findByCursoIdAndPeriodo(curso_id,periodo_id);
    }
}
