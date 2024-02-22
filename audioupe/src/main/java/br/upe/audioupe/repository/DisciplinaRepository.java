package br.upe.audioupe.repository;

import br.upe.audioupe.domain.Disciplina;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DisciplinaRepository extends JpaRepository<Disciplina,Long> {

    Page<Disciplina> findByCursoId(Long cursoId, Pageable pageable);

    List<Disciplina> findByCursoIdAndPeriodo(Long cursoId, Long periodoId);
}
