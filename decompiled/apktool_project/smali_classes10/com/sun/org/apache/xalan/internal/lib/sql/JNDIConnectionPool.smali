.class public Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;


# instance fields
.field private getConnection:Ljava/lang/reflect/Method;

.field private getConnectionWithArgs:Ljava/lang/reflect/Method;

.field protected jdbcSource:Ljava/lang/Object;

.field protected jndiPath:Ljava/lang/String;

.field protected pwd:Ljava/lang/String;

.field protected user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jdbcSource:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->getConnectionWithArgs:Ljava/lang/reflect/Method;

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->getConnection:Ljava/lang/reflect/Method;

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jndiPath:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->user:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->pwd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jdbcSource:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->getConnectionWithArgs:Ljava/lang/reflect/Method;

    .line 11
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->getConnection:Ljava/lang/reflect/Method;

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jndiPath:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->user:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->pwd:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jndiPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findDatasource()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    const-string v0, "getConnection"

    const-class v1, Ljava/lang/String;

    :try_start_0
    new-instance v2, Ljavax/naming/InitialContext;

    invoke-direct {v2}, Ljavax/naming/InitialContext;-><init>()V

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jndiPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavax/naming/InitialContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jdbcSource:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->getConnectionWithArgs:Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Class;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jdbcSource:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->getConnection:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/naming/NamingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to resolve JNDI DataSource - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public freeUnused()V
    .locals 0

    return-void
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jdbcSource:Ljava/lang/Object;

    const-string v1, " - "

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->findDatasource()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create jndi context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jndiPath:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/naming/NamingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->user:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->pwd:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->getConnection:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jdbcSource:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    return-object v0

    :cond_2
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->pwd:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->getConnectionWithArgs:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jdbcSource:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create jndi connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jndiPath:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getJndiPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jndiPath:Ljava/lang/String;

    return-object p0
.end method

.method public hasActiveConnections()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public releaseConnection(Ljava/sql/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/sql/Connection;->close()V

    return-void
.end method

.method public releaseConnectionOnError(Ljava/sql/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/sql/Connection;->close()V

    return-void
.end method

.method public setDriver(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "This method is not supported. All connection information is handled by the JDBC datasource provider"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setJndiPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jndiPath:Ljava/lang/String;

    return-void
.end method

.method public setMinConnections(I)V
    .locals 0

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->pwd:Ljava/lang/String;

    return-void
.end method

.method public setPoolEnabled(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jdbcSource:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setProtocol(Ljava/util/Properties;)V
    .locals 0

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/Error;

    const-string p1, "This method is not supported. All connection information is handled by the JDBC datasource provider"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->user:Ljava/lang/String;

    return-void
.end method

.method public testConnection()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->jdbcSource:Ljava/lang/Object;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;->findDatasource()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
