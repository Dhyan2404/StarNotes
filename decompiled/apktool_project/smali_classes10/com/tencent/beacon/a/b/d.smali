.class Lcom/tencent/beacon/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLcom/tencent/beacon/base/net/call/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Z

.field final synthetic e:Lcom/tencent/beacon/base/net/call/Callback;

.field final synthetic f:Lcom/tencent/beacon/a/b/h;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/a/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLcom/tencent/beacon/base/net/call/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/a/b/d;->f:Lcom/tencent/beacon/a/b/h;

    iput-object p2, p0, Lcom/tencent/beacon/a/b/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/beacon/a/b/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/beacon/a/b/d;->c:Ljava/lang/Throwable;

    iput-boolean p5, p0, Lcom/tencent/beacon/a/b/d;->d:Z

    iput-object p6, p0, Lcom/tencent/beacon/a/b/d;->e:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/beacon/a/b/d;->f:Lcom/tencent/beacon/a/b/h;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/h;->a(Lcom/tencent/beacon/a/b/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/tencent/beacon/a/b/h;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "error_code"

    :try_start_1
    iget-object v3, p0, Lcom/tencent/beacon/a/b/d;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "error_msg"

    :try_start_2
    iget-object v3, p0, Lcom/tencent/beacon/a/b/d;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "error_stack_full"

    :try_start_3
    iget-object v3, p0, Lcom/tencent/beacon/a/b/d;->c:Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "_dc"

    :try_start_4
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/tencent/beacon/a/b/d;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_0

    const-string v2, "https://htrace.wetvinfo.com/kv"

    goto :goto_0

    :cond_0
    const-string v2, "https://h.trace.qq.com/kv"

    :goto_0
    :try_start_5
    invoke-static {}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->builder()Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;->b(Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v3, "atta"

    :try_start_6
    invoke-virtual {v2, v3}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;->a(Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;->a(Ljava/util/Map;)Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;

    move-result-object v1

    sget-object v2, Lcom/tencent/beacon/base/net/HttpMethod;->POST:Lcom/tencent/beacon/base/net/HttpMethod;

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;->a(Lcom/tencent/beacon/base/net/HttpMethod;)Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;->a()Lcom/tencent/beacon/base/net/call/HttpRequestEntity;

    move-result-object v1

    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/beacon/base/net/c;->a(Lcom/tencent/beacon/base/net/call/HttpRequestEntity;)Lcom/tencent/beacon/base/net/call/c;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/beacon/a/b/d;->e:Lcom/tencent/beacon/base/net/call/Callback;

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/base/net/call/c;->a(Lcom/tencent/beacon/base/net/call/Callback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v1, "[atta] upload a new error, errorCode: %s, message: %s, stack: %s"

    const/4 v2, 0x3

    :try_start_7
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/beacon/a/b/d;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/tencent/beacon/a/b/d;->b:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object p0, p0, Lcom/tencent/beacon/a/b/d;->c:Ljava/lang/Throwable;

    invoke-static {p0}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/beacon/base/util/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method
