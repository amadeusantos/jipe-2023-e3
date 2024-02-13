package br.upe.audioupe.repository;

import br.upe.audioupe.domain.Disciplina;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DisciplinaRepository extends JpaRepository<Disciplina,Long> {

    @Query("SELECT d FROM Disciplina d JOIN Periodo p ON d.periodo.id = p.id " +
            "WHERE p.curso.id = :cursoId AND p.id = :periodoId")
    List<Disciplina> findByCursoIdAndPeriodoId(@Param("cursoId") Long cursoId, @Param("periodoId") Long periodoId);
}
