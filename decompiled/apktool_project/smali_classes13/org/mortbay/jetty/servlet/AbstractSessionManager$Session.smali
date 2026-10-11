.class public abstract Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/servlet/AbstractSessionManager$SessionIf;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/AbstractSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Session"
.end annotation


# instance fields
.field protected _accessed:J

.field protected final _clusterId:Ljava/lang/String;

.field protected _cookieSet:J

.field protected final _created:J

.field protected _doInvalidate:Z

.field protected _idChanged:Z

.field protected _invalid:Z

.field protected _lastAccessed:J

.field protected _maxIdleMs:J

.field protected _newSession:Z

.field protected final _nodeId:Ljava/lang/String;

.field protected _requests:I

.field protected _values:Ljava/util/Map;

.field private final synthetic this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/AbstractSessionManager;JLjava/lang/String;)V
    .locals 2

    .line 9
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget v0, p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_maxIdleMs:J

    .line 11
    iput-wide p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_created:J

    .line 12
    iput-object p4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_clusterId:Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    const/4 v0, 0x0

    invoke-interface {p1, p4, v0}, Lorg/mortbay/jetty/SessionIdManager;->getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_nodeId:Ljava/lang/String;

    .line 14
    iput-wide p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/servlet/AbstractSessionManager;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_dftMaxIdleSecs:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_maxIdleMs:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_newSession:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_created:J

    .line 5
    iget-object v3, p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-interface {v3, p2, v1, v2}, Lorg/mortbay/jetty/SessionIdManager;->newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_clusterId:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionIdManager:Lorg/mortbay/jetty/SessionIdManager;

    invoke-interface {p1, v3, p2}, Lorg/mortbay/jetty/SessionIdManager;->getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_nodeId:Ljava/lang/String;

    .line 7
    iput-wide v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    .line 8
    iput v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    return-void
.end method


# virtual methods
.method public access(J)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_newSession:Z

    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_lastAccessed:J

    iput-wide p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    iget p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bindValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    instance-of v0, p2, Ljavax/servlet/http/HttpSessionBindingListener;

    if-eqz v0, :cond_0

    check-cast p2, Ljavax/servlet/http/HttpSessionBindingListener;

    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpSessionBindingListener;->valueBound(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    :cond_0
    return-void
.end method

.method public complete()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    iget-boolean v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_doInvalidate:Z

    if-eqz v1, :cond_0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->doInvalidate()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cookieSet()V
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_accessed:J

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_cookieSet:J

    return-void
.end method

.method public declared-synchronized didActivate()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v0, p0}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljavax/servlet/http/HttpSessionActivationListener;

    if-eqz v3, :cond_0

    check-cast v2, Ljavax/servlet/http/HttpSessionActivationListener;

    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionActivationListener;->sessionDidActivate(Ljavax/servlet/http/HttpSessionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doInvalidate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, v2, v3}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->unbindValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v4, v4, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    if-eqz v4, :cond_1

    new-instance v4, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v4, p0, v2, v3}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v3, v3, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v3}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v3, v3, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v3, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/http/HttpSessionAttributeListener;

    invoke-interface {v3, v4}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeRemoved(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_2
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    return-void

    :cond_3
    :try_start_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    throw v1
.end method

.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAttributeNames()Ljava/util/Enumeration;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getClusterId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_clusterId:Ljava/lang/String;

    return-object p0
.end method

.method public getCookieSetTime()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_cookieSet:J

    return-wide v0
.end method

.method public getCreationTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_created:J

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-boolean v0, v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_nodeIdInSessionId:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_nodeId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_clusterId:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getLastAccessedTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_lastAccessed:J

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getMaxInactiveInterval()I
    .locals 4

    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_maxIdleMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_nodeId:Ljava/lang/String;

    return-object p0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object p0
.end method

.method public getSession()Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;
    .locals 0

    return-object p0
.end method

.method public getSessionContext()Ljavax/servlet/http/HttpSessionContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez p0, :cond_0

    invoke-static {}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->f()Ljavax/servlet/http/HttpSessionContext;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getValueNames()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initValues()V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->newAttributeMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    return-void
.end method

.method public invalidate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->removeSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->doInvalidate()V

    return-void
.end method

.method public isIdChanged()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_idChanged:Z

    return p0
.end method

.method public isNew()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_newSession:Z

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public isValid()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract newAttributeMap()Ljava/util/Map;
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->unbindValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v1, v1, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    if-eqz v1, :cond_1

    new-instance v1, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v1, p0, p1, v0}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpSessionAttributeListener;

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeRemoved(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->newAttributeMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->unbindValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->bindValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object v1, v1, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    if-eqz v1, :cond_5

    new-instance v1, Ljavax/servlet/http/HttpSessionBindingEvent;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, v0

    :goto_0
    invoke-direct {v1, p0, p1, p2}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object p2, p2, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {p2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p2

    if-ge p1, p2, :cond_5

    iget-object p2, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    iget-object p2, p2, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->_sessionAttributeListeners:Ljava/lang/Object;

    invoke-static {p2, p1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/servlet/http/HttpSessionAttributeListener;

    if-nez v0, :cond_4

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeAdded(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    goto :goto_2

    :cond_4
    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeReplaced(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIdChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_idChanged:Z

    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_maxIdleMs:J

    return-void
.end method

.method public timeout()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->this$0:Lorg/mortbay/jetty/servlet/AbstractSessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/mortbay/jetty/servlet/AbstractSessionManager;->removeSession(Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;Z)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_invalid:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_requests:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->doInvalidate()V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_doInvalidate:Z

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unbindValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    instance-of v0, p2, Ljavax/servlet/http/HttpSessionBindingListener;

    if-eqz v0, :cond_0

    check-cast p2, Ljavax/servlet/http/HttpSessionBindingListener;

    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpSessionBindingListener;->valueUnbound(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized willPassivate()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/servlet/http/HttpSessionEvent;

    invoke-direct {v0, p0}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/AbstractSessionManager$Session;->_values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljavax/servlet/http/HttpSessionActivationListener;

    if-eqz v3, :cond_0

    check-cast v2, Ljavax/servlet/http/HttpSessionActivationListener;

    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpSessionActivationListener;->sessionWillPassivate(Ljavax/servlet/http/HttpSessionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
