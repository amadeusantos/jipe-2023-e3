package br.upe.audioupe.service;

import br.upe.audioupe.model.Discipline;
import br.upe.audioupe.repository.DisciplineRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DisciplineService {

    private final DisciplineRepository repository;

    public List<Discipline> ListDisciplines(String order, String course, Integer period) {
        return repository.ListDisciplines(order, course, period);
    }

    public Discipline findDisciplineByNameAndCourse(String name, String course){
        Optional<Discipline> discipline = repository.findDisciplineByCourse(name,course);

        if(!discipline.isEmpty()){
            return discipline.get();
        }

        return null;
    }
}
