.class public Lorg/apache/http/impl/client/AIMDBackoffManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/BackoffManager;


# instance fields
.field public final a:Lorg/apache/http/pool/ConnPoolControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/pool/ConnPoolControl<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/sunia/HTREnginev2/avd;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public e:J

.field public f:D

.field public g:I


# direct methods
.method public constructor <init>(Lorg/apache/http/pool/ConnPoolControl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/ConnPoolControl<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/p6n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/p6n;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/AIMDBackoffManager;-><init>(Lorg/apache/http/pool/ConnPoolControl;Lcom/sunia/HTREnginev2/avd;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/pool/ConnPoolControl;Lcom/sunia/HTREnginev2/avd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/ConnPoolControl<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ">;",
            "Lcom/sunia/HTREnginev2/avd;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 3
    iput-wide v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->e:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 4
    iput-wide v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->f:D

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->g:I

    .line 6
    iput-object p2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->b:Lcom/sunia/HTREnginev2/avd;

    .line 7
    iput-object p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->a:Lorg/apache/http/pool/ConnPoolControl;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->c:Ljava/util/Map;

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->f:D

    int-to-double p0, p1

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public final b(Ljava/util/Map;Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public backOff(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 9

    iget-object v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->a:Lorg/apache/http/pool/ConnPoolControl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->a:Lorg/apache/http/pool/ConnPoolControl;

    invoke-interface {v1, p1}, Lorg/apache/http/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->d:Ljava/util/Map;

    invoke-virtual {p0, v2, p1}, Lorg/apache/http/impl/client/AIMDBackoffManager;->b(Ljava/util/Map;Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->b:Lcom/sunia/HTREnginev2/avd;

    invoke-interface {v3}, Lcom/sunia/HTREnginev2/avd;->getCurrentTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v3, v5

    iget-wide v7, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->e:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->a:Lorg/apache/http/pool/ConnPoolControl;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/AIMDBackoffManager;->a(I)I

    move-result v1

    invoke-interface {v2, p1, v1}, Lorg/apache/http/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    iget-object p0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->d:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public probe(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 10

    iget-object v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->a:Lorg/apache/http/pool/ConnPoolControl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->a:Lorg/apache/http/pool/ConnPoolControl;

    invoke-interface {v1, p1}, Lorg/apache/http/pool/ConnPoolControl;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->g:I

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->c:Ljava/util/Map;

    invoke-virtual {p0, v1, p1}, Lorg/apache/http/impl/client/AIMDBackoffManager;->b(Ljava/util/Map;Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->d:Ljava/util/Map;

    invoke-virtual {p0, v3, p1}, Lorg/apache/http/impl/client/AIMDBackoffManager;->b(Ljava/util/Map;Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->b:Lcom/sunia/HTREnginev2/avd;

    invoke-interface {v4}, Lcom/sunia/HTREnginev2/avd;->getCurrentTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-wide v8, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->e:J

    cmp-long v1, v6, v8

    if-ltz v1, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-wide v8, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->e:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->a:Lorg/apache/http/pool/ConnPoolControl;

    invoke-interface {v1, p1, v2}, Lorg/apache/http/pool/ConnPoolControl;->setMaxPerRoute(Ljava/lang/Object;I)V

    iget-object p0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->c:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBackoffFactor(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Backoff factor must be 0.0 < f < 1.0"

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    iput-wide p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->f:D

    return-void
.end method

.method public setCooldownMillis(J)V
    .locals 3

    iget-wide v0, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->e:J

    const-string v2, "Cool down"

    invoke-static {v0, v1, v2}, Lorg/apache/http/util/Args;->positive(JLjava/lang/String;)J

    iput-wide p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->e:J

    return-void
.end method

.method public setPerHostConnectionCap(I)V
    .locals 1

    const-string v0, "Per host connection cap"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->positive(ILjava/lang/String;)I

    iput p1, p0, Lorg/apache/http/impl/client/AIMDBackoffManager;->g:I

    return-void
.end method
