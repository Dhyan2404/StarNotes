.class public Lorg/apache/http/impl/conn/PoolingClientConnectionManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/conn/PoolingClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Future;

.field public final synthetic b:Lorg/apache/http/impl/conn/PoolingClientConnectionManager;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/conn/PoolingClientConnectionManager;Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingClientConnectionManager$a;->b:Lorg/apache/http/impl/conn/PoolingClientConnectionManager;

    iput-object p2, p0, Lorg/apache/http/impl/conn/PoolingClientConnectionManager$a;->a:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 1

    iget-object p0, p0, Lorg/apache/http/impl/conn/PoolingClientConnectionManager$a;->a:Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingClientConnectionManager$a;->b:Lorg/apache/http/impl/conn/PoolingClientConnectionManager;

    iget-object p0, p0, Lorg/apache/http/impl/conn/PoolingClientConnectionManager$a;->a:Ljava/util/concurrent/Future;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/http/impl/conn/PoolingClientConnectionManager;->d(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object p0

    return-object p0
.end method
