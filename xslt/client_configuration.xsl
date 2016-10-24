<?xml version="1.0">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/configuration">
    {
      "productId":"<xsl:valueof select="credentials/application/productId"/>",
      "dsn":"<xsl:valueof select="device/serialNumber"/>",
      "provisioningMethod":"companionService",
      "wakeWordAgentEnabled": <xsl:valueof select="device/wakeword"/>,
      "companionApp":{
          "localPort":8443,
          "sslKeyStore":"${Java_Client_Loc}/certs/server/jetty.pkcs12",
          "sslKeyStorePassphrase":"<xsl:valueof select="device/keystore/password"/>",
          "lwaUrl":"https://api.amazon.com"
      },
      "companionService":{
          "serviceUrl":"https://localhost:3000",
          "sslClientKeyStore":"${Java_Client_Loc}/certs/client/client.pkcs12",
          "sslClientKeyStorePassphrase":"<xsl:valueof select="device/keystore/password"/>",
          "sslCaCert":"${Java_Client_Loc}/certs/ca/ca.crt"
      }
    }
  <xsl:template>
</xsl:stylesheet>
