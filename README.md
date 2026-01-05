# Activate hello world app

Check following:
- Module idp.admin.Hello is enabled

Edit following:
 - In file: password-authn-config.xml
   Activate: bean shibboleth.HTPasswdValidator
 - In file: access-control.xml
   Edit policy AccessByAdminUser and add 'your' username in collection param.

Add plugins:     
 - /opt/shibboleth-idp/bin/plugin.sh -I net.shibboleth.idp.plugin.nashorn (Java script engine)