package br.upe.audioupe.service;

import br.upe.audioupe.controller.resposta.CursoResponse;
import br.upe.audioupe.domain.Curso;
import br.upe.audioupe.domain.dto.CursoDTO;
import br.upe.audioupe.domain.dto.DisciplinaDTO;
import br.upe.audioupe.domain.dto.ProfessorDTO;
import br.upe.audioupe.repository.CursoRepository;
import br.upe.audioupe.utils.exceptions.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CursoService {

    @Autowired
    private CursoRepository cursoRepository;

    @Autowired
    private ProfessorService professorService;

    @Autowired
    private DisciplinaService disciplinaService;



    public List<CursoResponse> exibirCursos(){
        List<Curso> cursos = cursoRepository.findAll();
        return cursos.stream().map(CursoResponse::new).toList();
    }

    public List<ProfessorDTO> professoresPorCurso(Long cursoId){
        return professorService.professoresPorCurso(cursoId);
    }

    public List<DisciplinaDTO> obterDisciplinasPorCursoEPeriodo(Long cursoId, Long periodoId){
        return disciplinaService.obterDisciplinasPorCursoEPeriodo(cursoId,periodoId);
    }


    public CursoResponse buscarCursoPorNome(String nome) {
        Optional<Curso> optionalCurso = cursoRepository.findByNome(nome);

        if (optionalCurso.isEmpty()) {
            throw new NotFoundException("Curso não encontrado!");
        }

        return new CursoResponse(optionalCurso.get());
    }
}
