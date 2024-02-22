package br.upe.audioupe.controller;

import br.upe.audioupe.domain.dto.CursoDTO;
import br.upe.audioupe.domain.dto.DisciplinaDTO;
import br.upe.audioupe.domain.dto.ProfessorDTO;
import br.upe.audioupe.service.CursoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/cursos")
public class CursoController {

    @Autowired
    private CursoService cursoService;


    @GetMapping
    public ResponseEntity<List<CursoDTO>> todosCursos(){
        return ResponseEntity.ok().body(cursoService.exibirCursos());
    }

    @GetMapping("/{cursoId}/professores")
    public ResponseEntity<List<ProfessorDTO>> professoresPorCurso(@PathVariable Long cursoId){
        return ResponseEntity.ok().body(cursoService.professoresPorCurso(cursoId));
    }

    @GetMapping("/{curso_id}/disciplinas")
    public ResponseEntity<Page<DisciplinaDTO>> obterDisciplinasPorCurso(
                                    @PathVariable Long curso_id,
                                    @RequestParam(defaultValue = "0") int page,
                                    @RequestParam(defaultValue = "10") int size,
                                    @RequestParam(defaultValue = "nome") String order
    ){
        return ResponseEntity.ok().body(cursoService.obterDisciplinasPorCurso(curso_id, page, size, order));
    }

    @GetMapping("/{curso_id}/periodo/{periodo_id}/disciplinas")
    public ResponseEntity<List<DisciplinaDTO>> obterDisciplinasPorCursoEPeriodo(@PathVariable Long curso_id, @PathVariable Long periodo_id){
        return ResponseEntity.ok().body(cursoService.obterDisciplinasPorCursoEPeriodo(curso_id,periodo_id));
    }
}
