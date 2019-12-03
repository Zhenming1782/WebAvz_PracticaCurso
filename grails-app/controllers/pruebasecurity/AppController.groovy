package pruebasecurity

import grails.plugin.springsecurity.annotation.Secured
import paquete.Formulario

import paquete.Role
import paquete.User


class AppController {

    def springSecurityService
    def SeguridadService
    EncuestaService encuestaService;

    @Secured(['permitAll'])
    def index() {
    }

    @Secured(['permitAll'])
    def crearUser(){
    }

    @Secured(['permitAll'])
    def guardarUsuario(){

        def userRole = new Role(authority: 'ROLE_USER')
        def user = new User(params)
        userRole.save()
        user.save()
        SeguridadService.crearUserRole(user,userRole)

        render"Usuario Creado"

    }

    @Secured(['ROLE_USER','ROLE_ADMIN'])
    def form(){
    }
    @Secured(['ROLE_USER','ROLE_ADMIN'])
    def save(Formulario form) {
        def ActUser = (User) springSecurityService.getCurrentUser()
        encuestaService.GuardarForm(form, ActUser)
        render "Success!"
    }

    @Secured(['ROLE_ADMIN'])
    def graphs(){
        [forms:Formulario.list()]
    }

}
