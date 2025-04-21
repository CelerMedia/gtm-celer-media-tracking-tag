___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


{
  "name": "Celer Media \u2013 Tracking Tag",
  "displayName": "Celer Media \u2013 Tracking Tag",
  "description": "Etiqueta personalizada de Celer Media para recolectar datos avanzados de usuarios con fines publicitarios. Compatible con campa\u00f1as en sitios propios y de clientes.",
  "icon": "activity",
  "categories": [
    "Analytics",
    "Marketing"
  ],
  "containerContexts": [
    "WEB"
  ],
  "brand": {
    "displayName": "Celer Media",
    "thumbnail": "data:image/png;base64,"
  },
  "code": {
    "html": "<script>\n(function () {\n  try {\n    var celerEndpoint = {{Celer Media \u2013 Endpoint}};\n    var siteId = {{Celer Media \u2013 Site ID}};\n    var customUserId = {{Celer Media \u2013 User ID (opcional)}};\n\n    if (!celerEndpoint || !siteId) {\n      console.error('Celer Media: Endpoint o Site ID faltante');\n      return;\n    }\n\n    var payload = {\n      site_id: siteId,\n      referrer: document.referrer,\n      url: window.location.href,\n      title: document.title,\n      screen: screen.width + \"x\" + screen.height,\n      language: navigator.language,\n      user_agent: navigator.userAgent,\n      timestamp: new Date().toISOString()\n    };\n\n    if (customUserId) {\n      payload.user_id = customUserId;\n    }\n\n    // Agregar eventos de clic\n    document.addEventListener(\"click\", function (e) {\n      payload.last_click = {\n        x: e.clientX,\n        y: e.clientY,\n        tag: e.target.tagName,\n        id: e.target.id,\n        classes: e.target.className\n      };\n    });\n\n    // Enviar datos\n    fetch(celerEndpoint + \"/collect\", {\n      method: \"POST\",\n      headers: { \"Content-Type\": \"application/json\" },\n      body: JSON.stringify(payload)\n    }).catch(function (e) {\n      console.error(\"Celer Media error:\", e);\n    });\n\n  } catch (err) {\n    console.error(\"Celer Media script error:\", err);\n  }\n})();\n</script>"
  },
  "params": [
    {
      "type": "TEXT",
      "name": "Celer Media \u2013 Endpoint",
      "displayName": "URL del endpoint de recolecci\u00f3n (ej. https://dmp.celermedia.com)",
      "simpleValueType": true
    },
    {
      "type": "TEXT",
      "name": "Celer Media \u2013 Site ID",
      "displayName": "ID del sitio asignado por Celer Media",
      "simpleValueType": true
    },
    {
      "type": "TEXT",
      "name": "Celer Media \u2013 User ID (opcional)",
      "displayName": "ID de usuario personalizado (opcional)",
      "simpleValueType": true
    }
  ],
  "supportUrl": "https://celermedia.com/soporte",
  "instructions": "Agrega esta etiqueta en todas las p\u00e1ginas que deseas medir. Configura correctamente el Endpoint y el Site ID proporcionados por Celer Media.",
  "author": "Celer Media",
  "version": "1.0.1"
}
