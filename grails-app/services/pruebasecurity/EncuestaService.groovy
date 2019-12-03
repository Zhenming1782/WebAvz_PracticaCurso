package pruebasecurity

import grails.gorm.transactions.Transactional
import paquete.Formulario
import paquete.User

@Transactional
class EncuestaService {

    def GuardarForm(Formulario form, User user) {

        form.user = user
        println "El datos: "+form.properties
        form.save(flush: true, failOnError: true)
    }
}
