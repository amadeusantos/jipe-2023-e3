package br.upe.audioupe.service;

import br.upe.audioupe.domain.Curso;
import br.upe.audioupe.domain.Disciplina;
import br.upe.audioupe.domain.dto.CursoDTO;
import br.upe.audioupe.domain.dto.DisciplinaDTO;
import br.upe.audioupe.domain.dto.ProfessorDTO;
import br.upe.audioupe.repository.CursoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CursoService {

    @Autowired
    private CursoRepository cursoRepository;

    @Autowired
    private ProfessorService professorService;

    @Autowired
    private DisciplinaService disciplinaService;

    public List<CursoDTO> exibirCursos(){
        List<Curso> cursos = cursoRepository.findAll();
        return cursos.stream()
                .map(curso -> new CursoDTO(curso.getNome(), curso.getDescricao()))
                .collect(Collectors.toList());
    }

    public List<ProfessorDTO> professoresPorCurso(Long cursoId){
        return professorService.professoresPorCurso(cursoId);
    }

    public Page<DisciplinaDTO> obterDisciplinasPorCurso(Long curso_id, int page, int size, String order){

        Pageable pageable = PageRequest.of(page,size, Sort.by(order));
        Page<Disciplina> disciplinasPaginadas = this.disciplinaService.obterDisciplinasPorCurso(curso_id, pageable);

        return disciplinasPaginadas.map(
                disciplina -> new DisciplinaDTO(
                        disciplina.getNome(),
                        disciplina.getPeriodo(),
                        disciplina.getCargaHorariaTotal()
                )
        );
    }

    public List<DisciplinaDTO> obterDisciplinasPorCursoEPeriodo(Long curso_id, Long periodo_id){
        List<Disciplina> disciplinas = disciplinaService.obterDisciplinasPorCursoEPeriodo(curso_id,periodo_id);

        return disciplinas.stream()
                .map(disciplina -> new DisciplinaDTO(disciplina.getNome(), disciplina.getPeriodo(), disciplina.getCargaHorariaTotal()))
                .collect(Collectors.toList());
    }
}
