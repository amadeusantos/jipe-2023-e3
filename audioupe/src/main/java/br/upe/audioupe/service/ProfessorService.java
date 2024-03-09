package br.upe.audioupe.service;

import br.upe.audioupe.controller.response.ProfessorResponse;
import br.upe.audioupe.model.Professor;
import br.upe.audioupe.repository.ProfessorRepository;
import br.upe.audioupe.utils.exceptions.NotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class ProfessorService {

    private final ProfessorRepository  repository;

    public Professor findProfessorByCourseAndName(String name, String course) {
        Optional<Professor> optionalProfessor = repository.findProfessorByNameAndCourse(name, course);

        if (optionalProfessor.isEmpty()) {
            throw new NotFoundException("Professor not found!");
        }

        return optionalProfessor.get();
     }

    public List<Professor> listProfessors(String order, String course) {
        return repository.listProfessors(order, course);
    }
}
