.class public Lcom/tencent/beacon/module/StatModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/module/BeaconModule;
.implements Lcom/tencent/beacon/a/a/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:Lcom/tencent/beacon/d/b;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/module/StatModule;->b:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/module/StatModule;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/beacon/module/StatModule;->e:J

    return-void
.end method

.method public static synthetic a(Lcom/tencent/beacon/module/StatModule;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/tencent/beacon/module/StatModule;->e:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/tencent/beacon/module/StatModule;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/tencent/beacon/module/StatModule;->e:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/tencent/beacon/module/StatModule;J)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/tencent/beacon/module/StatModule;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/beacon/module/StatModule;->e:J

    return-wide v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/beacon/module/StatModule;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/tencent/beacon/c/a/d;

    invoke-direct {v1, p0}, Lcom/tencent/beacon/c/a/d;-><init>(Lcom/tencent/beacon/module/StatModule;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/beacon/module/StatModule;->d:Lcom/tencent/beacon/d/b;

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/beacon/a/d/a;->a()Lcom/tencent/beacon/a/d/a;

    move-result-object v0

    const-string v1, ""

    const-string v2, "rqd_model"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/a/d/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/beacon/base/util/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/tencent/beacon/module/StatModule$1;

    invoke-direct {v1, p0}, Lcom/tencent/beacon/module/StatModule$1;-><init>(Lcom/tencent/beacon/module/StatModule;)V

    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object p0

    const-wide/32 v3, 0xc350

    invoke-virtual {p0, v3, v4, v1}, Lcom/tencent/beacon/a/b/b;->a(JLjava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/tencent/beacon/a/d/a;->edit()Lcom/tencent/beacon/a/d/a$a;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/beacon/base/util/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/beacon/base/util/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    return-void
.end method

.method private e()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/beacon/module/StatModule;->d:Lcom/tencent/beacon/d/b;

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/module/StatModule;->d:Lcom/tencent/beacon/d/b;

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->p()Z

    move-result v0

    const-string v1, ""

    const-string v2, "LAUEVE_DENGTA"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/beacon/a/d/a;->a()Lcom/tencent/beacon/a/d/a;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/a/d/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/beacon/base/util/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "[event] APP_LAUNCHED_EVENT has been uploaded!"

    invoke-static {v0, p0}, Lcom/tencent/beacon/base/util/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/beacon/a/c/e;->l()Lcom/tencent/beacon/a/c/e;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/e;->q()Ljava/lang/String;

    move-result-object v4

    const-string v5, "A19"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "A63"

    const-string v5, "Y"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/beacon/a/c/b;->g()Z

    move-result v4

    const-string v6, "N"

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_0

    :cond_2
    move-object v4, v6

    :goto_0
    const-string v7, "A21"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/beacon/module/StatModule;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/beacon/a/c/b;->e(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    move-object v4, v6

    :goto_1
    const-string v7, "A45"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/beacon/module/StatModule;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/beacon/a/c/b;->f(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "F"

    goto :goto_2

    :cond_4
    const-string v4, "B"

    :goto_2
    const-string v7, "A66"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/module/StatModule;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/a/c/b;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "A68"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/tencent/beacon/a/c/b;->d:Z

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, v6

    :goto_3
    const-string v1, "A85"

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "A9"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/e;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A14"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/f;->j()Ljava/lang/String;

    move-result-object v1

    const-string v4, "A20"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/f;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A69"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/tencent/beacon/module/StatModule;->a(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/tencent/beacon/a/d/a;->a()Lcom/tencent/beacon/a/d/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/a/d/a;->edit()Lcom/tencent/beacon/a/d/a$a;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/beacon/base/util/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/tencent/beacon/base/util/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/tencent/beacon/module/StatModule;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/tencent/beacon/a/c/b;->g(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "non-main process. do not report rqd event"

    .line 6
    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    sget-object p1, Lcom/tencent/beacon/module/BeaconModule;->a:Ljava/util/Map;

    sget-object v0, Lcom/tencent/beacon/module/ModuleName;->STRATEGY:Lcom/tencent/beacon/module/ModuleName;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/beacon/module/StrategyModule;

    invoke-virtual {p1}, Lcom/tencent/beacon/module/StrategyModule;->b()Lcom/tencent/beacon/d/b;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/module/StatModule;->d:Lcom/tencent/beacon/d/b;

    .line 8
    invoke-virtual {p1}, Lcom/tencent/beacon/d/b;->t()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/beacon/module/StatModule;->c:Z

    .line 9
    iget-object p1, p0, Lcom/tencent/beacon/module/StatModule;->d:Lcom/tencent/beacon/d/b;

    invoke-virtual {p1}, Lcom/tencent/beacon/d/b;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/tencent/beacon/module/StatModule;->a:Landroid/content/Context;

    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/tencent/beacon/c/a/c;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/c/a/c;-><init>(Lcom/tencent/beacon/module/StatModule;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 11
    :cond_1
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    .line 12
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    return-void
.end method

.method public a(Lcom/tencent/beacon/a/a/c;)V
    .locals 2

    .line 13
    iget v0, p1, Lcom/tencent/beacon/a/a/c;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/tencent/beacon/module/StatModule;->e()V

    .line 15
    iget-object p1, p0, Lcom/tencent/beacon/module/StatModule;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/beacon/a/c/b;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    new-instance p1, Lcom/tencent/beacon/c/c;

    iget-object v0, p0, Lcom/tencent/beacon/module/StatModule;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tencent/beacon/c/c;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/beacon/module/StatModule;->d:Lcom/tencent/beacon/d/b;

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/c/c;->a(Lcom/tencent/beacon/d/b;)V

    .line 17
    :cond_1
    iget-boolean p1, p0, Lcom/tencent/beacon/module/StatModule;->b:Z

    if-eqz p1, :cond_2

    .line 18
    invoke-direct {p0}, Lcom/tencent/beacon/module/StatModule;->d()V

    .line 19
    :cond_2
    iget-boolean p1, p0, Lcom/tencent/beacon/module/StatModule;->c:Z

    if-eqz p1, :cond_4

    .line 20
    invoke-direct {p0}, Lcom/tencent/beacon/module/StatModule;->c()V

    goto :goto_0

    .line 21
    :cond_3
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v0, "d_m"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4

    const-string v0, "modelEventUsable"

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/tencent/beacon/module/StatModule;->b:Z

    invoke-static {v0, v1}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/module/StatModule;->b:Z

    const-string v0, "isPagePath"

    .line 23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-boolean v0, p0, Lcom/tencent/beacon/module/StatModule;->c:Z

    invoke-static {p1, v0}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/beacon/module/StatModule;->c:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 9

    .line 31
    iget-object v0, p0, Lcom/tencent/beacon/module/StatModule;->d:Lcom/tencent/beacon/d/b;

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    new-instance v8, Lcom/tencent/beacon/module/StatModule$2;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p4

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/tencent/beacon/module/StatModule$2;-><init>(Lcom/tencent/beacon/module/StatModule;JLjava/lang/String;J)V

    invoke-virtual {v0, v8}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/tencent/beacon/module/StatModule;->d:Lcom/tencent/beacon/d/b;

    invoke-virtual {p0}, Lcom/tencent/beacon/d/b;->s()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 25
    :cond_0
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconEvent;->builder()Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    const-string v0, "rqd_applaunched"

    .line 26
    invoke-virtual {p0, v0}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withCode(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    .line 27
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withParams(Ljava/util/Map;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    sget-object p1, Lcom/tencent/beacon/event/open/EventType;->REALTIME:Lcom/tencent/beacon/event/open/EventType;

    .line 28
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withType(Lcom/tencent/beacon/event/open/EventType;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->build()Lcom/tencent/beacon/event/open/BeaconEvent;

    move-result-object p0

    .line 30
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/beacon/event/open/BeaconReport;->report(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/EventResult;->isSuccess()Z

    move-result p0

    return p0
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/String;JJ)V
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/tencent/beacon/module/StatModule;->d:Lcom/tencent/beacon/d/b;

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    new-instance v8, Lcom/tencent/beacon/module/StatModule$3;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p4

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/tencent/beacon/module/StatModule$3;-><init>(Lcom/tencent/beacon/module/StatModule;JLjava/lang/String;J)V

    invoke-virtual {v0, v8}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/tencent/beacon/module/StatModule;->d:Lcom/tencent/beacon/d/b;

    invoke-virtual {p0}, Lcom/tencent/beacon/d/b;->s()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_0
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconEvent;->builder()Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withParams(Ljava/util/Map;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    const-string p1, "rqd_heartbeat"

    .line 8
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withCode(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    sget-object p1, Lcom/tencent/beacon/event/open/EventType;->REALTIME:Lcom/tencent/beacon/event/open/EventType;

    .line 9
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withType(Lcom/tencent/beacon/event/open/EventType;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->build()Lcom/tencent/beacon/event/open/BeaconEvent;

    move-result-object p0

    .line 11
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/beacon/event/open/BeaconReport;->report(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/event/open/EventResult;->isSuccess()Z

    move-result p0

    return p0
.end method
