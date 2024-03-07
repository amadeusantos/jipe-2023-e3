package br.upe.audioupe.service;

import br.upe.audioupe.model.FaqItem;
import br.upe.audioupe.repository.FaqItemRepository;
import br.upe.audioupe.utils.exceptions.NotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class FaqItemService{

    private final FaqItemRepository repository;

    public List<FaqItem> listFaq(){
        return repository.findAll();
    }

    public FaqItem findFaqByName(String name){
        Optional<FaqItem> optionalFaqItem = repository.findByNome(name);
        if(optionalFaqItem.isEmpty()){
            throw new NotFoundException("Question not found!");
        }
        return optionalFaqItem.get();
    }

}

