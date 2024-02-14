package br.upe.audioupe.repository;

import br.upe.audioupe.domain.Duvida;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface DuvidaRepository extends JpaRepository<Duvida, Long> {
    Optional<Duvida> findByNome(String nome);
}
