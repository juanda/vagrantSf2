parameters:
    database_driver:   pdo_mysql
    database_host:     localhost
    database_port:     ~
    database_name:     uma
    database_user:     root
    database_password: 
        
    mailer_transport:  smtp
    mailer_host:       localhost
    mailer_user:       ~
    mailer_password:   ~
    
    duracion_token:    3600

    locale:            es
    secret:            KKkaksuehfmcvnd7w7862hgds77djd

    jazzyweb.gesprobundle.servicesoap.app.wsdl: http://sgr.local/app_dev.php/app_admin/wsdl
    jw_servicios_telematica.servicesoap.usuarios.wsdl: http://sgr.local/app_dev.php/usuarios_admin/wsdl
    jazzyweb.gesprobundle.serviceesoap.local_cert: /var/www/uma/app/config/keycert.pem
