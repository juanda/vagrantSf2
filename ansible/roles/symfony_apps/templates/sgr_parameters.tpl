parameters:
    database_driver:   pdo_mysql
    database_host:     127.0.0.1
    database_port:     ~

    mailer_transport:  smtp
    mailer_host:       localhost
    mailer_user:       ~
    mailer_password:   ~

    locale:            es
    secret:            a67r66e34xbhsye6hajhashj330e0doguvy32
    
    svn.url: https://gea.pntic.mec.es/RepositoriosSVN/configuraciones
    svn.username: gespro
    svn.password: gespro
    svn.command : /usr/bin/svn
        
    mysql.username: root
    mysql.password: 
    mysql.command: /usr/bin/mysql
    
    zendguard.tmpdir: /tmp/zendtmp
    zendguard.command: /var/www/sgr/bin/Zend/plugins/com.zend.guard.core.resources.linux.x86_5.5.0/resources/zendenc53    
    
    alert.mail.subject: Mensaje de aviso de SGR (Sistema de Gestión Remota)
    alert.mail.from: sgr-noreply@pntic.mec.es
    alert.mail.to: juandavid.rodriguez@ite.educacion.es
    
    usuarios.database.name: usuariosCNICE
    usuarios.database.host: localhost
    usuarios.database.user: root
    usuarios.database.pass: root
