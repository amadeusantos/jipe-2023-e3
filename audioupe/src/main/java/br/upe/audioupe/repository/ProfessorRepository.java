package br.upe.audioupe.repository;

import br.upe.audioupe.model.Course;
import br.upe.audioupe.model.Professor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProfessorRepository extends JpaRepository<Professor, Long> {

    @Query("SELECT p FROM Professor p " +
            "WHERE p.name ILIKE %:name% AND EXISTS (SELECT c FROM p.courses c WHERE c.name ILIKE %:course) " +
            "ORDER BY p.id DESC LIMIT 1")
    Optional<Professor> findProfessorByNameAndCourse(String name, String course);

}
