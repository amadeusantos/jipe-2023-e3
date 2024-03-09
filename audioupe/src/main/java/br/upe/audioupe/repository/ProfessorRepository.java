package br.upe.audioupe.repository;

import br.upe.audioupe.model.Course;
import br.upe.audioupe.model.Professor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProfessorRepository extends JpaRepository<Professor, Long> {

    @Query(value = "SELECT p.* " +
            "FROM professor p " +
            "JOIN course_professor cp ON p.id = cp.professor_id " +
            "JOIN course c ON cp.course_id = c.id " +
            "WHERE LOWER(p.name) LIKE LOWER(CONCAT('%', :name, '%')) " +
            "AND LOWER(c.name) LIKE LOWER(CONCAT('%', :course, '%')) " +
            "LIMIT 1", nativeQuery = true)
    Optional<Professor> findProfessorByNameAndCourse(@Param("name") String name, @Param("course") String course);

    @Query("SELECT p FROM Professor p WHERE :course IS NULL OR EXISTS (SELECT c FROM p.courses c WHERE c.name ILIKE %:course) ORDER BY :order")
    List<Professor> listProfessors(String order, String course);
}
