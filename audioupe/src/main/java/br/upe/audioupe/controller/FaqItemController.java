package br.upe.audioupe.controller;

import br.upe.audioupe.model.FaqItem;
import br.upe.audioupe.model.dto.FaqItemDTO;
import br.upe.audioupe.service.FaqItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/faq")
public class FaqItemController {

    @Autowired
    private FaqItemService service;

    @GetMapping
    public ResponseEntity<List<FaqItemDTO>> listFaq(){
        return ResponseEntity.ok(service.listFaq()
                .stream()
                .map(f -> new FaqItemDTO(f.getNome(), f.getResposta()))
                .toList());
    }

    @GetMapping("/{name}")
    public ResponseEntity<FaqItemDTO> findFaqByName(@PathVariable String name){
        FaqItem f = service.findFaqByName(name);
        return ResponseEntity.ok(new FaqItemDTO(f.getNome(), f.getResposta()));
    }


}