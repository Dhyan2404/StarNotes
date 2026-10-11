.class public Lorg/mortbay/jetty/security/HashUserRealm;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/security/UserRealm;
.implements Lorg/mortbay/jetty/security/SSORealm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/HashUserRealm$c;,
        Lorg/mortbay/jetty/security/HashUserRealm$a;,
        Lorg/mortbay/jetty/security/HashUserRealm$b;
    }
.end annotation


# static fields
.field public static final __SSO:Ljava/lang/String; = "org.mortbay.http.SSO"


# instance fields
.field protected _roles:Ljava/util/HashMap;

.field protected _users:Ljava/util/HashMap;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lorg/mortbay/resource/Resource;

.field public h:Lorg/mortbay/jetty/security/SSORealm;

.field public i:Lorg/mortbay/util/Scanner;

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->j:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->j:I

    .line 9
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->j:I

    .line 14
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->e:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/security/HashUserRealm;->setConfig(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lorg/mortbay/jetty/security/HashUserRealm;)Lorg/mortbay/resource/Resource;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->g:Lorg/mortbay/resource/Resource;

    return-object p0
.end method

.method public static synthetic g(Lorg/mortbay/jetty/security/HashUserRealm;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addUserToRole(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mortbay/jetty/security/HashUserRealm$a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/mortbay/jetty/security/HashUserRealm$a;->d(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public clearSingleSignOn(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->h:Lorg/mortbay/jetty/security/SSORealm;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/mortbay/jetty/security/SSORealm;->clearSingleSignOn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public disassociate(Ljava/security/Principal;)V
    .locals 0

    return-void
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStart()V

    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->i:Lorg/mortbay/util/Scanner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/util/Scanner;->stop()V

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HashUserRealm;->getRefreshInterval()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lorg/mortbay/util/Scanner;

    invoke-direct {v0}, Lorg/mortbay/util/Scanner;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->i:Lorg/mortbay/util/Scanner;

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HashUserRealm;->getRefreshInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->setScanInterval(I)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->g:Lorg/mortbay/resource/Resource;

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->i:Lorg/mortbay/util/Scanner;

    invoke-virtual {v1, v0}, Lorg/mortbay/util/Scanner;->setScanDirs(Ljava/util/List;)V

    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->i:Lorg/mortbay/util/Scanner;

    new-instance v1, Lorg/mortbay/jetty/security/b;

    invoke-direct {v1, p0}, Lorg/mortbay/jetty/security/b;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;)V

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->setFilenameFilter(Ljava/io/FilenameFilter;)V

    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->i:Lorg/mortbay/util/Scanner;

    new-instance v1, Lorg/mortbay/jetty/security/c;

    invoke-direct {v1, p0}, Lorg/mortbay/jetty/security/c;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;)V

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->addListener(Lorg/mortbay/util/Scanner$Listener;)V

    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->i:Lorg/mortbay/util/Scanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->setReportExistingFilesOnStartup(Z)V

    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->i:Lorg/mortbay/util/Scanner;

    invoke-virtual {v0, v1}, Lorg/mortbay/util/Scanner;->setRecursive(Z)V

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->i:Lorg/mortbay/util/Scanner;

    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->start()V

    :cond_1
    return-void
.end method

.method public doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->i:Lorg/mortbay/util/Scanner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/util/Scanner;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->i:Lorg/mortbay/util/Scanner;

    return-void
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getConfig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getConfigResource()Lorg/mortbay/resource/Resource;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->g:Lorg/mortbay/resource/Resource;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getPrincipal(Ljava/lang/String;)Ljava/security/Principal;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Principal;

    return-object p0
.end method

.method public getRefreshInterval()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->j:I

    return p0
.end method

.method public getSSORealm()Lorg/mortbay/jetty/security/SSORealm;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->h:Lorg/mortbay/jetty/security/SSORealm;

    return-object p0
.end method

.method public getSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Lorg/mortbay/jetty/security/Credential;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->h:Lorg/mortbay/jetty/security/SSORealm;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/mortbay/jetty/security/SSORealm;->getSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Lorg/mortbay/jetty/security/Credential;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized isUserInRole(Ljava/security/Principal;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lorg/mortbay/jetty/security/HashUserRealm$c;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mortbay/jetty/security/HashUserRealm$c;

    invoke-virtual {p1, p2}, Lorg/mortbay/jetty/security/HashUserRealm$c;->e(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_1
    instance-of v1, p1, Lorg/mortbay/jetty/security/HashUserRealm$b;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lorg/mortbay/jetty/security/HashUserRealm$b;

    invoke-static {v1}, Lorg/mortbay/jetty/security/HashUserRealm$b;->a(Lorg/mortbay/jetty/security/HashUserRealm$b;)Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v1

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashSet;

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit p0

    return v0

    :cond_3
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadConfig()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_roles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->g:Lorg/mortbay/resource/Resource;

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0, v2, v1}, Lorg/mortbay/jetty/security/HashUserRealm;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ", "

    invoke-direct {v1, v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/mortbay/jetty/security/HashUserRealm;->addUserToRole(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public logout(Ljava/security/Principal;)V
    .locals 0

    return-void
.end method

.method public popRole(Ljava/security/Principal;)Ljava/security/Principal;
    .locals 0

    check-cast p1, Lorg/mortbay/jetty/security/HashUserRealm$c;

    invoke-virtual {p1}, Lorg/mortbay/jetty/security/HashUserRealm$c;->d()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public pushRole(Ljava/security/Principal;Ljava/lang/String;)Ljava/security/Principal;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lorg/mortbay/jetty/security/HashUserRealm$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/mortbay/jetty/security/HashUserRealm$b;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;Lorg/mortbay/jetty/security/b;)V

    :cond_0
    new-instance v0, Lorg/mortbay/jetty/security/HashUserRealm$c;

    invoke-direct {v0, p0, p1, p2}, Lorg/mortbay/jetty/security/HashUserRealm$c;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;Ljava/security/Principal;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Ljava/security/Principal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    instance-of v0, p2, Lorg/mortbay/jetty/security/Password;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    new-instance v1, Lorg/mortbay/jetty/security/HashUserRealm$a;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p2, Lorg/mortbay/jetty/security/Password;

    invoke-direct {v1, p0, v2, p2}, Lorg/mortbay/jetty/security/HashUserRealm$a;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;Ljava/lang/String;Lorg/mortbay/jetty/security/Credential;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    :try_start_2
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    new-instance v1, Lorg/mortbay/jetty/security/HashUserRealm$a;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/mortbay/jetty/security/Credential;->getCredential(Ljava/lang/String;)Lorg/mortbay/jetty/security/Credential;

    move-result-object p2

    invoke-direct {v1, p0, v2, p2}, Lorg/mortbay/jetty/security/HashUserRealm$a;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;Ljava/lang/String;Lorg/mortbay/jetty/security/Credential;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reauthenticate(Ljava/security/Principal;)Z
    .locals 0

    check-cast p1, Lorg/mortbay/jetty/security/HashUserRealm$b;

    invoke-virtual {p1}, Lorg/mortbay/jetty/security/HashUserRealm$b;->c()Z

    move-result p0

    return p0
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->f:Ljava/lang/String;

    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->g:Lorg/mortbay/resource/Resource;

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HashUserRealm;->loadConfig()V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->e:Ljava/lang/String;

    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->j:I

    return-void
.end method

.method public setSSORealm(Lorg/mortbay/jetty/security/SSORealm;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->h:Lorg/mortbay/jetty/security/SSORealm;

    return-void
.end method

.method public setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->h:Lorg/mortbay/jetty/security/SSORealm;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/security/SSORealm;->setSingleSignOn(Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Ljava/security/Principal;Lorg/mortbay/jetty/security/Credential;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Realm["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm;->_users:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
