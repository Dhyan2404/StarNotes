.class public abstract Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/SessionIdManager;


# static fields
.field public static final e:Ljava/lang/String; = "org.mortbay.jetty.newSessionId"


# instance fields
.field protected _random:Ljava/util/Random;

.field protected _server:Lorg/mortbay/jetty/Server;

.field protected _weakRandom:Z

.field protected _workerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/Server;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_server:Lorg/mortbay/jetty/Server;

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/Server;Ljava/util/Random;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 4
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 5
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_server:Lorg/mortbay/jetty/Server;

    return-void
.end method


# virtual methods
.method public doStart()V
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->initRandom()V

    return-void
.end method

.method public getRandom()Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    return-object p0
.end method

.method public getWorkerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    return-object p0
.end method

.method public initRandom()V
    .locals 5

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not generate SecureRandom for session-id randomness"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long v3, p0

    xor-long/2addr v1, v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method

.method public newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p0, p2}, Lorg/mortbay/jetty/SessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/mortbay/jetty/SessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    monitor-exit p0

    return-object p2

    :cond_0
    const-string p2, "org.mortbay.jetty.newSessionId"

    invoke-interface {p1, p2}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-interface {p0, p2}, Lorg/mortbay/jetty/SessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    monitor-exit p0

    return-object p2

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0, p2}, Lorg/mortbay/jetty/SessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const-string p3, "org.mortbay.jetty.newSessionId"

    invoke-interface {p1, p3, p2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit p0

    return-object p2

    :cond_4
    :goto_1
    iget-boolean p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z

    const/16 p3, 0x20

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v0, p2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-object p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result p2

    int-to-long v2, p2

    xor-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v2, p2

    shl-long/2addr v2, p3

    xor-long/2addr v0, v2

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    :goto_2
    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_6

    neg-long v0, v0

    :cond_6
    iget-boolean p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v4, p2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    xor-long/2addr v4, v6

    iget-object p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result p2

    int-to-long v6, p2

    xor-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v6, p2

    shl-long p2, v6, p3

    xor-long/2addr p2, v4

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p2

    :goto_3
    cmp-long v2, p2, v2

    if-gez v2, :cond_8

    neg-long p2, p2

    :cond_8
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x24

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2, p3, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRandom(Ljava/util/Random;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_random:Ljava/util/Random;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_weakRandom:Z

    return-void
.end method

.method public setWorkerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    return-void
.end method
