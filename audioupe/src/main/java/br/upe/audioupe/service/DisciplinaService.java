package br.upe.audioupe.service;

import br.upe.audioupe.domain.Disciplina;
import br.upe.audioupe.domain.dto.DisciplinaDTO;
import br.upe.audioupe.repository.DisciplinaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DisciplinaService {

    @Autowired
    private DisciplinaRepository disciplinaRepository;

    public List<DisciplinaDTO> obterDisciplinasPorCursoEPeriodo(Long cursoId, Long periodoId){
        List<Disciplina> disciplinas = disciplinaRepository.findByCursoIdAndPeriodoId(cursoId,periodoId);

        return disciplinas.stream()
                .map(d -> new DisciplinaDTO(d.getNome(),d.getCargaHorariaTotal()))
                .collect(Collectors.toList());
    }
}
