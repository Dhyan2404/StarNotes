.class public Lcom/tencent/qimei/v/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/c/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qimei/v/g$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/tencent/qimei/c/e;

.field public final f:Lcom/tencent/qimei/sdk/S/DataFormatter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/qimei/m/a;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qimei/v/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qimei/v/c;

    invoke-direct {v0}, Lcom/tencent/qimei/v/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qimei/v/c;->a()Lcom/tencent/qimei/sdk/S/DataFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/v/g;->f:Lcom/tencent/qimei/sdk/S/DataFormatter;

    iget-object v1, p0, Lcom/tencent/qimei/v/g;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/qimei/v/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SpreadQM"

    const-string v1, "%s%s load current cache size: %s"

    invoke-static {v0, v1, p0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/qimei/v/f;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/tencent/qimei/v/c;

    invoke-direct {p1}, Lcom/tencent/qimei/v/c;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/qimei/v/c;->a()Lcom/tencent/qimei/sdk/S/DataFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/v/g;->f:Lcom/tencent/qimei/sdk/S/DataFormatter;

    iget-object v0, p0, Lcom/tencent/qimei/v/g;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/qimei/v/g;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SpreadQM"

    const-string v0, "%s%s load current cache size: %s"

    invoke-static {p1, v0, p0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Lcom/tencent/qimei/v/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/qimei/v/g$a;->a:Lcom/tencent/qimei/v/g;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "appKey"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spread_data"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/tencent/qimei/v/c;

    invoke-direct {v2}, Lcom/tencent/qimei/v/c;-><init>()V

    sget-object v3, Lcom/tencent/qimei/v/g;->a:Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lcom/tencent/qimei/v/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/DataFormatter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/qimei/v/g;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/tencent/qimei/v/g;->f:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {v3}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v4

    .line 7
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    const-string v4, "SpreadQM"

    const-string v7, "%s%s received broadcast from %s%s|data = %s|,needReply:%b "

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    .line 8
    iget-object v9, p0, Lcom/tencent/qimei/v/g;->b:Ljava/lang/String;

    aput-object v9, v8, v6

    iget-object v9, p0, Lcom/tencent/qimei/v/g;->c:Ljava/lang/String;

    aput-object v9, v8, v5

    const/4 v9, 0x2

    aput-object v0, v8, v9

    const/4 v0, 0x3

    aput-object v1, v8, v0

    const/4 v10, 0x4

    aput-object p2, v8, v10

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move p2, v6

    goto :goto_2

    :cond_2
    :goto_1
    move p2, v5

    :goto_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v10, 0x5

    aput-object p2, v8, v10

    invoke-static {v4, v7, v8}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    .line 9
    :cond_3
    sget-object p1, Lcom/tencent/qimei/c/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/qimei/v/g;->b()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/tencent/qimei/b/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    new-array p1, v0, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/tencent/qimei/v/g;->b:Ljava/lang/String;

    aput-object p2, p1, v6

    iget-object p2, p0, Lcom/tencent/qimei/v/g;->c:Ljava/lang/String;

    aput-object p2, p1, v5

    aput-object v1, p1, v9

    const-string p2, "SpreadQM"

    const-string v0, "%s%s reply broadcast to %s"

    invoke-static {p2, v0, p1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/qimei/v/g;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qimei/v/g;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/v/g;->d:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/tencent/qimei/v/g;->e:Lcom/tencent/qimei/c/e;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 3
    new-instance p1, Lcom/tencent/qimei/c/e;

    iget-object v1, p0, Lcom/tencent/qimei/v/g;->d:Ljava/lang/String;

    invoke-direct {p1, p0, v1}, Lcom/tencent/qimei/c/e;-><init>(Lcom/tencent/qimei/c/e$a;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/qimei/v/g;->e:Lcom/tencent/qimei/c/e;

    invoke-virtual {p1}, Lcom/tencent/qimei/c/e;->a()V

    .line 4
    :cond_2
    sget-object p1, Lcom/tencent/qimei/c/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/qimei/v/g;->b()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ""

    .line 5
    invoke-static {p1, v2, v1}, Lcom/tencent/qimei/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/tencent/qimei/v/g;->b:Ljava/lang/String;

    aput-object v1, p1, v0

    iget-object v0, p0, Lcom/tencent/qimei/v/g;->c:Ljava/lang/String;

    aput-object v0, p1, p2

    const-string p2, "SpreadQM"

    const-string v0, "%s-%s | send implicit broadcast"

    invoke-static {p2, v0, p1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/qimei/sdk/S/SpreadValue;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/v/g;->f:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->e(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->f(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v3}, Lcom/tencent/qimei/sdk/S/SpreadValue;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/tencent/qimei/sdk/S/SpreadValue;->g(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v5, p2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->c(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v5, p3}, Lcom/tencent/qimei/sdk/S/SpreadValue;->d(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/qimei/sdk/S/SpreadValue;->b(J)Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v2, p2}, Lcom/tencent/qimei/sdk/S/SpreadValue;->c(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-virtual {v2, p3}, Lcom/tencent/qimei/sdk/S/SpreadValue;->d(Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->b(J)Lcom/tencent/qimei/sdk/S/SpreadValue;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v2, v4

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v1

    aput-object p3, p1, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "SpreadQM"

    const-string p3, "update data,from:appKey:%s  source:%s  updateResult:%b"

    invoke-static {p2, p3, p1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/tencent/qimei/v/g;->f:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {p1, v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a(Ljava/util/HashMap;)V

    .line 10
    sget-object p1, Lcom/tencent/qimei/l/c$a;->a:Lcom/tencent/qimei/l/c;

    const-string p2, "sp_need_report"

    .line 11
    invoke-virtual {p1, p2, v4}, Lcom/tencent/qimei/l/c;->a(Ljava/lang/String;Z)V

    new-instance p1, Lcom/tencent/qimei/v/c;

    invoke-direct {p1}, Lcom/tencent/qimei/v/c;-><init>()V

    iget-object p2, p0, Lcom/tencent/qimei/v/g;->f:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {p1, p2}, Lcom/tencent/qimei/v/c;->a(Lcom/tencent/qimei/sdk/S/DataFormatter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/tencent/qimei/v/c;

    invoke-direct {v1}, Lcom/tencent/qimei/v/c;-><init>()V

    iget-object v2, p0, Lcom/tencent/qimei/v/g;->f:Lcom/tencent/qimei/sdk/S/DataFormatter;

    sget-object v3, Lcom/tencent/qimei/v/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/v/c;->a(Lcom/tencent/qimei/sdk/S/DataFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spread_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qimei/v/g;->b:Ljava/lang/String;

    const-string v2, "appKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qimei/v/g;->c:Ljava/lang/String;

    const-string v1, "source"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
