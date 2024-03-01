package br.upe.audioupe.repository;

import br.upe.audioupe.model.FaqItem;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface FaqItemRepository extends JpaRepository<FaqItem, Long> {
    Optional<FaqItem> findByNome(String nome);
}
