package pruebasecurity

import grails.gorm.transactions.Transactional
import paquete.Role
import paquete.User
import paquete.UserRole

@Transactional
class SeguridadService {

    def crearUserRole(User user, Role role) {
        UserRole.create(user,role)
    }
}
