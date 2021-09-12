package br.edu.infnet.VenturaUsuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import br.edu.infnet.VenturaUsuario.model.domain.Usuario;
import br.edu.infnet.VenturaUsuario.model.service.UsuarioService;

@Component
public class DataLoader implements ApplicationRunner {

	@Autowired
	private UsuarioService usuarioService;
	
	@Override
	public void run(ApplicationArguments args) throws Exception {
		Usuario usuario = new Usuario();
		usuario.setNome("Alceu Lima");
		usuario.setEmail("alceu@alceu.com");
		usuario.setSenha("123");
		usuario.setTipo('A');
		
		usuarioService.incluir(usuario);
		
		System.out.println("Inclusão realizada!!!");
	}
}
