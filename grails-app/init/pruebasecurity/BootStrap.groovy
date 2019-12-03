package pruebasecurity

import paquete.Role
import paquete.User
import paquete.UserRole

class BootStrap {

    def SeguridadService

    def init = { servletContext ->

        def adminRole = new Role(authority: 'ROLE_ADMIN').save()
        def userRole = new Role(authority: 'ROLE_USER').save()

        def testAdmin = new User(username: 'admin', password: 'admin', email: 'admin@admin.com').save()
        def testUser = new User(username: 'user', password: 'user', email: 'user@user.com').save()

        //UserRole.create testUser, adminRole
        SeguridadService.crearUserRole(testAdmin,adminRole)
        SeguridadService.crearUserRole(testUser,userRole)

        /*
        UserRole.withSession {
            it.flush()
            it.clear()
        }
        */
        assert User.count() == 2
        assert Role.count() == 2
        assert UserRole.count() == 2

    }
    def destroy = {
    }
}
