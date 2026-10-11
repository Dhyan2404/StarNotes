.class public Lorg/mortbay/jetty/security/HashSSORealm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/security/SSORealm;


# static fields
.field public static final SSO_COOKIE_NAME:Ljava/lang/String; = "SSO_ID"


# instance fields
.field public e:Ljava/util/HashMap;

.field public f:Ljava/util/HashMap;

.field public g:Ljava/util/HashMap;

.field public transient h:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->h:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public clearSingleSignOn(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->e:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashSSORealm;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashSSORealm;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Lorg/mortbay/jetty/security/Credential;
    .locals 5

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    array-length v2, p2

    if-ge v0, v2, :cond_1

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSO_ID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_1
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "get ssoID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->e:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Principal;

    iget-object v3, p0, Lorg/mortbay/jetty/security/HashSSORealm;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/security/Credential;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "SSO principal="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/Context;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v0

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3, p1}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    return-object v3

    :cond_4
    iget-object p1, p0, Lorg/mortbay/jetty/security/HashSSORealm;->e:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/mortbay/jetty/security/HashSSORealm;->g:Ljava/util/HashMap;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->f:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return-object v1

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V
    .locals 6

    iget-object p1, p0, Lorg/mortbay/jetty/security/HashSSORealm;->e:Ljava/util/HashMap;

    monitor-enter p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->h:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7

    rem-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1e

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashSSORealm;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "set ssoID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashSSORealm;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashSSORealm;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashSSORealm;->f:Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljavax/servlet/http/Cookie;

    const-string p1, "SSO_ID"

    invoke-direct {p0, p1, v0}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lorg/mortbay/jetty/Response;->addCookie(Ljavax/servlet/http/Cookie;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
