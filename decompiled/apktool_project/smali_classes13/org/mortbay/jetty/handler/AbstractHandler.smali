.class public abstract Lorg/mortbay/jetty/handler/AbstractHandler;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/Handler;


# instance fields
.field private _server:Lorg/mortbay/jetty/Server;

.field protected _string:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_server:Lorg/mortbay/jetty/Server;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mortbay/component/Container;->removeBean(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "!STOPPED"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "starting {}"

    invoke-static {v0, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "stopping {}"

    invoke-static {v0, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getServer()Lorg/mortbay/jetty/Server;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_server:Lorg/mortbay/jetty/Server;

    return-object p0
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_server:Lorg/mortbay/jetty/Server;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/mortbay/component/Container;->removeBean(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_server:Lorg/mortbay/jetty/Server;

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/mortbay/component/Container;->addBean(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_string:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_string:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_string:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/handler/AbstractHandler;->_string:Ljava/lang/String;

    return-object p0
.end method
