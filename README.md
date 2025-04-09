# Microservicio de Usuarios

Este es un microservicio para gestionar usuarios. Implementa un CRUD (crear, leer, actualizar, eliminar) para manejar los datos de los usuarios.

## Tecnologías utilizadas

- **Spring Boot**: Framework para el desarrollo del microservicio.
- **Spring Data JPA**: Para manejar la persistencia de datos utilizando Hibernate.
- **H2 Database**: Base de datos en memoria para pruebas y desarrollo.
- **Docker**: Para contenerizar y facilitar el despliegue.

## Atributos de Calidad

1. **Escalabilidad**:
    - Se ha implementado Docker para asegurar que el microservicio pueda escalar horizontalmente. Esto permite ejecutar múltiples instancias del microservicio, facilitando la distribución de la carga y mejorando el rendimiento en entornos de alta demanda.

2. **Mantenibilidad**:
    - Se sigue el patrón de diseño MVC, separando las responsabilidades del controlador (`UsuarioController`) y la lógica de negocio (`UsuarioService`). Esto facilita la comprensión, mantenimiento y extensión del código, permitiendo la adición de nuevas funcionalidades de manera modular.

3. **Rendimiento**:
    - Durante el desarrollo se utiliza una base de datos en memoria (H2), lo que permite tiempos de respuesta rápidos y facilita las pruebas. Para producción, se recomienda integrar una base de datos más robusta y escalable, como PostgreSQL, que puede manejar un mayor volumen de datos y asegurar la persistencia.

4. **Disponibilidad**:
    - Docker asegura que el microservicio sea fácil de desplegar, reiniciar y mantener en funcionamiento de forma continua. Además, el uso de Spring Boot garantiza un inicio rápido del servicio, mientras que la contenerización facilita la **monitorización**, la **replicación** y la **recuperación ante fallos**.

5. **Seguridad: Asegurando que las peticiones sean válidas, implementando validaciones a nivel de controlador o servicio. Puedes agregar que usas validaciones de entrada con @Valid o alguna seguridad adicional si la implementaste, como enrutamiento seguro o manejo de excepciones