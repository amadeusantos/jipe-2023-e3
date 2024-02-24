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

@Service
@RequiredArgsConstructor
public class DisciplineService {

    private final DisciplineRepository repository;

    public List<Discipline> ListDisciplines(String order, String course, Integer period) {
        return repository.ListDisciplines(order, course, period);
    }
}
