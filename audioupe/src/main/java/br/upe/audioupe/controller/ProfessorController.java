package br.upe.audioupe.controller;

import br.upe.audioupe.controller.response.ProfessorResponse;
import br.upe.audioupe.service.ProfessorService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/professors")
@RequiredArgsConstructor
public class ProfessorController {

    private final ProfessorService service;

    @GetMapping
    public ResponseEntity<List<ProfessorResponse>> listProfessors(
            @RequestParam(required = false, defaultValue = "name") String order,
            @RequestParam(required = false) String course
    ){
        return ResponseEntity.ok().body(service.listProfessors(order, course).stream().map(ProfessorResponse::new).toList());
    }

    @GetMapping("/{course}/{name}")
    public ResponseEntity<ProfessorResponse> findProfessorByNameAndCourse(@PathVariable String name, @PathVariable String course) {
        return ResponseEntity.ok(new ProfessorResponse(service.findProfessorByCourseAndName(name, course)));
    }

}
