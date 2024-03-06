package br.upe.audioupe.repository;

import br.upe.audioupe.model.Discipline;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface DisciplineRepository extends JpaRepository<Discipline,Long> {

    @Query("SELECT d FROM Discipline d WHERE (:course IS NULL OR d.course.name ilike %:course) AND (:period IS NULL OR d.period = :period) ORDER BY :order")
    List<Discipline> ListDisciplines(String order, String course, Integer period);

    @Query("SELECT d FROM Discipline d JOIN d.course c WHERE LOWER(d.name) = LOWER(:name) AND LOWER(c.name) = LOWER(:course)")
    Optional<Discipline> findDisciplineByCourse(String name, String course);

}
