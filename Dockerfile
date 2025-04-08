# Usa una imagen base con JDK
FROM openjdk:17-jdk-slim

# Copia el archivo .jar a la imagen Docker
COPY target/usuario-0.0.1-SNAPSHOT.jar usuario-app.jar

# Expone el puerto 8080 (puerto de Spring Boot por defecto)
EXPOSE 8080

# Comando para ejecutar la aplicación cuando se inicia el contenedor
ENTRYPOINT ["java", "-jar", "/usuario-app.jar"]
