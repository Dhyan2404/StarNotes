.class public Lcom/tencent/qimei/r/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qimei/r/a;->a:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qimei/r/a;->b:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qimei/r/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/qimei/l/f;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/qimei/r/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "Q_V3"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, v1}, Lcom/tencent/qimei/l/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/qimei/l/f;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;
    .locals 8

    const-class v0, Lcom/tencent/qimei/r/a;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/tencent/qimei/y/d;->b()Lcom/tencent/qimei/y/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/y/d;->c()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v1}, Lcom/tencent/qimei/r/a;->a(Landroid/content/Context;)Lcom/tencent/qimei/l/f;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Q_V3"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/l/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/qimei/l/f;->a()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/qimei/l/b;->b()Lcom/tencent/qimei/l/b;

    move-result-object v1

    sget-object v2, Lcom/tencent/qimei/r/a;->a:Ljava/lang/String;

    sget-object v3, Lcom/tencent/qimei/r/a;->c:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/qimei/l/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v3, Lcom/tencent/qimei/r/a;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/tencent/qimei/l/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qimei/l/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_3

    .line 4
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v2

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    if-eqz v5, :cond_6

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const-string v4, "A3"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_2
    if-nez v3, :cond_7

    monitor-exit v0

    return-object v2

    :cond_7
    :try_start_3
    const-string v1, "A3"

    .line 5
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "A153"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_8

    monitor-exit v0

    return-object v2

    :cond_8
    :try_start_4
    new-instance v2, Lcom/tencent/qimei/sdk/Qimei;

    const-string v4, ""

    const-string v5, ""

    .line 6
    invoke-direct {v2, v4, v5, p0}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {v2, v1}, Lcom/tencent/qimei/sdk/Qimei;->a(Ljava/lang/String;)V

    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {v2, v3}, Lcom/tencent/qimei/sdk/Qimei;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    monitor-exit v0

    return-object v2

    :cond_b
    :goto_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
