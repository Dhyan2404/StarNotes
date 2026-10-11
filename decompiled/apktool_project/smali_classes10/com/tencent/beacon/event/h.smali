.class public Lcom/tencent/beacon/event/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/tencent/beacon/a/a/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/tencent/beacon/event/a/a;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/tencent/beacon/event/a/a;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/h;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/h;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/h;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/h;->k:Z

    iput p1, p0, Lcom/tencent/beacon/event/h;->b:I

    iput-object p2, p0, Lcom/tencent/beacon/event/h;->c:Lcom/tencent/beacon/event/a/a;

    iput-boolean p3, p0, Lcom/tencent/beacon/event/h;->h:Z

    if-eqz p3, :cond_0

    const-string p1, "t_r_e"

    goto :goto_0

    :cond_0
    const-string p1, "t_n_e"

    :goto_0
    iput-object p1, p0, Lcom/tencent/beacon/event/h;->a:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/beacon/d/b;->i()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/beacon/d/b;->g()I

    move-result p2

    :goto_1
    iput p2, p0, Lcom/tencent/beacon/event/h;->i:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[EventReport ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/event/h;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/beacon/event/EventBean;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tencent/beacon/event/h;->h:Z

    invoke-static {p1, v0}, Lcom/tencent/beacon/event/c/d;->a(Ljava/util/List;Z)Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/event/h;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "event request entity: %s"

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/tencent/beacon/event/g;

    iget-object v6, p0, Lcom/tencent/beacon/event/h;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/beacon/event/h;->c:Lcom/tencent/beacon/event/a/a;

    iget-object v9, p0, Lcom/tencent/beacon/event/h;->l:Ljava/lang/String;

    move-object v4, v0

    move-object v5, p0

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/tencent/beacon/event/g;-><init>(Lcom/tencent/beacon/event/h;Ljava/lang/String;Lcom/tencent/beacon/event/a/a;Ljava/util/Set;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/c;->b(Lcom/tencent/beacon/base/net/call/JceRequestEntity;)Lcom/tencent/beacon/base/net/call/i;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/base/net/call/i;->a(Lcom/tencent/beacon/base/net/call/Callback;)V

    return-void
.end method

.method private d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/beacon/event/EventBean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/beacon/event/h;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    iget-object v1, p0, Lcom/tencent/beacon/event/h;->c:Lcom/tencent/beacon/event/a/a;

    iget-object v2, p0, Lcom/tencent/beacon/event/h;->a:Ljava/lang/String;

    iget p0, p0, Lcom/tencent/beacon/event/h;->i:I

    invoke-virtual {v1, v2, v0, p0}, Lcom/tencent/beacon/event/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 22
    :try_start_0
    iget v0, p0, Lcom/tencent/beacon/event/h;->i:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    .line 23
    iput v0, p0, Lcom/tencent/beacon/event/h;->i:I

    .line 24
    iput-boolean v1, p0, Lcom/tencent/beacon/event/h;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/tencent/beacon/event/h;->f:Ljava/util/List;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/tencent/beacon/event/h;->f:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/tencent/beacon/event/h;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xa

    if-lt p1, p2, :cond_1

    .line 17
    iget-object p1, p0, Lcom/tencent/beacon/event/h;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/tencent/beacon/event/h;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-long v3, p2

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, ""

    :try_start_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {}, Lcom/tencent/beacon/a/b/i;->e()Lcom/tencent/beacon/a/b/i;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "703"

    :try_start_2
    invoke-virtual {p2, v1, p1}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/tencent/beacon/event/h;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 21
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public a(Lcom/tencent/beacon/a/a/c;)V
    .locals 3

    .line 5
    iget v0, p1, Lcom/tencent/beacon/a/a/c;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v0, "d_m"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 7
    iget-boolean v0, p0, Lcom/tencent/beacon/event/h;->h:Z

    const/16 v1, 0x64

    const/16 v2, 0x18

    if-eqz v0, :cond_0

    const-string v0, "realtimeUploadNum"

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget v0, p0, Lcom/tencent/beacon/event/h;->i:I

    invoke-static {p1, v0, v2, v1}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result p1

    iput p1, p0, Lcom/tencent/beacon/event/h;->i:I

    goto :goto_0

    :cond_0
    const-string v0, "normalUploadNum"

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget v0, p0, Lcom/tencent/beacon/event/h;->i:I

    invoke-static {p1, v0, v2, v1}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result p1

    iput p1, p0, Lcom/tencent/beacon/event/h;->i:I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/tencent/beacon/event/h;->d:Ljava/util/Set;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/tencent/beacon/event/h;->d:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/event/h;->i:I

    return p0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/beacon/event/h;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/beacon/event/h;->h:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->i()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->g()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/tencent/beacon/event/h;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/event/h;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 11

    iget-boolean v0, p0, Lcom/tencent/beacon/event/h;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/beacon/event/h;->e()V

    iput-boolean v1, p0, Lcom/tencent/beacon/event/h;->j:Z

    :cond_0
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/c;->f()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    iget p0, p0, Lcom/tencent/beacon/event/h;->b:I

    invoke-virtual {v0, p0, v2, v2}, Lcom/tencent/beacon/a/b/b;->a(IZI)V

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/base/net/c;->c()I

    move-result v0

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/beacon/d/b;->e()I

    move-result v3

    if-lt v0, v3, :cond_2

    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object p0

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/a/b/b;->b(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/beacon/event/h;->d:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/beacon/event/h;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "start read EventBean from DB."

    :try_start_1
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/beacon/event/h;->d()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_2

    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/beacon/event/EventBean;

    invoke-virtual {v6}, Lcom/tencent/beacon/event/EventBean;->getCid()J

    move-result-wide v7

    iget-object v9, p0, Lcom/tencent/beacon/event/h;->d:Ljava/util/Set;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/tencent/beacon/event/h;->e:Ljava/util/Set;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/tencent/beacon/event/EventBean;->getEventValue()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/tencent/beacon/event/EventBean;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, ": "

    :try_start_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    const-string v9, "A100"

    :try_start_3
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v7, ", "

    :try_start_4
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, "--logID: \n"

    :try_start_5
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v6, "\n"

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/beacon/event/h;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/beacon/event/h;->g:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v6, "send LogID: %s"

    :try_start_7
    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v5, v1, v6, v7}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/beacon/event/h;->e:Ljava/util/Set;

    invoke-direct {p0, v3, v1}, Lcom/tencent/beacon/event/h;->a(Ljava/util/List;Ljava/util/Set;)V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/tencent/beacon/event/h;->e:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    monitor-exit v0

    return-void

    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/tencent/beacon/event/h;->g:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v4, "EventBean List == null. Task end!"

    :try_start_8
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v1

    iget p0, p0, Lcom/tencent/beacon/event/h;->b:I

    invoke-virtual {v1, p0, v2, v2}, Lcom/tencent/beacon/a/b/b;->a(IZI)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method
