.class public Lcom/tencent/qimei/r/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qimei/r/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/r/n;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/r/n;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/r/n;->e:Ljava/lang/Object;

    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/qimei/r/n;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/r/n;
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/qimei/r/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/r/n;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/r/n;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/qimei/r/n;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/r/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic a(Lcom/tencent/qimei/r/n;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/tencent/qimei/r/n;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/r/n;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "tn"

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/tencent/qimei/l/g;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public b()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/tencent/qimei/r/n;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/r/n;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/tencent/qimei/r/n;->c:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    invoke-virtual {p0}, Lcom/tencent/qimei/r/n;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qimei/r/n;->a()V

    const-string v0, ""

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qimei/r/n;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qimei/r/n;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/tencent/qimei/r/n;->c()Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/b/a;->g(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/tencent/qimei/r/c;->a:Lcom/tencent/qimei/r/c;

    .line 5
    invoke-static {}, Lcom/tencent/qimei/m/a;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/tencent/qimei/r/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/sdk/Qimei;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qimei/r/n;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/tencent/qimei/r/n;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    :cond_4
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/qimei/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_5
    iget-object v1, p0, Lcom/tencent/qimei/r/n;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/tencent/qimei/r/n;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v0, p0, Lcom/tencent/qimei/r/n;->c:Ljava/lang/String;

    :cond_6
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/r/n;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "tn"

    :try_start_1
    invoke-virtual {v1, v2, p1}, Lcom/tencent/qimei/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "t_s_t"

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/tencent/qimei/l/g;->a(Ljava/lang/String;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/b/a;->g(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    sget-object v1, Lcom/tencent/qimei/r/c;->a:Lcom/tencent/qimei/r/c;

    invoke-static {}, Lcom/tencent/qimei/m/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/tencent/qimei/r/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/sdk/Qimei;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v1

    new-instance v2, Lcom/tencent/qimei/r/m;

    invoke-direct {v2, p0, v0}, Lcom/tencent/qimei/r/m;-><init>(Lcom/tencent/qimei/r/n;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qimei/d/a;->a(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public d()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/t/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/t/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/t/a;->a()Z

    move-result p0

    return p0
.end method

.method public e()Z
    .locals 4

    iget-object p0, p0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object p0

    const-string v0, "t_s_t"

    invoke-virtual {p0, v0}, Lcom/tencent/qimei/l/g;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x18

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/qimei/b/a;->a(JJ)Z

    move-result p0

    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/r/n;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/tencent/qimei/r/n;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "tn"

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/tencent/qimei/l/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
