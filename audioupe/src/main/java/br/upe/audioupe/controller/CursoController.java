package br.upe.audioupe.controller;

import br.upe.audioupe.controller.resposta.CursoResponse;
import br.upe.audioupe.domain.dto.DisciplinaDTO;
import br.upe.audioupe.domain.dto.ProfessorDTO;
import br.upe.audioupe.service.CursoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/cursos")
public class CursoController {

    @Autowired
    private CursoService cursoService;


    @GetMapping
    public ResponseEntity<List<CursoResponse>> todosCursos(){
        return ResponseEntity.ok().body(cursoService.exibirCursos());
    }

    @GetMapping("/{cursoId}/professores")
    public ResponseEntity<List<ProfessorDTO>> professoresPorCurso(@PathVariable Long cursoId){
        return ResponseEntity.ok().body(cursoService.professoresPorCurso(cursoId));
    }

    @GetMapping("/{cursoId}/periodos/{periodoId}/disciplinas")
    public ResponseEntity<List<DisciplinaDTO>> obterDisciplinasPorCursoEPeriodo(@PathVariable(name = "cursoId") Long cursoId,
                                                                                @PathVariable(name = "periodoId") Long periodoId){

        return ResponseEntity.ok().body(cursoService.obterDisciplinasPorCursoEPeriodo(cursoId,periodoId));
    }

    @GetMapping("/{nome}")
    public ResponseEntity<CursoResponse> buscarCursoPorNome(@PathVariable String nome) {
        return ResponseEntity.ok(cursoService.buscarCursoPorNome(nome));
    }



}
