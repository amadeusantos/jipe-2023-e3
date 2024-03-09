package br.upe.audioupe.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "Faq")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class FaqItem {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(unique = true, columnDefinition = "TEXT")
    private String nome;

    @Column(columnDefinition = "TEXT")
    private String resposta;

}
