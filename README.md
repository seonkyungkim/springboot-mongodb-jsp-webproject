## SpringBoot - MongoDB - JSP webproject
This project is using SpringBoot, MongoDB, JSP in IntelliJ.
***

### 1. Initial Settings for Springboot with JSP in IntelliJ
> 1. __SpringBoot Initializer__
>   * sdk 1.8, java 8, war packaging, maven
>   * dependencies
>       * Lombok
>       * Spring web
>       * Springboot Data JPA
>       * MySQL driver
>       * Springboot Data MongoDB
> 2. __Create new directories for JSP views__
>   1. src/main/__webapp__/__WEB-INF__/__views__
>   2. Project Structure - Modules - Web   
      : check if the root directory is correctly listed in Web Resource Directory
> 3. __Add dependencies to pom.xml__
>     * jstl(javax.servlet)
>     * tomcat-embed-jasper(org.apache.tomcat.embed)
>     * javax.inject(javax.inject)
>     * __*DO NOT ADD*__ spring-boot-devtools(org.springframework.boot) 
> 4. __How to run the Application__
>     1. Edit configurations... on Run/Debug configuration.
>     2. New Maven configuration.
>     3. Add _spring-boot:run_ in Parameters - Command line.
>     4. Run as {project name[spring-boot:run]}.

### 2. Bootstrap



