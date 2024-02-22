package br.upe.audioupe.repository;

import br.upe.audioupe.model.Discipline;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DisciplineRepository extends JpaRepository<Discipline,Long> {

}
