package br.upe.audioupe.service;

//import br.upe.audioupe.domain.Duvida;
//import br.upe.audioupe.repository.DuvidaRepository;
//import br.upe.audioupe.utils.exceptions.NotFoundException;
//import lombok.RequiredArgsConstructor;
//import org.springframework.stereotype.Service;
//
//import java.util.Optional;
//
//@Service
//@RequiredArgsConstructor
//public class DuvidaService {
//
//    private final DuvidaRepository repository;
//
//    public Duvida buscarDuvidaPeloNome(String nome) {
//        Optional<Duvida> optionalDuvida = repository.findByNome(nome);
//        if (optionalDuvida.isEmpty()) {
//            throw new NotFoundException("Duvida não encontrada!");
//        }
//
//        return optionalDuvida.get();
//    }
//
//}
