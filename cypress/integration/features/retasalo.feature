Feature: Tasar una Propiedad

    Como usuario quiero obtener un informe de tasación  

    Background: Retasalo 
        Given El usuario se encuentra en la página de Retasalo
          

   Scenario: Obtiene un Informe con Credenciales de Administrador
         
        When Busca la Propiedad por Rol
            |comuna                    | rol            | direccion                                     |
            |Santiago                  |235-15          |235-15 - ROSAS 3024 - Santiago                 |  
         And Ingresa los credenciales de administrador 
            |email                     | password |
            |camilo.olivos@toctoc.com  | 123456   |  
        Then El sistema valida credenciales y muestra informe
            |valida           |
            |Santiago 235-15  |
         And El sistema muestra informe 
  
    Scenario: Obtiene un Informe con Credenciales de particular
         
        When Busca la Propiedad por Rol
            |comuna                    | rol            | direccion                                     |
            |Las Condes                |2431-12         |2431-12 - LAS CONDES 12631 DP 304 - Las Condes |
         And Ingresa los credenciales de usuario 
            |email                     | password       |
            |hurtadomariela2@gmail.com | prueba         |  
        Then El sistema muestra el informe
            |valida                      |
            |LAS CONDES N°12631, DP 304  |
         And Visualiza medio de pago disponible 
  
        
  