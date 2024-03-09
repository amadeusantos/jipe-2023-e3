package br.upe.audioupe.controller.response;

import br.upe.audioupe.model.FaqItem;
import lombok.Getter;

@Getter
public class FaqItemResponse {

    private final Long id;

    private final String nome;

    private final String resposta;

    public FaqItemResponse(FaqItem faqItem){
        this.id = faqItem.getId();
        this.nome = faqItem.getNome();
        this.resposta = faqItem.getResposta();
    }


}
