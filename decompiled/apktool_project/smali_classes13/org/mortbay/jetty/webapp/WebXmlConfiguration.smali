.class public Lorg/mortbay/jetty/webapp/WebXmlConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/webapp/Configuration;


# static fields
.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$java$util$EventListener:Ljava/lang/Class;

.field static synthetic class$org$mortbay$jetty$security$ConstraintMapping:Ljava/lang/Class;

.field static synthetic class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

.field static synthetic class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

.field static synthetic class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

.field static synthetic class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

.field static synthetic class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;


# instance fields
.field protected _constraintMappings:Ljava/lang/Object;

.field protected _context:Lorg/mortbay/jetty/webapp/WebAppContext;

.field protected _defaultWelcomeFileList:Z

.field protected _errorPages:Ljava/util/Map;

.field protected _filterMappings:Ljava/lang/Object;

.field protected _filters:Ljava/lang/Object;

.field protected _hasJSP:Z

.field protected _jspServletClass:Ljava/lang/String;

.field protected _jspServletName:Ljava/lang/String;

.field protected _listeners:Ljava/lang/Object;

.field protected _servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

.field protected _servletMappings:Ljava/lang/Object;

.field protected _servlets:Ljava/lang/Object;

.field protected _version:I

.field protected _welcomeFiles:Ljava/lang/Object;

.field protected _xmlParser:Lorg/mortbay/xml/XmlParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->webXmlParser()Lorg/mortbay/xml/XmlParser;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_xmlParser:Lorg/mortbay/xml/XmlParser;

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static webXmlParser()Lorg/mortbay/xml/XmlParser;
    .locals 14

    new-instance v0, Lorg/mortbay/xml/XmlParser;

    invoke-direct {v0}, Lorg/mortbay/xml/XmlParser;-><init>()V

    sget-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    const-string v2, "org.mortbay.jetty.webapp.WebAppContext"

    if-nez v1, :cond_0

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :cond_0
    const-string v3, "/javax/servlet/resources/web-app_2_2.dtd"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    sget-object v3, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v3, :cond_1

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :cond_1
    const-string v4, "/javax/servlet/resources/web-app_2_3.dtd"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    sget-object v4, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v4, :cond_2

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :cond_2
    const-string v5, "/javax/servlet/resources/jsp_2_0.xsd"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    sget-object v5, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v5, :cond_3

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :cond_3
    const-string v6, "/javax/servlet/resources/jsp_2_1.xsd"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    sget-object v6, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v6, :cond_4

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :cond_4
    const-string v7, "/javax/servlet/resources/j2ee_1_4.xsd"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    sget-object v7, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v7, :cond_5

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :cond_5
    const-string v8, "/javax/servlet/resources/web-app_2_4.xsd"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v8, :cond_6

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :cond_6
    const-string v9, "/javax/servlet/resources/web-app_2_5.xsd"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    sget-object v9, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v9, :cond_7

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :cond_7
    const-string v10, "/javax/servlet/resources/XMLSchema.dtd"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    sget-object v10, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v10, :cond_8

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :cond_8
    const-string v11, "/javax/servlet/resources/xml.xsd"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    sget-object v11, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v11, :cond_9

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :cond_9
    const-string v12, "/javax/servlet/resources/j2ee_web_services_client_1_1.xsd"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    sget-object v12, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v12, :cond_a

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :cond_a
    const-string v13, "/javax/servlet/resources/javaee_web_services_client_1_2.xsd"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v12

    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_b

    invoke-static {v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :cond_b
    const-string v2, "/javax/servlet/resources/datatypes.dtd"

    invoke-virtual {v13, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    const-string v13, "web-app_2_2.dtd"

    invoke-virtual {v0, v13, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v13, "-//Sun Microsystems, Inc.//DTD Web Application 2.2//EN"

    invoke-virtual {v0, v13, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "web.dtd"

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "web-app_2_3.dtd"

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "XMLSchema.dtd"

    invoke-virtual {v0, v1, v9}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "http://www.w3.org/2001/XMLSchema.dtd"

    invoke-virtual {v0, v1, v9}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "-//W3C//DTD XMLSCHEMA 200102//EN"

    invoke-virtual {v0, v1, v9}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "jsp_2_0.xsd"

    invoke-virtual {v0, v1, v4}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "http://java.sun.com/xml/ns/j2ee/jsp_2_0.xsd"

    invoke-virtual {v0, v1, v4}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "jsp_2_1.xsd"

    invoke-virtual {v0, v1, v5}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "http://java.sun.com/xml/ns/javaee/jsp_2_1.xsd"

    invoke-virtual {v0, v1, v5}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "j2ee_1_4.xsd"

    invoke-virtual {v0, v1, v6}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "http://java.sun.com/xml/ns/j2ee/j2ee_1_4.xsd"

    invoke-virtual {v0, v1, v6}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "web-app_2_4.xsd"

    invoke-virtual {v0, v1, v7}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd"

    invoke-virtual {v0, v1, v7}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "web-app_2_5.xsd"

    invoke-virtual {v0, v1, v8}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"

    invoke-virtual {v0, v1, v8}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "xml.xsd"

    invoke-virtual {v0, v1, v10}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "http://www.w3.org/2001/xml.xsd"

    invoke-virtual {v0, v1, v10}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "datatypes.dtd"

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "http://www.w3.org/2001/datatypes.dtd"

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "j2ee_web_services_client_1_1.xsd"

    invoke-virtual {v0, v1, v11}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "http://www.ibm.com/webservices/xsd/j2ee_web_services_client_1_1.xsd"

    invoke-virtual {v0, v1, v11}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "javaee_web_services_client_1_2.xsd"

    invoke-virtual {v0, v1, v12}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    const-string v1, "http://www.ibm.com/webservices/xsd/javaee_web_services_client_1_2.xsd"

    invoke-virtual {v0, v1, v12}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    return-object v0
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_xmlParser:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {v0, p1}, Lorg/mortbay/xml/XmlParser;->parse(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initialize(Lorg/mortbay/xml/XmlParser$Node;)V

    return-void
.end method

.method public configureClassLoader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public configureDefaults()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Cannot configure webapp after it is started"

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getDefaultsDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newSystemResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->configure(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_defaultWelcomeFileList:Z

    :cond_4
    return-void
.end method

.method public configureWebApp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Cannot configure webapp after it is started"

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->findWebXml()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->configure(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getOverrideDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newSystemResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_xmlParser:Lorg/mortbay/xml/XmlParser;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/mortbay/xml/XmlParser;->setValidating(Z)V

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->configure(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public deconfigureWebApp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/Context;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setEventListeners([Ljava/util/EventListener;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/ContextHandler;->setWelcomeFiles([Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/Context;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/Context;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/SecurityHandler;->setConstraintMappings([Lorg/mortbay/jetty/security/ConstraintMapping;)V

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->setErrorPages(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public findWebXml()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "web.xml"

    invoke-virtual {v0, v1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No WEB-INF/web.xml in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ". Serving files and default/dynamic servlets only"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getJSPServletName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/Context;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v0

    const-string v1, "test.jsp"

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletName:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletName:Ljava/lang/String;

    return-object p0
.end method

.method public getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object p0
.end method

.method public initContextParam(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4

    const-string v0, "param-name"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const-string v3, "param-value"

    invoke-virtual {p1, v3, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "ContextParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getInitParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public initDisplayName(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public initDistributable(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isDistributable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setDistributable(Z)V

    :cond_0
    return-void
.end method

.method public initErrorPage(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4

    const-string v0, "error-code"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v0, "exception-type"

    invoke-virtual {p1, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v3, "location"

    invoke-virtual {p1, v3, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    :cond_2
    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public initFilter(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 5

    const-string v0, "filter-name"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->newFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/servlet/Holder;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filters:Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filters:Ljava/lang/Object;

    :cond_0
    const-string p0, "filter-class"

    invoke-virtual {p1, p0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v3, p0}, Lorg/mortbay/jetty/servlet/Holder;->setClassName(Ljava/lang/String;)V

    :cond_1
    const-string p0, "init-param"

    invoke-virtual {p1, p0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mortbay/xml/XmlParser$Node;

    const-string v0, "param-name"

    invoke-virtual {p1, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const-string v4, "param-value"

    invoke-virtual {p1, v4, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lorg/mortbay/jetty/servlet/Holder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public initFilterMapping(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 6

    const-string v0, "filter-name"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-direct {v3}, Lorg/mortbay/jetty/servlet/FilterMapping;-><init>()V

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "url-pattern"

    invoke-virtual {p1, v4}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v5, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->setPathSpecs([Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "servlet-name"

    invoke-virtual {p1, v4}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v5, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->setServletNames([Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v4, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/jetty/servlet/Dispatcher;->type(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v0, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/servlet/FilterMapping;->setDispatches(I)V

    iget-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filterMappings:Ljava/lang/Object;

    invoke-static {p1, v3}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filterMappings:Ljava/lang/Object;

    return-void
.end method

.method public initJspConfig(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/mortbay/xml/XmlParser$Node;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v2}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "taglib"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initTagLib(Lorg/mortbay/xml/XmlParser$Node;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "jsp-property-group"

    invoke-virtual {p1, v1}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/xml/XmlParser$Node;

    const-string v3, "url-pattern"

    invoke-virtual {v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/xml/XmlParser$Node;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getJSPServletName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/ServletMapping;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public initListener(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "listener-class"

    invoke-virtual {p1, v2, v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->newListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/EventListener;

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Not an EventListener: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_listeners:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_listeners:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Could not instantiate listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public initLocaleEncodingList(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 5

    const-string v0, "locale-encoding-mapping"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    const-string v1, "locale"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const-string v4, "encoding"

    invoke-virtual {v0, v4, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initLoginConfig(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 9

    const-string v0, "auth-method"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2, v1}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    const-string v4, "FORM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Lorg/mortbay/jetty/security/FormAuthenticator;

    invoke-direct {v3}, Lorg/mortbay/jetty/security/FormAuthenticator;-><init>()V

    :goto_0
    move-object v0, v3

    goto :goto_2

    :cond_0
    const-string v4, "BASIC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lorg/mortbay/jetty/security/BasicAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/BasicAuthenticator;-><init>()V

    :goto_1
    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_2

    :cond_1
    const-string v4, "DIGEST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lorg/mortbay/jetty/security/DigestAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/DigestAuthenticator;-><init>()V

    goto :goto_1

    :cond_2
    const-string v4, "CLIENT_CERT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/ClientCertAuthenticator;-><init>()V

    goto :goto_1

    :cond_3
    const-string v4, "CLIENT-CERT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/ClientCertAuthenticator;-><init>()V

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "UNKNOWN AUTH METHOD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/jetty/servlet/Context;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/security/SecurityHandler;->setAuthenticator(Lorg/mortbay/jetty/security/Authenticator;)V

    move-object v3, v0

    :cond_5
    const-string v0, "realm-name"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/jetty/handler/AbstractHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/jetty/Server;->getUserRealms()[Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v4

    if-nez v0, :cond_6

    const-string v0, "default"

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v2, v1}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mortbay/jetty/servlet/Context;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v5

    move v6, v2

    :goto_4
    if-nez v5, :cond_8

    if-eqz v4, :cond_8

    array-length v7, v4

    if-ge v6, v7, :cond_8

    aget-object v7, v4, v6

    if-eqz v7, :cond_7

    invoke-interface {v7}, Lorg/mortbay/jetty/security/UserRealm;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    aget-object v5, v4, v6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    if-nez v5, :cond_9

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown realm: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Context;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object p0

    invoke-virtual {p0, v5}, Lorg/mortbay/jetty/security/SecurityHandler;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    :goto_5
    const-string p0, "form-login-config"

    invoke-virtual {p1, p0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object p0

    if-eqz p0, :cond_c

    if-nez v3, :cond_a

    const-string p0, "FORM Authentication miss-configured"

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    const-string p1, "form-login-page"

    invoke-virtual {p0, p1}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1, v2, v1}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/mortbay/jetty/security/FormAuthenticator;->setLoginPage(Ljava/lang/String;)V

    :cond_b
    const-string p1, "form-error-page"

    invoke-virtual {p0, p1}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0, v2, v1}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/mortbay/jetty/security/FormAuthenticator;->setErrorPage(Ljava/lang/String;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public initMimeConfig(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4

    const-string v0, "extension"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v3, "mime-type"

    invoke-virtual {p1, v3, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getMimeTypes()Lorg/mortbay/jetty/MimeTypes;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/jetty/MimeTypes;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initSecurityConstraint(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 10

    new-instance v0, Lorg/mortbay/jetty/security/Constraint;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/Constraint;-><init>()V

    :try_start_0
    const-string v1, "auth-constraint"

    invoke-virtual {p1, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/security/Constraint;->setAuthenticate(Z)V

    const-string v4, "role-name"

    invoke-virtual {v1, v4}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v5, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lorg/mortbay/util/LazyList;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/Constraint;->setRoles([Ljava/lang/String;)V

    :cond_1
    const-string v1, "user-data-constraint"

    invoke-virtual {p1, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v4, "transport-guarantee"

    invoke-virtual {v1, v4}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "NONE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "INTEGRAL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/security/Constraint;->setDataConstraint(I)V

    goto :goto_2

    :cond_3
    const-string v4, "CONFIDENTIAL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/security/Constraint;->setDataConstraint(I)V

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unknown user-data-constraint:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/security/Constraint;->setDataConstraint(I)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/security/Constraint;->setDataConstraint(I)V

    :cond_6
    :goto_2
    const-string v1, "web-resource-collection"

    invoke-virtual {p1, v1}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/xml/XmlParser$Node;

    const-string v4, "web-resource-name"

    invoke-virtual {v1, v4, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Constraint;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mortbay/jetty/security/Constraint;

    invoke-virtual {v5, v4}, Lorg/mortbay/jetty/security/Constraint;->setName(Ljava/lang/String;)V

    const-string v4, "url-pattern"

    invoke-virtual {v1, v4}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v6, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "http-method"

    invoke-virtual {v1, v7}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v8, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/mortbay/jetty/security/ConstraintMapping;

    invoke-direct {v9}, Lorg/mortbay/jetty/security/ConstraintMapping;-><init>()V

    invoke-virtual {v9, v8}, Lorg/mortbay/jetty/security/ConstraintMapping;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Lorg/mortbay/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lorg/mortbay/jetty/security/ConstraintMapping;->setConstraint(Lorg/mortbay/jetty/security/Constraint;)V

    iget-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    invoke-static {v8, v9}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    goto :goto_4

    :cond_9
    new-instance v7, Lorg/mortbay/jetty/security/ConstraintMapping;

    invoke-direct {v7}, Lorg/mortbay/jetty/security/ConstraintMapping;-><init>()V

    invoke-virtual {v7, v6}, Lorg/mortbay/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lorg/mortbay/jetty/security/ConstraintMapping;->setConstraint(Lorg/mortbay/jetty/security/Constraint;)V

    iget-object v6, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    invoke-static {v6, v7}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public initSecurityRole(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 0

    return-void
.end method

.method public initServlet(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 9

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "servlet-name"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v4, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v4}, Lorg/mortbay/jetty/servlet/ServletHandler;->newServletHolder()Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/mortbay/jetty/servlet/Holder;->setName(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servlets:Ljava/lang/Object;

    invoke-static {v5, v4}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servlets:Ljava/lang/Object;

    :cond_0
    const-string v5, "init-param"

    invoke-virtual {p1, v5}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mortbay/xml/XmlParser$Node;

    const-string v7, "param-name"

    invoke-virtual {v6, v7, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    const-string v8, "param-value"

    invoke-virtual {v6, v8, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lorg/mortbay/jetty/servlet/Holder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v5, "servlet-class"

    invoke-virtual {p1, v5, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_3

    const-string v6, "jsp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletName:Ljava/lang/String;

    iput-object v5, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletClass:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_hasJSP:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO JSP Support for {}, did not find {}"

    invoke-static {v1, v0, v5}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_hasJSP:Z

    const-string v5, "org.mortbay.servlet.NoJspServlet"

    iput-object v5, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletClass:Ljava/lang/String;

    :goto_1
    const-string v0, "scratchdir"

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/mortbay/jetty/servlet/Holder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?"

    const-string v1, "classpath"

    invoke-virtual {v4, v1}, Lorg/mortbay/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getClassPath()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "classpath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v4, v1, v0}, Lorg/mortbay/jetty/servlet/Holder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/servlet/Holder;->setClassName(Ljava/lang/String;)V

    :cond_4
    const-string v0, "jsp-file"

    invoke-virtual {p1, v0, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setForcedPath(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletClass:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/servlet/Holder;->setClassName(Ljava/lang/String;)V

    :cond_5
    const-string v0, "load-on-startup"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "Deprecated boolean load-on-startup.  Please use integer"

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitOrder(I)V

    goto :goto_3

    :cond_6
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Cannot parse load-on-startup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ". Please use integer"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_7
    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitOrder(I)V

    :cond_8
    :goto_3
    const-string v0, "security-role-ref"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v5, "role-name"

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v1, v5, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    const-string v6, "role-link"

    invoke-virtual {v1, v6, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "link role "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " to "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " for "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v4, v5, v6}, Lorg/mortbay/jetty/servlet/ServletHolder;->setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Ignored invalid security-role-ref element: servlet-name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string p0, "run-as"

    invoke-virtual {p1, p0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0, v5, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {v4, p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setRunAs(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public initServletMapping(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 5

    const-string v0, "servlet-name"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-direct {v3}, Lorg/mortbay/jetty/servlet/ServletMapping;-><init>()V

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "url-pattern"

    invoke-virtual {p1, v4}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v4, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v3, p1}, Lorg/mortbay/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    invoke-static {p1, v3}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    return-void
.end method

.method public initSessionConfig(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 2

    const-string v0, "session-timeout"

    invoke-virtual {p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Context;->getSessionHandler()Lorg/mortbay/jetty/servlet/SessionHandler;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/SessionHandler;->getSessionManager()Lorg/mortbay/jetty/SessionManager;

    move-result-object p0

    mul-int/lit8 p1, p1, 0x3c

    invoke-interface {p0, p1}, Lorg/mortbay/jetty/SessionManager;->setMaxInactiveInterval(I)V

    :cond_0
    return-void
.end method

.method public initTagLib(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4

    const-string v0, "taglib-uri"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const-string v3, "taglib-location"

    invoke-virtual {p1, v3, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setResourceAlias(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initWebXmlElement(Ljava/lang/String;Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "display-name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initDisplayName(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "description"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "context-param"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initContextParam(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "servlet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initServlet(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "servlet-mapping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initServletMapping(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "session-config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initSessionConfig(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "mime-mapping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initMimeConfig(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "welcome-file-list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initWelcomeFileList(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "locale-encoding-mapping-list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initLocaleEncodingList(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "error-page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initErrorPage(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "taglib"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initTagLib(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "jsp-config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initJspConfig(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "resource-ref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_14

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p1, "No implementation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string v0, "security-constraint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initSecurityConstraint(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    :cond_d
    const-string v0, "login-config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initLoginConfig(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    :cond_e
    const-string v0, "security-role"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initSecurityRole(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    :cond_f
    const-string v0, "filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initFilter(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    :cond_10
    const-string v0, "filter-mapping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initFilterMapping(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    :cond_11
    const-string v0, "listener"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initListener(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    :cond_12
    const-string v0, "distributable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initDistributable(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    :cond_13
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "Element {} not handled in {}"

    invoke-static {v0, p1, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_14
    :goto_0
    return-void
.end method

.method public initWelcomeFileList(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 3

    iget-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_defaultWelcomeFileList:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_defaultWelcomeFileList:Z

    const-string v1, "welcome-file"

    invoke-virtual {p1, v1}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/xml/XmlParser$Node;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public initialize(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/Context;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filters:Ljava/lang/Object;

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filterMappings:Ljava/lang/Object;

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servlets:Ljava/lang/Object;

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_listeners:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getWelcomeFiles()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/Context;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SecurityHandler;->getConstraintMappings()[Lorg/mortbay/jetty/security/ConstraintMapping;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->getErrorPages()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    const-string v0, "version"

    const-string v2, "DTD"

    invoke-virtual {p1, v0, v2}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "2.5"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x19

    iput v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_version:I

    goto :goto_1

    :cond_1
    const-string v3, "2.4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v0, 0x18

    iput v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_version:I

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x17

    iput v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_version:I

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_xmlParser:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser;->getDTD()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "web-app_2_2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    const/16 v0, 0x16

    iput v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_version:I

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/mortbay/xml/XmlParser$Node;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initWebXmlElement(Ljava/lang/String;Lorg/mortbay/xml/XmlParser$Node;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_3
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Configuration problem at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    new-instance p0, Ljavax/servlet/UnavailableException;

    const-string p1, "Configuration problem"

    invoke-direct {p0, p1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    throw p0

    :cond_5
    iget-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filters:Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    if-nez v1, :cond_6

    const-string v1, "org.mortbay.jetty.servlet.FilterHolder"

    invoke-static {v1}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    :cond_6
    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    iget-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filterMappings:Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    if-nez v1, :cond_7

    const-string v1, "org.mortbay.jetty.servlet.FilterMapping"

    invoke-static {v1}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    :cond_7
    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    iget-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servlets:Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "org.mortbay.jetty.servlet.ServletHolder"

    invoke-static {v1}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    :cond_8
    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    iget-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    if-nez v1, :cond_9

    const-string v1, "org.mortbay.jetty.servlet.ServletMapping"

    invoke-static {v1}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    :cond_9
    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p1

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_listeners:Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$util$EventListener:Ljava/lang/Class;

    if-nez v1, :cond_a

    const-string v1, "java.util.EventListener"

    invoke-static {v1}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$util$EventListener:Ljava/lang/Class;

    :cond_a
    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    check-cast v0, [Ljava/util/EventListener;

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->setEventListeners([Ljava/util/EventListener;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p1

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_b

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    :cond_b
    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->setWelcomeFiles([Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/Context;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object p1

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    sget-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$security$ConstraintMapping:Ljava/lang/Class;

    if-nez v1, :cond_c

    const-string v1, "org.mortbay.jetty.security.ConstraintMapping"

    invoke-static {v1}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$security$ConstraintMapping:Ljava/lang/Class;

    :cond_c
    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/security/ConstraintMapping;

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/security/SecurityHandler;->setConstraintMappings([Lorg/mortbay/jetty/security/ConstraintMapping;)V

    iget-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object p1

    instance-of p1, p1, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object p1

    check-cast p1, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->setErrorPages(Ljava/util/Map;)V

    :cond_d
    return-void
.end method

.method public newListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public normalizePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-void
.end method
