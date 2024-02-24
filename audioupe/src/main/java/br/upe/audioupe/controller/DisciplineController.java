package br.upe.audioupe.controller;

import br.upe.audioupe.controller.response.DisciplineResponse;
import br.upe.audioupe.service.DisciplineService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/disciplines")
@RequiredArgsConstructor
public class DisciplineController {

    private final DisciplineService service;

    @GetMapping
    public ResponseEntity<List<DisciplineResponse>> pageDisciplines(
            @RequestParam(defaultValue = "name", required = false) String order,
            @RequestParam(required = false) String course,
            @RequestParam(required = false) Integer period
    ) {
        return  ResponseEntity.ok(service.ListDisciplines(order, course, period).stream().map(DisciplineResponse::new).toList());
    }

}
