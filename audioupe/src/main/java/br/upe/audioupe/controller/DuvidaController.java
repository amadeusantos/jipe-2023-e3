package br.upe.audioupe.controller;

import br.upe.audioupe.domain.Duvida;
import br.upe.audioupe.service.DuvidaService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/duvidas")
@RequiredArgsConstructor
public class DuvidaController {

    private final DuvidaService service;

    @GetMapping("/{nome}")
    public ResponseEntity<Duvida> buscarDuvidaPeloNome(@PathVariable String nome) {
        return ResponseEntity.ok(service.buscarDuvidaPeloNome(nome));
    }

}
