package br.upe.audioupe.model;

import jakarta.persistence.*;

//@Entity
//@Getter
//@Setter
//@AllArgsConstructor
//@NoArgsConstructor
public class Duvida {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(unique = true)
    private String nome;

    private String resposta;

}
