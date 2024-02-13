package br.upe.audioupe.service;

import br.upe.audioupe.domain.Professor;
import br.upe.audioupe.domain.dto.ProfessorDTO;
import br.upe.audioupe.repository.ProfessorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProfessorService {

    @Autowired
    private ProfessorRepository  professorRepository;

    public List<ProfessorDTO> professoresPorCurso(Long cursoId){
        List<Professor> professores = professorRepository.findByCursoId(cursoId);

        return professores.stream()
                .map(p -> new ProfessorDTO(p.getNome(), p.getEmail(), p.getAreaFormacao()))
                .collect(Collectors.toList());
    }
}
