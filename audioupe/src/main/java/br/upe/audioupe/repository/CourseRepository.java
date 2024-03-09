package br.upe.audioupe.repository;

import br.upe.audioupe.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {

    Optional<Course> findByNameLikeIgnoreCase(@NonNull String name);

    @Query("SELECT c FROM Course c WHERE c.name ilike %:name ORDER BY c.id DESC LIMIT 1")
    Optional<Course> findNameContainsIgnoreCase(String name);

}
