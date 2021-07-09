# [ SpringBoot - MongoDB - JSP webproject ]
This project is using SpringBoot, MongoDB, JSP with Bootstrap in IntelliJ. 
***

## I. Initial Settings for Springboot with JSP in IntelliJ
### 1. SpringBoot Initializer
> * sdk 1.8, java 8, war packaging, maven
> * Initial dependencies
>     * Lombok
>     * Spring web
>     * Springboot Data JPA
>     * MySQL driver
>     * Springboot Data MongoDB

### 2. Create new directories for JSP views
1. src/main/__webapp/WEB-INF/views__
2. `Project Structure` - `Modules` - `Web`   
      : check if the root directory is correctly listed in `Web Resource Directory`

### 3. Add dependencies to pom.xml
```xml
<dependencies>
      <dependency>
          <groupId>javax.servlet</groupId>
          <artifactId>jstl</artifactId>
      </dependency>
      <dependency>
          <groupId>org.apache.tomcat.embed</groupId>
          <artifactId>tomcat-embed-jasper</artifactId>
          <scope>provided</scope>
      </dependency>
      <dependency>
          <groupId>javax.inject</groupId>
          <artifactId>javax.inject</artifactId>
          <version>1</version>
      </dependency>
      <dependency>
          <groupId>org.springframework.boot</groupId>
          <artifactId>spring-boot-devtools</artifactId>
          <scope>runtime</scope>
          <optional>true</optional>
      </dependency>
</dependencies>
```
### 4. How to run the Application
1. `Edit configurations...` on `Run/Debug configuration`.
2. New Maven configuration.
3. Add `spring-boot:run` in Parameters - Command line.
4. Run as `project name[spring-boot:run]`.

## II. MongoDB
### 1. Local Settings
1. [MongoDB Community Server](https://www.mongodb.com/try/download/community/) : 4.4.6 version
2. Root directories : `C:/mongodb/bin`, `C:/data/db`
3. `mongod.exe`: A server execution program.
4. `mongo.exe` : A shell program.
### 2. Create authorized accounts
1. create `admin`(or `web`) acoount.
```shell
C:\WINDOWS\system32>cd C:/mongodb/bin
C:\mongodb\bin>mongo
>use admin
>db.createUser (
{
  user: "admin",
  pwd: "1234",
  roles: [{role: "userAdminAnyDatabase", db: "admin"}]
})
```
```shell
>use web
>db.createUser (
{
  user: "web",
  pwd: "1234",
  roles: [{role: "readWrite", db: "web"}, 
          {role: "read", db: "reporting"}]
})
```
2. Restart the local server as an authorized mode.
```shell
C:\mongodb\bin>mongod --auth
```
3. Connect to the server with an `admin`(or `web`) account.
```shell
C:\mongodb\bin>mongo --port 27017 -u "admin" -p "1234" --authenticationDatabase "admin"
```
```shell
C:\mongodb\bin>mongo --port 27017 -u "web" -p "1234" --authenticationDatabase "web"
```

### 3. Run the local server
```shell
C:\WINDOWS\system32>cd C:/mongodb/bin
C:\mongodb\bin>mongod --auth
```



