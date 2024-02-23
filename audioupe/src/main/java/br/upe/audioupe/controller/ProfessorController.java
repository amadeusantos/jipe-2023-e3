package br.upe.audioupe.controller;

import br.upe.audioupe.controller.response.ProfessorResponse;
import br.upe.audioupe.service.ProfessorService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/professor")
@RequiredArgsConstructor
public class ProfessorController {

    private final ProfessorService service;

    @GetMapping("/{course}/{name}")
    public ResponseEntity<ProfessorResponse> findProfessorByNameAndCourse(@PathVariable String name, @PathVariable String course) {
        return ResponseEntity.ok(new ProfessorResponse(service.findProfessorByCourseAndName(name, course)));
    }

}
