.class public Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/webapp/Configuration;


# instance fields
.field private _context:Lorg/mortbay/jetty/webapp/WebAppContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public configureWebApp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

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
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Configuring web-jetty.xml"

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "jetty6-web.xml"

    invoke-virtual {v0, v1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "jetty-web.xml"

    invoke-virtual {v0, v1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "web-jetty.xml"

    invoke-virtual {v0, v1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    :cond_4
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServerClasses()[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->setServerClasses([Ljava/lang/String;)V

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Configure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_5
    new-instance v2, Lorg/mortbay/xml/XmlConfiguration;

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/mortbay/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/mortbay/xml/XmlConfiguration;->configure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServerClasses()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->setServerClasses([Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServerClasses()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->setServerClasses([Ljava/lang/String;)V

    :cond_6
    throw v1

    :cond_7
    :goto_0
    return-void
.end method

.method public deconfigureWebApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object p0
.end method

.method public setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/JettyWebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-void
.end method
