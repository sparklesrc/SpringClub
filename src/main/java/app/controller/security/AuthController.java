package app.controller.security;

import app.model.Persona;
import app.model.UsuarioRol;
import app.zelper.Constantes;
import app.zelper.RolesEnum;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


//En esta clase se esta tomando desde la raiz de la pagina por eso aqui colocare
//LA BIENVENIDA DE LA PAGINA... EL HOME.jsp


@Controller
public class AuthController {

    @RequestMapping("login")
    public String login(HttpSession session) {
        Persona persona = (Persona) session.getAttribute(Constantes.SESSION_USUARIO);
        if (persona == null) {
            return "security/login";
        }

        String retorno = "";
        List<UsuarioRol> roles = persona.getUsuario().getUsuarioRol();

        for (UsuarioRol rol : roles) {
            if (rol.getAuthority().equals(RolesEnum.ADMIN.getValue())) {
                retorno = "redirect:/adm";
                break;

            } else if (rol.getAuthority().equals(RolesEnum.SOCIO.getValue())) {
                retorno = "redirect:/socio";
                break;
            }
        }

        return retorno;
    }

    //Este metodo dara el HOME.JSP
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {

        return "home/home";
    }
}
