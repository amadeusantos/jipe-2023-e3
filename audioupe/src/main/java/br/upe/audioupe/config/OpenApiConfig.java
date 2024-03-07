package br.upe.audioupe.config;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Contact;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.info.License;
import io.swagger.v3.oas.annotations.servers.Server;

@OpenAPIDefinition(info = @Info(contact = @Contact(name = "Universidade do Pernambuco - UPE", url = "https://github.com/upe-garanhuns"), description = "O Áudio UPE é uma Skill para a Alexa desenvolvida para auxiliar estudantes da Universidade de Pernambuco (UPE).", title = "Gateway Angels", version = "1.0", license = @License(name = "Apache-2.0", url = "https://www.apache.org/licenses/LICENSE-2.0")), servers = {
        @Server(description = "Local ENV", url = "http://localhost:8080"), @Server(description = "Server ENV", url = "http://ec2-54-146-17-15.compute-1.amazonaws.com:8080") })
public class OpenApiConfig {
}
