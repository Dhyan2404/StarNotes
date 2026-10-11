.class public Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private connection:Ljava/sql/Connection;

.field private inuse:Z


# direct methods
.method public constructor <init>(Ljava/sql/Connection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->connection:Ljava/sql/Connection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->inuse:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->connection:Ljava/sql/Connection;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->connection:Ljava/sql/Connection;

    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->connection:Ljava/sql/Connection;

    return-object p0
.end method

.method public inUse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->inuse:Z

    return p0
.end method

.method public setInUse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/PooledConnection;->inuse:Z

    return-void
.end method
