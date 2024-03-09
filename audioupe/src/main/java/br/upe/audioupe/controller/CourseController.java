package br.upe.audioupe.controller;

import br.upe.audioupe.controller.response.CourseResponse;
import br.upe.audioupe.service.CourseService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/courses")
public class CourseController {

    private final CourseService service;

    @GetMapping
    public ResponseEntity<List<CourseResponse>> listCourses() {
        return ResponseEntity.ok(service.listCourses().stream().map(CourseResponse::new).toList());
    }

    @GetMapping("/{name}")
    public ResponseEntity<CourseResponse> findCourseByName(@PathVariable String name) {
        return ResponseEntity.ok(new CourseResponse(service.findCourseByName(name)));
    }

}
