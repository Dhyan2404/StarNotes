.class public Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/pool/PoolEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/pool/PoolEntryCallback<",
        "Lorg/apache/http/conn/routing/HttpRoute;",
        "Lorg/apache/http/conn/ManagedHttpClientConnection;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$b;->a:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/pool/PoolEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/PoolEntry<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/conn/ManagedHttpClientConnection;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpConnection;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$b;->a:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    invoke-static {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->j(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$b;->a:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    invoke-static {p0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->j(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;)Lorg/apache/commons/logging/Log;

    move-result-object p0

    const-string v0, "I/O exception shutting down connection"

    invoke-interface {p0, v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
