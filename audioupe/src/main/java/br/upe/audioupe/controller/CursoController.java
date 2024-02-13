package br.upe.audioupe.controller;

import br.upe.audioupe.domain.dto.CursoDTO;
import br.upe.audioupe.service.CursoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/curso")
public class CursoController {

    @Autowired
    private CursoService cursoService;

    @GetMapping
    public ResponseEntity<List<CursoDTO>> todosCursos(){
        return ResponseEntity.ok().body(cursoService.exibirCursos());
    }

}
