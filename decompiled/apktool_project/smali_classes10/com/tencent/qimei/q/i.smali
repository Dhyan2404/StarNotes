.class public Lcom/tencent/qimei/q/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/tencent/qimei/q/i;


# instance fields
.field public final b:Lcom/tencent/qimei/q/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qimei/q/f;

    invoke-direct {v0}, Lcom/tencent/qimei/q/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/q/i;->b:Lcom/tencent/qimei/q/f;

    return-void
.end method

.method public static declared-synchronized b()Lcom/tencent/qimei/q/i;
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/qimei/q/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/q/i;->a:Lcom/tencent/qimei/q/i;

    if-nez v1, :cond_1

    const-class v1, Lcom/tencent/qimei/q/i;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/tencent/qimei/q/i;->a:Lcom/tencent/qimei/q/i;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/qimei/q/i;

    invoke-direct {v2}, Lcom/tencent/qimei/q/i;-><init>()V

    sput-object v2, Lcom/tencent/qimei/q/i;->a:Lcom/tencent/qimei/q/i;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_1
    :goto_0
    sget-object v1, Lcom/tencent/qimei/q/i;->a:Lcom/tencent/qimei/q/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Lcom/tencent/qimei/q/c;
    .locals 0

    .line 1
    new-instance p0, Lcom/tencent/qimei/q/c;

    invoke-direct {p0}, Lcom/tencent/qimei/q/c;-><init>()V

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    .line 3
    sget-object v1, Lcom/tencent/qimei/q/d;->b:Lcom/tencent/qimei/q/d;

    .line 4
    invoke-static {p3}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/tencent/qimei/aa/a;->c:Lcom/tencent/qimei/ac/b;

    .line 6
    iget-object v2, v2, Lcom/tencent/qimei/ac/b;->l:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2, p4}, Lcom/tencent/qimei/q/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 8
    iget-object v2, p1, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    .line 9
    iget-boolean v3, p1, Lcom/tencent/qimei/q/c;->b:Z

    .line 10
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-eqz v3, :cond_0

    invoke-static {p3}, Lcom/tencent/qimei/o/d;->a(Ljava/lang/String;)Lcom/tencent/qimei/o/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qimei/o/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, p3}, Lcom/tencent/qimei/q/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/e/c;->k()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "ip"

    :try_start_1
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/tencent/qimei/e/c;->m()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "networkType"

    :try_start_2
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/tencent/qimei/q/e;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz v2, :cond_1

    .line 12
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 13
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/qimei/q/d;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/qimei/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    const-string v3, "type"

    :try_start_5
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    const-string v3, "params"

    :try_start_6
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_2
    iget-object p1, p1, Lcom/tencent/qimei/q/c;->c:Lcom/tencent/qimei/q/a;

    .line 15
    new-instance v1, Lcom/tencent/qimei/q/h;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/tencent/qimei/q/h;-><init>(Lcom/tencent/qimei/q/i;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/q/a;)V

    invoke-static {p4, v0, v1}, Lcom/tencent/qimei/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/g/c;)V

    return-void
.end method

.method public b(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-static {p3}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/tencent/qimei/aa/a;->c:Lcom/tencent/qimei/ac/b;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/qimei/ac/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p3}, Lcom/tencent/qimei/f/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/f/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tencent/qimei/q/i;->b:Lcom/tencent/qimei/q/f;

    .line 7
    iget-object v1, p1, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    .line 8
    iget-object v2, v0, Lcom/tencent/qimei/q/f;->a:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 9
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/q/f;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    return-void

    .line 10
    :cond_4
    new-instance v0, Lcom/tencent/qimei/q/g;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qimei/q/g;-><init>(Lcom/tencent/qimei/q/i;Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/qimei/d/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
