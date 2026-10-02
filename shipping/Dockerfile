FROM maven:3.9.11
EXPOSE 8080
WORKDIR /opt/server
COPY pom.xml .
COPY src .
RUN mvn clean package
RUN target/shipping-1.0.jar shipping.jar
ENV CART_ENDPOINT:"cart:8080" \
    DB_HOST="mysql"
CMD ["java", "-jar", "shipping.jar"]    

