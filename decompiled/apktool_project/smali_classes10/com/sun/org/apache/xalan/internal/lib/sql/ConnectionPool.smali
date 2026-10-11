.class public interface abstract Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract freeUnused()V
.end method

.method public abstract getConnection()Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract hasActiveConnections()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract releaseConnection(Ljava/sql/Connection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract releaseConnectionOnError(Ljava/sql/Connection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setDriver(Ljava/lang/String;)V
.end method

.method public abstract setMinConnections(I)V
.end method

.method public abstract setPassword(Ljava/lang/String;)V
.end method

.method public abstract setPoolEnabled(Z)V
.end method

.method public abstract setProtocol(Ljava/util/Properties;)V
.end method

.method public abstract setURL(Ljava/lang/String;)V
.end method

.method public abstract setUser(Ljava/lang/String;)V
.end method

.method public abstract testConnection()Z
.end method
