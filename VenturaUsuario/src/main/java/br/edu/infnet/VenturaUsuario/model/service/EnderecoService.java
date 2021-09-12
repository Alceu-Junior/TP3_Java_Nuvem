package br.edu.infnet.VenturaUsuario.model.service;

import br.edu.infnet.VenturaUsuario.model.domain.*;

import org.springframework.stereotype.Service;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.MediaType;

@Service
public class EnderecoService {
    private final String REST_URI = "https://viacep.com.br/ws/";
    private final Client client = ClientBuilder.newClient();
            
    public Endereco obterPorCep(String cep) {
        return client
                .target(REST_URI)
                .path(cep)
                .path("json")
                .request(MediaType.APPLICATION_JSON)
                .get(Endereco.class);
    }
}
