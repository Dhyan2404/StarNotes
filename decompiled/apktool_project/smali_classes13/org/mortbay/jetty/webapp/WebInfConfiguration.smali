.class public Lorg/mortbay/jetty/webapp/WebInfConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/webapp/Configuration;


# instance fields
.field protected _context:Lorg/mortbay/jetty/webapp/WebAppContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configureClassLoader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

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
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    instance-of v1, v1, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    if-eqz v1, :cond_4

    const-string v1, "classes/"

    invoke-virtual {v0, v1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addClassPath(Ljava/lang/String;)V

    :cond_2
    const-string v1, "lib/"

    invoke-virtual {v0, v1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addJars(Lorg/mortbay/resource/Resource;)V

    :cond_4
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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

    iget-object p0, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object p0
.end method

.method public setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-void
.end method
