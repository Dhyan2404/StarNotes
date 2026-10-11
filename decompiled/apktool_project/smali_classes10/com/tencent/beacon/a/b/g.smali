.class Lcom/tencent/beacon/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/tencent/beacon/a/b/h;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/a/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/a/b/g;->e:Lcom/tencent/beacon/a/b/h;

    iput-object p2, p0, Lcom/tencent/beacon/a/b/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/beacon/a/b/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/beacon/a/b/g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/beacon/a/b/g;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/beacon/a/b/g;->e:Lcom/tencent/beacon/a/b/h;

    invoke-static {v0}, Lcom/tencent/beacon/a/b/h;->a(Lcom/tencent/beacon/a/b/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "attaid"

    :try_start_1
    iget-object v3, p0, Lcom/tencent/beacon/a/b/g;->e:Lcom/tencent/beacon/a/b/h;

    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "token"

    :try_start_2
    iget-object v3, p0, Lcom/tencent/beacon/a/b/g;->e:Lcom/tencent/beacon/a/b/h;

    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "platform"

    const-string v3, "Android"

    :try_start_3
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "uin"

    const-string v3, ""

    :try_start_4
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v2, "model"

    const-string v3, ""

    :try_start_5
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v2, "os"

    const-string v3, ""

    :try_start_6
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v2, "error_stack_full"

    const-string v3, ""

    :try_start_7
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v2, "app_version"

    const-string v3, ""

    :try_start_8
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v2, "sdk_version"

    :try_start_9
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/beacon/a/c/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v2, "product_id"

    :try_start_a
    iget-object v3, p0, Lcom/tencent/beacon/a/b/g;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v2, "error_code"

    :try_start_b
    iget-object v3, p0, Lcom/tencent/beacon/a/b/g;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v2, "error_msg"

    :try_start_c
    iget-object v3, p0, Lcom/tencent/beacon/a/b/g;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const-string v2, "package_name"

    :try_start_d
    iget-object v3, p0, Lcom/tencent/beacon/a/b/g;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const-string v2, "_dc"

    :try_start_e
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->builder()Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const-string v3, "https://h.trace.qq.com/kv"

    :try_start_f
    invoke-virtual {v2, v3}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;->b(Ljava/lang/String;)Lcom/tencent/beacon/base/net/call/HttpRequestEntity$a;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const-string v3, "atta"

    :try_start_10
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

    new-instance v2, Lcom/tencent/beacon/a/b/f;

    invoke-direct {v2, p0}, Lcom/tencent/beacon/a/b/f;-><init>(Lcom/tencent/beacon/a/b/g;)V

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/base/net/call/c;->a(Lcom/tencent/beacon/base/net/call/Callback;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw p0
.end method
