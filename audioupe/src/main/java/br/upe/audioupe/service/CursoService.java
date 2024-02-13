package br.upe.audioupe.service;

import br.upe.audioupe.domain.Curso;
import br.upe.audioupe.domain.dto.CursoDTO;
import br.upe.audioupe.domain.dto.ProfessorDTO;
import br.upe.audioupe.repository.CursoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CursoService {

    @Autowired
    private CursoRepository cursoRepository;

    @Autowired
    private ProfessorService professorService;

    public List<CursoDTO> exibirCursos(){
        List<Curso> cursos = cursoRepository.findAll();
        return cursos.stream()
                .map(curso -> new CursoDTO(curso.getNome(), curso.getDescricao()))
                .collect(Collectors.toList());
    }

    public List<ProfessorDTO> professoresPorCurso(Long cursoId){
        return professorService.professoresPorCurso(cursoId);
    }

}
