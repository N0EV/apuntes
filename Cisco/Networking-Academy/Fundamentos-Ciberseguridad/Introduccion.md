# Introducción
Introducción al curso de fundamentos de ciberseguridad.

INDICE

## 1.1 Amenazas
En el panorama digital actual, las organizaciones se enfrentan a un número de ciberamenazas en constante crecimiento. Para diseñar e implementar una estrategia de defensa sólida, el primer paso fundamental es identificar las vulnerabilidades existentes dentro de los **dominios de amenazas** de la empresa.

> [!TIP]
> **Concepto clave:** Un **dominio de amenaza** es cualquier área, entorno o activo bajo el control o protección de la organización que un atacante puede explotar para comprometer un sistema y acceder a él.

Los atacantes buscan constantemente brechas en estos dominios. Las intrusiones y vectores de ataque más comunes se pueden clasificar a través de los siguientes medios:

* **Acceso físico:** Entrada no autorizada a las instalaciones, salas de servidores o cableado.

* **Redes inalámbricas:** Señales Wi-Fi que se propagan fuera del perímetro seguro del edificio.

* **Conectividad de corto alcance:** Explotación de vulnerabilidades en tecnologías como Bluetooth o NFC.

* **Dispositivos de almacenamiento:** Uso de memorias USB o discos externos infectados con malware.

* **Archivos maliciosos:** Descarga o recepción de documentos comprometidos (ej. adjuntos en correos).

* **Aplicaciones en la nube:** Configuraciones incorrectas o fallos de seguridad en plataformas Cloud.

* **Ingeniería social en redes:** Uso de cuentas de redes sociales corporativas para engañar a los empleados.

### 1.1.1 Tipos
Agrupar las amenazas en categorías permite a las empresas evaluar qué tan probable es sufrir un ataque y calcular el impacto económico que causaría. De esta forma, se pueden priorizar los esfuerzos y el presupuesto en las áreas más críticas.

Los peligros a los que se enfrenta una organización se clasifican en las siguientes categorías:

* **Ataques de Software:** Acciones malintencionadas que usan código para dañar los sistemas.

    * **Denegación de Servicio (DoS):** Saturar un servidor para dejarlo inoperable.

    * **Virus informáticos:** Programas ocultos que infectan archivos y dañan el equipo.

* **Errores de Software:** Fallos de programación o descuidos técnicos sin mala intención.

    * **Cierres inesperados:** Aplicaciones que se cuelgan o se desconectan solas.

    * **Vulnerabilidades web (como XSS):** Agujeros de seguridad en el código o servidores de archivos desprotegidos.

* **Sabotaje:** Ataques dirigidos a destruir la reputación o la información de la empresa.

    * **Intrusiones en bases de datos:** Un atacante que logra entrar y robar o alterar los datos principales.

    * **Modificación de la web corporativa (Defacement):** Cambiar el aspecto de la página web para dañar la imagen pública.

* **Error Humano:** Fallos o descuidos involuntarios de los propios empleados.

    * **Despistes en la introducción de datos:** Borrar o modificar registros por equivocación.

    * **Malas configuraciones de red:** Dejar un Firewall mal configurado y abierto a internet por error.

* **Robo Físico:** Sustracción material de los equipos de la empresa.

    * **Pérdida de hardware corporativo:** Robar portátiles u ordenadores de salas que se quedaron abiertas o sin vigilancia.

* **Fallos de Hardware:** Roturas o averías en los componentes físicos de los equipos.

    * **Averías en el almacenamiento:** Discos duros que dejan de funcionar y provocan pérdida de datos.

* **Interrupción de Servicios:** Problemas en los suministros básicos necesarios para operar.

    * **Cortes de luz:** Apagones eléctricos que apagan los servidores de golpe.

    * **Inundaciones internas:** Daños por agua si los sistemas de aspersores contra incendios fallan y se activan por error.

* **Desastres Naturales:** Eventos climáticos o geológicos impredecibles que destruyen las instalaciones (como terremotos, tormentas o incendios).

### 1.1.2 Origen de las Amenazas: Internas vs. Externas

Las amenazas a la seguridad informática también se pueden clasificar según el entorno en el que se originan. Esta distinción ayuda a entender el perímetro de defensa que se debe reforzar:

* **Amenazas Internas:** Son aquellos riesgos que nacen dentro de la propia organización.

    * **Personal interno:** Empleados que actúan con mala intención (sabotaje) o cuyas cuentas han sido previamente comprometidas o robadas por un atacante externo.

    * **Socios y proveedores (Partners):** Organizaciones externas autorizadas que, debido a una mala configuración, exponen o filtran datos confidenciales de la empresa.
    
* **Amenazas Externas:** Son todos los peligros que provienen del exterior de la infraestructura corporativa.

    * **Vulnerabilidades explotadas:** Fallos de seguridad en los equipos o servidores conectados a internet que permiten el acceso no autorizado de hackers ajenos.

    * **Ingeniería social:** Técnicas de engaño y manipulación (como el Phishing) dirigidas a los empleados para conseguir que revelen credenciales o abran las puertas del sistema.

#### Diagrama de Origen de Amenazas

```mermaid
graph TD
    A[Clasificación por Origen] --> B(Amenazas Internas)
    A --> C(Amenazas Externas)

    B --> B1[Personal Interno]
    B --> B2[Socios y Proveedores]

    B1 --> B1a(Sabotaje o Empleados descontentos)
    B1 --> B1b(Cuentas corporativas robadas)
    B2 --> B2a(Filtración por descuido de partners)

    C --> C1[Vulnerabilidades de Red]
    C --> C2[Ingeniería Social]

    C1 --> C1a(Fallos en sistemas expuestos a Internet)
    C2 --> C2a(Engaños y Phishing a empleados)

    %% Estilos de la Tríada Cromática (Fondos suaves, texto oscuro legible)
    %% Nodo Principal: Azul Acero
    style A fill:#E0F2FE,stroke:#0284C7,stroke-width:2px,color:#000
    
    %% Ramas Internas: Terracota / Salmón Suave
    style B fill:#FFE4E6,stroke:#E11D48,stroke-width:2px,color:#000
    style B1 fill:#FFE4E6,stroke:#E11D48,stroke-width:1px,color:#000
    style B2 fill:#FFE4E6,stroke:#E11D48,stroke-width:1px,color:#000
    style B1a fill:#FFF1F2,stroke:#FDA4AF,stroke-width:1px,color:#000
    style B1b fill:#FFF1F2,stroke:#FDA4AF,stroke-width:1px,color:#000
    style B2a fill:#FFF1F2,stroke:#FDA4AF,stroke-width:1px,color:#000

    %% Ramas Externas: Verde Oliva / Menta Suave
    style C fill:#DCFCE7,stroke:#16A34A,stroke-width:2px,color:#000
    style C1 fill:#DCFCE7,stroke:#16A34A,stroke-width:1px,color:#000
    style C2 fill:#DCFCE7,stroke:#16A34A,stroke-width:1px,color:#000
    style C1a fill:#F0FDF4,stroke:#86EFAC,stroke-width:1px,color:#000
    style C2a fill:#F0FDF4,stroke:#86EFAC,stroke-width:1px,color:#000
```

### 1.1.3 El Dominio de Usuario y sus Riesgos
El **Dominio de Usuario** abarca a cualquier persona que tenga autorización para interactuar con los sistemas de información de una organización. Esto incluye a los empleados directos, personal contratado, clientes y socios comerciales (partners).

En el ámbito de la ciberseguridad, los usuarios son considerados universalmente como **el eslabón más débil de la cadena de defensa**. Al estar expuestos a engaños o cometer errores involuntarios, representan una de las mayores amenazas para mantener a salvo la **Tríada CIA**:

* **Confidencialidad:** Riesgo de filtración de datos privados a personas no autorizadas.

* **Integridad:** Riesgo de modificación, alteración o borrado accidental de la información.

* **Disponibilidad:** Riesgo de que los sistemas queden inoperables (por ejemplo, al ejecutar un virus por descuido).

Para entender cómo se vulnera este dominio en el día a día, a continuación se detallan las principales debilidades y malas prácticas asociadas a los usuarios:

* **Falta de concienciación en seguridad:** Ocurre cuando los empleados no conocen qué datos son confidenciales ni qué normas o herramientas existen para protegerlos.

* **Políticas de seguridad mal aplicadas:** De nada sirve tener normas si los usuarios no las comprenden o ignoran las consecuencias de saltárselas.

* **Robo y fuga de datos:** La extracción de información confidencial por parte de un usuario genera grandes pérdidas económicas, demandas legales y daños a la reputación de la empresa.

* **Descargas no autorizadas:** Muchos ataques ocurren porque los empleados bajan archivos personales (música, juegos, vídeos) o conectan memorias USB y discos externos personales en los equipos de la oficina.

* **Uso de VPNs no autorizadas:** Usar conexiones VPN externas sin permiso oculta el tráfico de red, lo que impide a los administradores supervisar si se está robando información de la empresa.

* **Navegación por sitios web inseguros:** Visitar páginas no permitidas expone al sistema a scripts maliciosos o complementos que pueden tomar el control del dispositivo o de su cámara web.

* **Destrucción de activos digitales:** Acciones (ya sean por sabotaje o por errores graves) que provocan la eliminación de sistemas, aplicaciones o datos críticos de la compañía.

### 1.1.4 A los dispositivos
