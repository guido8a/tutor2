package tutor

class InicioController {

    def index() {
        println "inicio sesión: ${session.usuario} -- ${session.perfil}"
    }


}
