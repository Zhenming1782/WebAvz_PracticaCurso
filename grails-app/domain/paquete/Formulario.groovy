package paquete

class Formulario {

    int resp1,resp2,resp3;
    String resp4;
    User user;

    static constraints = {
        resp1 blank: false
        resp2 blank: false
        resp3 blank: false
        resp4 blank: true
        user nullable:true
    }

}
