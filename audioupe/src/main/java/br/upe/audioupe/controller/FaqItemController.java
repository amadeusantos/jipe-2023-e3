package br.upe.audioupe.controller;

import br.upe.audioupe.controller.response.FaqItemResponse;
import br.upe.audioupe.model.FaqItem;
import br.upe.audioupe.service.FaqItemService;
import lombok.RequiredArgsConstructor;
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

    private final FaqItemService service;

    @GetMapping
    public ResponseEntity<List<FaqItemResponse>> listFaq(){
        return ResponseEntity.ok(service.listFaq()
                .stream()
                .map(f -> new FaqItemResponse(f))
                .toList());
    }

    @GetMapping("/{name}")
    public ResponseEntity<FaqItemResponse> findFaqByName(@PathVariable String name){
        FaqItem f = service.findFaqByName(name);
        return ResponseEntity.ok(new FaqItemResponse(f));
    }


}