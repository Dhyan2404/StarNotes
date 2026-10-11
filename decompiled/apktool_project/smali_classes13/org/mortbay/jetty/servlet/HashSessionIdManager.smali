.class public Lorg/mortbay/jetty/servlet/HashSessionIdManager;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/SessionIdManager;


# static fields
.field public static final h:Ljava/lang/String; = "org.mortbay.jetty.newSessionId"


# instance fields
.field protected _random:Ljava/util/Random;

.field public e:Lorg/mortbay/util/MultiMap;

.field public f:Z

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public addSession(Ljavax/servlet/http/HttpSession;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->e:Lorg/mortbay/util/MultiMap;

    invoke-interface {p1}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public doStart()V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "Init SecureRandom."

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not generate SecureRandom for session-id randomness"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->f:Z

    :cond_0
    :goto_0
    new-instance v0, Lorg/mortbay/util/MultiMap;

    invoke-direct {v0}, Lorg/mortbay/util/MultiMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->e:Lorg/mortbay/util/MultiMap;

    return-void
.end method

.method public doStop()V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->e:Lorg/mortbay/util/MultiMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->e:Lorg/mortbay/util/MultiMap;

    return-void
.end method

.method public getClusterId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "org.mortbay.http.ajp.JVMRoute"

    invoke-interface {p2, v0}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_0
    const/16 v0, 0x2e

    if-eqz p2, :cond_1

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p2, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->g:Ljava/lang/String;

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->g:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public getRandom()Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    return-object p0
.end method

.method public getWorkerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->g:Ljava/lang/String;

    return-object p0
.end method

.method public idInUse(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->e:Lorg/mortbay/util/MultiMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public invalidateAll(Ljava/lang/String;)V
    .locals 2

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->e:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->e:Lorg/mortbay/util/MultiMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mortbay/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->e:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v1, p1, v0}, Lorg/mortbay/util/MultiMap;->removeValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->invalidate()V

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->idInUse(Ljava/lang/String;)Z

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

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    monitor-exit p0

    return-object p2

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->g:Ljava/lang/String;

    if-eqz p3, :cond_3

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->g:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    const-string p3, "org.mortbay.jetty.newSessionId"

    invoke-interface {p1, p3, p2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit p0

    return-object p2

    :cond_4
    :goto_1
    iget-boolean p2, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->f:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long p2, p2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    xor-long/2addr p2, v0

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    xor-long/2addr p2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    xor-long/2addr p2, v0

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p2

    :goto_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_6

    neg-long p2, p2

    :cond_6
    cmp-long v2, v0, v2

    if-gez v2, :cond_7

    neg-long v0, v0

    :cond_7
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x24

    invoke-static {p2, p3, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeSession(Ljavax/servlet/http/HttpSession;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->e:Lorg/mortbay/util/MultiMap;

    invoke-interface {p1}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/MultiMap;->removeValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRandom(Ljava/util/Random;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->_random:Ljava/util/Random;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->f:Z

    return-void
.end method

.method public setWorkerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionIdManager;->g:Ljava/lang/String;

    return-void
.end method
