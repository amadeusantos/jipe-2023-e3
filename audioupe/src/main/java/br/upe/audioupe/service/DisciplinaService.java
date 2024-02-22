package br.upe.audioupe.service;

import br.upe.audioupe.repository.DisciplineRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class DisciplinaService {

    private final DisciplineRepository repository;

}
