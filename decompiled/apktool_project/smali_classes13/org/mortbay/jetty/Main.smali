.class public Lorg/mortbay/jetty/Main;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9

    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    array-length v0, p0

    if-le v0, v1, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage - java org.mortbay.jetty.Main [<addr>:]<port>"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage - java org.mortbay.jetty.Main [<addr>:]<port> docroot"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage - java org.mortbay.jetty.Main [<addr>:]<port> -webapp myapp.war"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage - java org.mortbay.jetty.Main [<addr>:]<port> -webapps webapps"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage - java -jar jetty-x.x.x-standalone.jar [<addr>:]<port>"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage - java -jar jetty-x.x.x-standalone.jar [<addr>:]<port> docroot"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage - java -jar jetty-x.x.x-standalone.jar [<addr>:]<port> -webapp myapp.war"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage - java -jar jetty-x.x.x-standalone.jar [<addr>:]<port> -webapps webapps"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_1
    :try_start_0
    new-instance v0, Lorg/mortbay/jetty/Server;

    invoke-direct {v0}, Lorg/mortbay/jetty/Server;-><init>()V

    new-instance v3, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-direct {v3}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;-><init>()V

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    new-instance v4, Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-direct {v4}, Lorg/mortbay/jetty/bio/SocketConnector;-><init>()V

    const/4 v5, 0x0

    aget-object v6, p0, v5

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-gez v7, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/mortbay/jetty/AbstractConnector;->setPort(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/mortbay/jetty/AbstractConnector;->setHost(Ljava/lang/String;)V

    add-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/mortbay/jetty/AbstractConnector;->setPort(I)V

    :goto_0
    new-array v6, v2, [Lorg/mortbay/jetty/Connector;

    aput-object v4, v6, v5

    invoke-virtual {v0, v6}, Lorg/mortbay/jetty/Server;->setConnectors([Lorg/mortbay/jetty/Connector;)V

    array-length v4, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "/"

    if-ge v4, v1, :cond_4

    :try_start_1
    new-instance v1, Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-direct {v1}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>()V

    invoke-virtual {v1, v5}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    array-length v4, p0

    if-ne v4, v2, :cond_3

    const-string p0, "."

    goto :goto_1

    :cond_3
    aget-object p0, p0, v2

    :goto_1
    invoke-virtual {v1, p0}, Lorg/mortbay/jetty/handler/ContextHandler;->setResourceBase(Ljava/lang/String;)V

    new-instance p0, Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;-><init>()V

    const-string v2, "org.mortbay.jetty.servlet.DefaultServlet"

    invoke-virtual {p0, v2, v5}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v1, p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->setHandler(Lorg/mortbay/jetty/Handler;)V

    invoke-virtual {v3, v1}, Lorg/mortbay/jetty/handler/HandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V

    goto :goto_2

    :cond_4
    const-string v1, "-webapps"

    aget-object v4, p0, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_5

    aget-object p0, p0, v4

    const-string v1, "org/mortbay/jetty/webapp/webdefault.xml"

    invoke-static {v0, p0, v1, v2, v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->addWebApplications(Lorg/mortbay/jetty/Server;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_5
    const-string v1, "-webapp"

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-direct {v1}, Lorg/mortbay/jetty/webapp/WebAppContext;-><init>()V

    aget-object p0, p0, v4

    invoke-virtual {v1, p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/mortbay/jetty/handler/HandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "EXCEPTION "

    invoke-static {v0, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
