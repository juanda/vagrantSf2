#
# This file MUST be edited with the 'visudo' command as root.
#
# Please consider adding local content in /etc/sudoers.d/ instead of
# directly modifying this file.
#
# See the man page for details on how to write a sudoers file.
#
Defaults        env_reset
Defaults        exempt_group=admin
Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
Defaults:www-data !requiretty

# Host alias specification

# User alias specification

# Cmnd alias specification

# User privilege specification
root    ALL=(ALL:ALL) ALL

# Members of the admin group may gain root privileges
%admin ALL=(ALL) NOPASSWD:ALL

# Allow members of group sudo to execute any command
%sudo   ALL=(ALL:ALL) ALL

# See sudoers(5) for more information on "#include" directives:

#includedir /etc/sudoers.d
#Necesario para los servicios web de gestión remota
www-data ALL=(ALL) NOPASSWD: /bin/chmod -R * /nfs/*
www-data ALL=(ALL) NOPASSWD: /bin/chgrp -R * /nfs/*
www-data ALL=(ALL) NOPASSWD: /bin/mkdir -p /nfs/*
www-data ALL=(ALL) NOPASSWD: /bin/chown -R * /nfs/*
www-data ALL=(ALL) NOPASSWD: /bin/cp
www-data ALL=(ALL) NOPASSWD: /bin/mv
www-data ALL=(ALL) NOPASSWD: /usr/bin/find
www-data ALL=(ALL) NOPASSWD: /usr/bin/svn
www-data ALL=(ALL) NOPASSWD: /bin/rm
www-data ALL=(ALL) NOPASSWD: /var/www/sgr/bin/Zend/plugins/com.zend.guard.core.resources.linux.x86_5.5.0/resources/zendenc53
