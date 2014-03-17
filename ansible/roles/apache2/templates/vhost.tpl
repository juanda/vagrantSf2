<VirtualHost *:80>
        ServerName {{ item.server_name }}
        
	DocumentRoot {{ item.doc_root }}
	<Directory />
		Options FollowSymLinks
		AllowOverride None
	</Directory>
	<Directory {{ item.doc_root }}>
		Options Indexes FollowSymLinks MultiViews
		AllowOverride All
		Order allow,deny
		allow from all
	</Directory>
	
	ErrorLog /var/log/apache2/error.log

	# Possible values include: debug, info, notice, warn, error, crit,
	# alert, emerg.
	LogLevel warn

	CustomLog /var/log/apache2/access.log combined
    
</VirtualHost>