.class public Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private m_ConnectionProtocol:Ljava/util/Properties;

.field private m_Driver:Ljava/sql/Driver;

.field private m_IsActive:Z

.field private m_PoolMinSize:I

.field private m_driver:Ljava/lang/String;

.field private m_pool:Ljava/util/Vector;

.field private m_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_Driver:Ljava/sql/Driver;

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_driver:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_url:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_PoolMinSize:I

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_ConnectionProtocol:Ljava/util/Properties;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_IsActive:Z

    return-void
.end method

.method private addConnection(Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private createConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_Driver:Ljava/sql/Driver;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_url:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_ConnectionProtocol:Ljava/util/Properties;

    invoke-interface {v0, v1, p0}, Ljava/sql/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->inUse()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->close()V

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->close()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public freeUnused()V
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->inUse()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->close()V

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized getConnection()Ljava/sql/Connection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_PoolMinSize:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->initializePool()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->inUse()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->setInUse(Z)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->createConnection()Ljava/sql/Connection;

    move-result-object v0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;-><init>(Ljava/sql/Connection;)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->setInUse(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasActiveConnections()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized initializePool()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_driver:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_url:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_PoolMinSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    :try_start_1
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Driver;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_Driver:Ljava/sql/Driver;

    invoke-static {v0}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectFactory$ConfigurationError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_IsActive:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->createConnection()Ljava/sql/Connection;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;-><init>(Ljava/sql/Connection;)V

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->addConnection(Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_PoolMinSize:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v0, v1, :cond_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_INVALID_DRIVER_NAME"

    invoke-static {v2, v1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_INVALID_DRIVER_NAME"

    invoke-static {v2, v1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_POOLSIZE_LESS_THAN_ONE"

    invoke-static {v2, v1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_NO_URL_SPECIFIED"

    invoke-static {v2, v1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_NO_DRIVER_NAME_SPECIFIED"

    invoke-static {v2, v1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_IsActive:Z

    return p0
.end method

.method public declared-synchronized releaseConnection(Ljava/sql/Connection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    if-ne v3, p1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Ljava/sql/Connection;->close()V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->setInUse(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized releaseConnectionOnError(Ljava/sql/Connection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {p1}, Ljava/sql/Connection;->close()V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_pool:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDriver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_driver:Ljava/lang/String;

    return-void
.end method

.method public setMinConnections(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_PoolMinSize:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_ConnectionProtocol:Ljava/util/Properties;

    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPoolEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_IsActive:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->freeUnused()V

    :cond_0
    return-void
.end method

.method public setProtocol(Ljava/util/Properties;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_ConnectionProtocol:Ljava/util/Properties;

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_url:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->m_ConnectionProtocol:Ljava/util/Properties;

    const-string v0, "user"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public testConnection()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->releaseConnection(Ljava/sql/Connection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method
