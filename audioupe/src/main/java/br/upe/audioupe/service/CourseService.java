package br.upe.audioupe.service;

import br.upe.audioupe.model.Course;
import br.upe.audioupe.repository.CourseRepository;
import br.upe.audioupe.utils.exceptions.NotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CourseService {

    private final CourseRepository repository;

    public List<Course> listCourses() {
        return repository.findAll();
    }

    public Course findCourseByName(String name) {
        Optional<Course> optionalCourse = repository.findNameContainsIgnoreCase(name);
        if (optionalCourse.isEmpty()) {
            throw new NotFoundException("Course not found!");
        }
        return optionalCourse.get();
    }

}
