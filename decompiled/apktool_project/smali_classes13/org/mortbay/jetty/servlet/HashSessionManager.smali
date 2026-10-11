.class public Lorg/mortbay/jetty/servlet/HashSessionManager;
.super Lorg/mortbay/jetty/servlet/AbstractSessionManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/HashSessionManager$ClassLoadingObjectInputStream;,
        Lorg/mortbay/jetty/servlet/HashSessionManager$Session;
    }
.end annotation


# instance fields
.field protected _sessions:Ljava/util/Map;

.field public g:Ljava/util/Timer;

.field public h:Ljava/util/TimerTask;

.field public i:I

.field public j:I

.field public k:Ljava/util/TimerTask;

.field public l:Ljava/io/File;

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->j:I

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->m:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->n:Z

    return-void
.end method

.method public static synthetic g(Lorg/mortbay/jetty/servlet/HashSessionManager;)V
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->j()V

    return-void
.end method

.method public static synthetic h(Lorg/mortbay/jetty/servlet/HashSessionManager;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->i:I

    return p0
.end method

.method public static synthetic i(Lorg/mortbay/jetty/servlet/HashSessionManager;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public addSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;)V
    .locals 1

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-super {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->doStart()V

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->g:Ljava/util/Timer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->getScavengePeriod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->setScavengePeriod(I)V

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->restoreSessions()V

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->getSavePeriod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->setSavePeriod(I)V

    return-void
.end method

.method public doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->saveSessions()V

    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->doStop()V

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->k:Ljava/util/TimerTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->h:Ljava/util/TimerTask;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->g:Ljava/util/Timer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    :cond_3
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->g:Ljava/util/Timer;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSavePeriod()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->j:I

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public getScavengePeriod()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->i:I

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public getSession(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->restoreSessions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    return-object p0
.end method

.method public getSessionMap()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSessions()I
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public getStoreDirectory()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    return-object p0
.end method

.method public invalidateSessions()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isLazyLoad()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->m:Z

    return p0
.end method

.method public final j()V
    .locals 13

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStopping()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_loader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->n:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->m:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->restoreSessions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    invoke-static {v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    iget-wide v9, v6, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_maxIdleMs:J

    cmp-long v7, v9, v7

    if-lez v7, :cond_3

    iget-wide v7, v6, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    add-long/2addr v7, v9

    cmp-long v7, v7, v2

    if-gez v7, :cond_3

    invoke-static {v5, v6}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_6

    invoke-static {v5, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    iget-wide v9, v2, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_maxIdleMs:J

    cmp-long v4, v9, v7

    if-lez v4, :cond_5

    iget-wide v11, v2, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    add-long/2addr v11, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v4, v11, v9

    if-gez v4, :cond_5

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->timeout()V

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_minSessions:I

    if-ge v2, v4, :cond_5

    iput v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_minSessions:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    move v2, v3

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_7
    instance-of v2, p0, Ljava/lang/ThreadDeath;

    if-nez v2, :cond_7

    const-string v2, "Problem scavenging sessions"

    invoke-static {v2, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-void

    :cond_7
    :try_start_8
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method public newSession(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    .locals 1

    new-instance v0, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;-><init>(Lorg/mortbay/jetty/servlet/HashSessionManager;Ljavax/servlet/http/HttpServletRequest;)V

    return-object v0
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public restoreSession(Ljava/io/FileInputStream;)Lorg/mortbay/jetty/servlet/HashSessionManager$Session;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    new-instance v7, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    invoke-direct {v7, p0, v1, v2, p1}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;-><init>(Lorg/mortbay/jetty/servlet/HashSessionManager;JLjava/lang/String;)V

    iput-wide v3, v7, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_cookieSet:J

    iput-wide v5, v7, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_lastAccessed:J

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    if-lez p1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/mortbay/jetty/servlet/HashSessionManager$ClassLoadingObjectInputStream;

    invoke-direct {v3, p0, v0}, Lorg/mortbay/jetty/servlet/HashSessionManager$ClassLoadingObjectInputStream;-><init>(Lorg/mortbay/jetty/servlet/HashSessionManager;Ljava/io/InputStream;)V

    :goto_1
    if-ge v2, p1, :cond_1

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4, p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->initValues()V

    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v7
.end method

.method public restoreSessions()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unable to restore Sessions: Cannot read from Session storage directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_2

    array-length v3, v0

    if-ge v2, v3, :cond_2

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/servlet/HashSessionManager;->restoreSession(Ljava/io/FileInputStream;)Lorg/mortbay/jetty/servlet/HashSessionManager$Session;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p0, v4, v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->addSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Problem restoring session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->n:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public saveSessions()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unable to save Sessions: Session persistence storage directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " is not writeable"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v4}, Lorg/mortbay/jetty/servlet/HashSessionManager$Session;->save(Ljava/io/FileOutputStream;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Problem persisting session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public setLazyLoad(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->m:Z

    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->setMaxInactiveInterval(I)V

    iget p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    if-lez p1, :cond_0

    iget v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->i:I

    mul-int/lit16 v1, p1, 0x3e8

    if-le v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0xa

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/HashSessionManager;->setScavengePeriod(I)V

    :cond_0
    return-void
.end method

.method public setSavePeriod(I)V
    .locals 6

    mul-int/lit16 p1, p1, 0x3e8

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->j:I

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->g:Ljava/util/Timer;

    if-eqz p1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->k:Ljava/util/TimerTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    iget p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->j:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    if-eqz p1, :cond_2

    new-instance v1, Lorg/mortbay/jetty/servlet/b;

    invoke-direct {v1, p0}, Lorg/mortbay/jetty/servlet/b;-><init>(Lorg/mortbay/jetty/servlet/HashSessionManager;)V

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->k:Ljava/util/TimerTask;

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->g:Ljava/util/Timer;

    iget p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->j:I

    int-to-long v2, p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public setScavengePeriod(I)V
    .locals 6

    if-nez p1, :cond_0

    const/16 p1, 0x3c

    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->i:I

    const/16 v1, 0x3e8

    mul-int/2addr p1, v1

    const v2, 0xea60

    if-le p1, v2, :cond_1

    move p1, v2

    :cond_1
    if-ge p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    iput v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->i:I

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->g:Ljava/util/Timer;

    if-eqz p1, :cond_5

    if-ne v1, v0, :cond_3

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->h:Ljava/util/TimerTask;

    if-nez p1, :cond_5

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->h:Ljava/util/TimerTask;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    :cond_4
    new-instance v1, Lorg/mortbay/jetty/servlet/c;

    invoke-direct {v1, p0}, Lorg/mortbay/jetty/servlet/c;-><init>(Lorg/mortbay/jetty/servlet/HashSessionManager;)V

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->h:Ljava/util/TimerTask;

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->g:Ljava/util/Timer;

    iget p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->i:I

    int-to-long v2, p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public setStoreDirectory(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager;->l:Ljava/io/File;

    return-void
.end method
