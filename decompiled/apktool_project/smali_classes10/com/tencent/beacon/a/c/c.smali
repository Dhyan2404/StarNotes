.class public Lcom/tencent/beacon/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/tencent/beacon/a/c/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:B

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/tencent/beacon/a/c/c;->c:B

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/c/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/beacon/a/c/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/beacon/a/c/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/beacon/a/c/c;->h:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/beacon/a/c/c;->i:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/beacon/a/c/c;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/beacon/a/c/c;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/beacon/a/c/c;->l:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/a/c/c;->m:Z

    iput-byte v0, p0, Lcom/tencent/beacon/a/c/c;->c:B

    const-string v0, "beacon"

    iput-object v0, p0, Lcom/tencent/beacon/a/c/c;->d:Ljava/lang/String;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/beacon/a/c/c;->f:Ljava/lang/String;

    return-void
.end method

.method public static c()Lcom/tencent/beacon/a/c/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/beacon/a/c/c;->a:Lcom/tencent/beacon/a/c/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/beacon/a/c/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/beacon/a/c/c;->a:Lcom/tencent/beacon/a/c/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/beacon/a/c/c;

    invoke-direct {v1}, Lcom/tencent/beacon/a/c/c;-><init>()V

    sput-object v1, Lcom/tencent/beacon/a/c/c;->a:Lcom/tencent/beacon/a/c/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/beacon/a/c/c;->a:Lcom/tencent/beacon/a/c/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tencent/beacon/module/ModuleName;)Lcom/tencent/beacon/module/BeaconModule;
    .locals 0

    .line 8
    sget-object p0, Lcom/tencent/beacon/module/BeaconModule;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/beacon/module/BeaconModule;

    return-object p0
.end method

.method public declared-synchronized a()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/a/c/c;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/tencent/beacon/a/c/c;->i:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public declared-synchronized a(J)V
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    iput-wide p1, p0, Lcom/tencent/beacon/a/c/c;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/a/c/c;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/c/c;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/tencent/beacon/a/c/c;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/tencent/beacon/a/c/c;->i:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/tencent/beacon/a/c/c;->m:Z

    return-void
.end method

.method public declared-synchronized b()Landroid/content/Context;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/a/c/c;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/a/c/c;->f:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/tencent/beacon/a/c/c;->h:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/a/c/c;->l:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/tencent/beacon/a/c/c;->k:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/tencent/beacon/a/c/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/a/c/c;->k:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized g()B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/tencent/beacon/a/c/c;->c:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/a/c/c;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    const-string p0, "4.2.86.7-hf1"

    return-object p0
.end method

.method public declared-synchronized j()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/beacon/a/c/c;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/a/c/c;->j:Ljava/lang/String;

    return-object p0
.end method
