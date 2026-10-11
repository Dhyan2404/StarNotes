.class public Lcom/tencent/beacon/event/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/event/i;
.implements Lcom/tencent/beacon/a/a/d;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/tencent/beacon/event/a/a;

.field private final c:Lcom/tencent/beacon/event/h;

.field private final d:Lcom/tencent/beacon/event/h;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/tencent/beacon/event/e;->e:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/tencent/beacon/event/e;->f:J

    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/b;->a(I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/e;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/beacon/event/a/a;->a()Lcom/tencent/beacon/event/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/event/e;->b:Lcom/tencent/beacon/event/a/a;

    new-instance v1, Lcom/tencent/beacon/event/h;

    const/16 v2, 0x7d0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/tencent/beacon/event/h;-><init>(ILcom/tencent/beacon/event/a/a;Z)V

    iput-object v1, p0, Lcom/tencent/beacon/event/e;->c:Lcom/tencent/beacon/event/h;

    new-instance v1, Lcom/tencent/beacon/event/h;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/tencent/beacon/event/h;-><init>(ILcom/tencent/beacon/event/a/a;Z)V

    iput-object v1, p0, Lcom/tencent/beacon/event/e;->d:Lcom/tencent/beacon/event/h;

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/beacon/event/e;)Lcom/tencent/beacon/event/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/event/e;->b:Lcom/tencent/beacon/event/a/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 14

    .line 19
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    iget-wide v4, p0, Lcom/tencent/beacon/event/e;->e:J

    iget-object v6, p0, Lcom/tencent/beacon/event/e;->c:Lcom/tencent/beacon/event/h;

    const/16 v1, 0x7d0

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/beacon/a/b/b;->a(IJJLjava/lang/Runnable;)V

    .line 20
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v7

    iget-wide v11, p0, Lcom/tencent/beacon/event/e;->f:J

    iget-object v13, p0, Lcom/tencent/beacon/event/e;->d:Lcom/tencent/beacon/event/h;

    const/16 v8, 0x3e8

    const-wide/16 v9, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/tencent/beacon/a/b/b;->a(IJJLjava/lang/Runnable;)V

    return-void
.end method

.method public a(I)V
    .locals 4

    .line 23
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/d/b;->o()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 24
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/d/b;->h()I

    move-result p0

    .line 25
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/d/b;->f()I

    move-result v1

    goto :goto_0

    :cond_0
    move p0, v0

    move v1, p0

    .line 26
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "resumedPollingReport realtimeDelayTime: %s, normalDelayTime: %s"

    .line 27
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    int-to-long v2, p0

    const/16 p0, 0x7d0

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/tencent/beacon/a/b/b;->a(IJI)V

    .line 29
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object p0

    int-to-long v0, v1

    const/16 v2, 0x3e8

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/tencent/beacon/a/b/b;->a(IJI)V

    return-void
.end method

.method public a(Lcom/tencent/beacon/a/a/c;)V
    .locals 8

    .line 31
    iget v0, p1, Lcom/tencent/beacon/a/a/c;->a:I

    const/4 v1, 0x2

    const-wide/16 v2, 0x7d0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 32
    :cond_0
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v1, "u_c_r_p"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    const-wide/16 v4, 0x2710

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    .line 34
    iput-wide v0, p0, Lcom/tencent/beacon/event/e;->e:J

    .line 35
    :cond_1
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v0, "u_c_n_p"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 36
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_4

    const-wide/32 v2, 0x36ee80

    cmp-long p1, v0, v2

    if-gtz p1, :cond_4

    .line 37
    iput-wide v0, p0, Lcom/tencent/beacon/event/e;->f:J

    goto :goto_0

    .line 38
    :cond_2
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v0, "d_m"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4

    .line 39
    iget-wide v0, p0, Lcom/tencent/beacon/event/e;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-string v0, "realtimePollingTime"

    .line 40
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/beacon/event/e;->e:J

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x2710

    invoke-static/range {v1 .. v7}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/beacon/event/e;->e:J

    .line 41
    :cond_3
    iget-wide v0, p0, Lcom/tencent/beacon/event/e;->f:J

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const-string v0, "normalPollingTime"

    .line 42
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/tencent/beacon/event/e;->f:J

    const-wide/16 v3, 0x7d0

    const-wide/32 v5, 0x36ee80

    invoke-static/range {v0 .. v6}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/beacon/event/e;->f:J

    .line 43
    :cond_4
    :goto_0
    iget-wide v0, p0, Lcom/tencent/beacon/event/e;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v0, p0, Lcom/tencent/beacon/event/e;->f:J

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[EventManager]"

    const-string v0, "pollingTime maybe change, realtime: %s normal: %s"

    .line 45
    invoke-static {p1, v0, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Lcom/tencent/beacon/event/EventBean;->getEventValue()Ljava/util/Map;

    move-result-object v0

    const-string v1, "A156"

    const-string v2, "N"

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1, v0}, Lcom/tencent/beacon/event/EventBean;->setEventValue(Ljava/util/Map;)V

    .line 7
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Lcom/tencent/beacon/event/c/d;->a(Ljava/util/List;Z)Lcom/tencent/beacon/base/net/call/JceRequestEntity;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/base/net/c;->b(Lcom/tencent/beacon/base/net/call/JceRequestEntity;)Lcom/tencent/beacon/base/net/call/i;

    move-result-object v0

    new-instance v1, Lcom/tencent/beacon/event/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/beacon/event/d;-><init>(Lcom/tencent/beacon/event/e;Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->b()Lcom/tencent/beacon/a/b/b;

    move-result-object p0

    .line 13
    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/base/net/call/i;->a(Lcom/tencent/beacon/base/net/call/Callback;Lcom/tencent/beacon/a/b/b;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/tencent/beacon/event/e;->c(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/event/open/EventResult;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;)V
    .locals 2
    .param p2    # Lcom/tencent/beacon/event/EventBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p2}, Lcom/tencent/beacon/event/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventName is %s, logID is %s"

    filled-new-array {v1, v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[EventManager]"

    invoke-static {v1, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    new-instance v1, Lcom/tencent/beacon/event/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/tencent/beacon/event/c;-><init>(Lcom/tencent/beacon/event/e;Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/tencent/beacon/event/e;->d:Lcom/tencent/beacon/event/h;

    invoke-virtual {p1}, Lcom/tencent/beacon/event/h;->run()V

    .line 16
    iget-object p0, p0, Lcom/tencent/beacon/event/e;->c:Lcom/tencent/beacon/event/h;

    invoke-virtual {p0}, Lcom/tencent/beacon/event/h;->run()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/beacon/event/e;->d:Lcom/tencent/beacon/event/h;

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    .line 18
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/beacon/event/e;->c:Lcom/tencent/beacon/event/h;

    invoke-virtual {p1, p0}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(ZI)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object p0

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/beacon/a/b/b;->a(IZI)V

    .line 22
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object p0

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/beacon/a/b/b;->a(IZI)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/beacon/event/e;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public b(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;)V
    .locals 3
    .param p2    # Lcom/tencent/beacon/event/EventBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/tencent/beacon/event/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[EventManager]"

    const-string v2, "eventName is %s, logID is %s"

    invoke-static {v1, v2, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    new-instance v1, Lcom/tencent/beacon/event/b;

    invoke-direct {v1, p0, p2, p1}, Lcom/tencent/beacon/event/b;-><init>(Lcom/tencent/beacon/event/e;Lcom/tencent/beacon/event/EventBean;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/event/open/EventResult;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/beacon/event/EventBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/tencent/beacon/event/a;

    invoke-direct {v0, p0, p2}, Lcom/tencent/beacon/event/a;-><init>(Lcom/tencent/beacon/event/e;Lcom/tencent/beacon/event/EventBean;)V

    invoke-virtual {p0, v0}, Lcom/tencent/beacon/event/e;->a(Ljava/lang/Runnable;)Z

    move-result p0

    invoke-virtual {p2}, Lcom/tencent/beacon/event/EventBean;->getEventCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/beacon/event/EventBean;->getAppKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "event: %s. go in EventManager(%s). offer: %s"

    const-string v2, "[EventModule]"

    invoke-static {v2, v0, v1, p2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "-1"

    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/tencent/beacon/event/open/EventResult$a;->a(J)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x67

    invoke-static {p0}, Lcom/tencent/beacon/event/open/EventResult$a;->a(I)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0
.end method
