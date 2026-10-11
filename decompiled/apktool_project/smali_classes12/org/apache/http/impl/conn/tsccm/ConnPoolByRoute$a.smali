.class public Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

.field public final synthetic b:Lorg/apache/http/conn/routing/HttpRoute;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;->d:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;->a:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    iput-object p3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;->b:Lorg/apache/http/conn/routing/HttpRoute;

    iput-object p4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;->d:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-static {v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;->a:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;->d:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-static {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;->d:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-static {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;->d:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;->b:Lorg/apache/http/conn/routing/HttpRoute;

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;->c:Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$a;->a:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getEntryBlocking(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object p0

    return-object p0
.end method
