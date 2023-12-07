package tutor

class TipoActividad {

    String descripcion

    static mapping = {
        table 'tpac'
        cache usage: 'read-write', include: 'non-lazy'
        id column: 'tpac__id'
        id generator: 'identity'
        version false
        columns {
            id column: 'tpac__id'
            descripcion column: 'tpacdscr'
        }
    }

    static constraints = {
        descripcion(size: 1..255, blank: false, nullable: false, attributes: [title: 'descripcion'])
    }

    String toString() {
        "${this.descripcion}"
    }
}
