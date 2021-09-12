package br.edu.infnet.VenturaUsuario.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.edu.infnet.VenturaUsuario.model.domain.Endereco;
import br.edu.infnet.VenturaUsuario.model.domain.Usuario;
import br.edu.infnet.VenturaUsuario.model.service.EnderecoService;
import br.edu.infnet.VenturaUsuario.model.service.UsuarioService;


@RestController
@RequestMapping(path = {"/usuario"})
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	@Autowired
	private EnderecoService enderecoService;

	@PostMapping(value ="/")
	public ResponseEntity<?> logar(Usuario usuario) {
		
		usuario = usuarioService.validar(usuario.getEmail(), usuario.getSenha());
		
		ResponseEntity<?> retorno = ResponseEntity.ok().body(usuario);
		
		return retorno;
	}
	
	@PostMapping(value="/criar")
	public ResponseEntity<?> criar(Usuario usuario) {
		
		Endereco endereco = enderecoService.obterPorCep(usuario.getCep());
		
		usuario.setEndereco(endereco.getLogradouro());
		
		usuarioService.incluir(usuario);
		
		ResponseEntity<?> retorno = ResponseEntity.ok().body(usuario);
		return retorno;
	}
	
	@DeleteMapping(value="/{id}/remover")
	public ResponseEntity<?> remover(Usuario usuario, @PathVariable int id) {
		
		usuarioService.excluir(id);
		
		ResponseEntity<?> retorno = ResponseEntity.ok().body(usuario);
		return retorno;
	}
}