.class public Lcom/tencent/beacon/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/c/c;->c:Z

    iput-object p1, p0, Lcom/tencent/beacon/c/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/beacon/a/c/b;->f(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/beacon/c/c;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/tencent/beacon/c/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/c/c;->c()Z

    move-result p0

    return p0
.end method

.method private b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    sget-boolean v0, Lcom/tencent/beacon/a/c/b;->d:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/c/c;->c:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    invoke-static {}, Lcom/tencent/beacon/a/c/e;->l()Lcom/tencent/beacon/a/c/e;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/tencent/beacon/a/c/f;->e()Lcom/tencent/beacon/a/c/f;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lcom/tencent/beacon/a/c/e;->q()Ljava/lang/String;

    move-result-object v1

    const-string v3, "A19"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/tencent/beacon/c/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/a/c/b;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "F"

    goto :goto_0

    :cond_0
    const-string v1, "B"

    :goto_0
    const-string v3, "A66"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/beacon/c/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/beacon/a/c/b;->b(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "A68"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-boolean p0, p0, Lcom/tencent/beacon/c/c;->c:Z

    if-eqz p0, :cond_1

    const-string p0, "Y"

    goto :goto_1

    :cond_1
    const-string p0, "N"

    :goto_1
    const-string v1, "A85"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v2}, Lcom/tencent/beacon/a/c/f;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "A20"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v2}, Lcom/tencent/beacon/a/c/f;->k()Ljava/lang/String;

    move-result-object p0

    const-string v1, "A69"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic b(Lcom/tencent/beacon/c/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/beacon/c/c;->c:Z

    return p0
.end method

.method private c()Z
    .locals 2

    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    sget-object v1, Lcom/tencent/beacon/module/ModuleName;->STAT:Lcom/tencent/beacon/module/ModuleName;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/c/c;->a(Lcom/tencent/beacon/module/ModuleName;)Lcom/tencent/beacon/module/BeaconModule;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/module/StatModule;

    invoke-direct {p0}, Lcom/tencent/beacon/c/c;->b()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/beacon/module/StatModule;->b(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 13
    invoke-static {}, Lcom/tencent/beacon/a/d/a;->a()Lcom/tencent/beacon/a/d/a;

    move-result-object v0

    const-string v1, ""

    const-string v2, "active_user_date"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/a/d/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/tencent/beacon/base/util/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "[event] recover a heart beat for active user."

    .line 16
    invoke-static {v4, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-direct {p0}, Lcom/tencent/beacon/c/c;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    new-array p0, v3, [Ljava/lang/Object;

    const-string v1, "[event] rqd_heartbeat A85=Y report success"

    .line 18
    invoke-static {v1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0}, Lcom/tencent/beacon/a/d/a;->edit()Lcom/tencent/beacon/a/d/a$a;

    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/tencent/beacon/base/util/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Lcom/tencent/beacon/base/util/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "[event] active user event had upload."

    .line 22
    invoke-static {v0, p0}, Lcom/tencent/beacon/base/util/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/tencent/beacon/d/b;)V
    .locals 5

    .line 2
    invoke-static {}, Lcom/tencent/beacon/base/util/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/tencent/beacon/a/d/a;->a()Lcom/tencent/beacon/a/d/a;

    move-result-object v1

    const-string v2, "HEART_DENGTA"

    const-string v3, ""

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/tencent/beacon/a/d/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "active_user_date"

    .line 5
    invoke-virtual {v1, v4, v3}, Lcom/tencent/beacon/a/d/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "rqd_heartbeat"

    .line 7
    invoke-virtual {p1, v2}, Lcom/tencent/beacon/d/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "[event] rqd_heartbeat not allowed in strategy!"

    .line 8
    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1, v2}, Lcom/tencent/beacon/d/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "[event] rqd_heartbeat is sampled by svr rate!"

    .line 10
    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_2
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object p1

    new-instance v2, Lcom/tencent/beacon/c/b;

    invoke-direct {v2, p0, v0, v1}, Lcom/tencent/beacon/c/b;-><init>(Lcom/tencent/beacon/c/c;Ljava/lang/String;Lcom/tencent/beacon/a/d/a;)V

    invoke-virtual {p1, v2}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "[event] heartbeat had upload!"

    .line 12
    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
