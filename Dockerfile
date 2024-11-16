# Usa una imagen base de Java
FROM openjdk:8-jdk-alpine

# Copia el archivo JAR compilado al contenedor
COPY target/myapp.jar /app/myapp.jar

# Define el comando que ejecutará la aplicación
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]

# Expone el puerto actualizado
EXPOSE 9090
