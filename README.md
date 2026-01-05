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
 - Or by cmd: /opt/shibboleth-idp/bin/plugin.sh -i https://shibboleth.net/downloads/identity-provider/plugins/scripting/2.0.0/idp-plugin-nashorn-jdk-dist-2.0.0.tar.gz

Links:
 - Hello App: https://idp-idp.apps-crc.testing/idp/profile/admin/hello
 - Metadata File: https://idp-idp.apps-crc.testing/idp/shibboleth
 - Status: https://idp-idp.apps-crc.testing/idp/status
