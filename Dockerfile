# Use lightweight JDK 21 base image
FROM eclipse-temurin:21-jre-alpine

# Set working directory in the container
WORKDIR /app

# Create the upload directory
RUN mkdir -p /app/myApp/static

# (optional but good) declare it as a volume
VOLUME ["/app/myApp/static"]

# Copy the Spring Boot JAR into the container
COPY web-product-api-0.0.1-SNAPSHOT.jar .

# Expose the port the app will run 
EXPOSE 8080

# Command to run the Spring Boot app
CMD ["sh", "-c", "java -Dserver.port=$PORT -jar web-product-api-0.0.1-SNAPSHOT.jar"]
