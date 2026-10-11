.class public Lcom/tencent/qimei/aa/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qimei/aa/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Object;


# instance fields
.field public final c:Ljava/lang/String;

.field public d:Lcom/tencent/qimei/aa/f;

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/aa/c;->a:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/qimei/aa/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qimei/aa/c;->e:Z

    iput-object p1, p0, Lcom/tencent/qimei/aa/c;->c:Ljava/lang/String;

    new-instance v0, Lcom/tencent/qimei/aa/f;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qimei/aa/f;-><init>(Lcom/tencent/qimei/aa/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/aa/c;->d:Lcom/tencent/qimei/aa/f;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/aa/c;
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/qimei/aa/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/aa/c;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/aa/c;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/qimei/aa/c;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/aa/c;-><init>(Ljava/lang/String;)V

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

.method public static synthetic a(Lcom/tencent/qimei/aa/c;)Lcom/tencent/qimei/aa/f;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/qimei/aa/c;->d:Lcom/tencent/qimei/aa/f;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/qimei/aa/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/aa/c;->b()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 3
    sget-object v0, Lcom/tencent/qimei/aa/c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/qimei/aa/c;->e:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a()Z
    .locals 1

    .line 4
    sget-object v0, Lcom/tencent/qimei/aa/c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/tencent/qimei/aa/c;->e:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/aa/c;->c:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/tencent/qimei/f/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/f/c;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qimei/aa/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v1, "s_s_t"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/l/g;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x18

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/qimei/b/a;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/tencent/qimei/aa/c;->d:Lcom/tencent/qimei/aa/f;

    .line 5
    iget-object v0, v0, Lcom/tencent/qimei/aa/f;->d:Lcom/tencent/qimei/aa/g;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/tencent/qimei/r/l;

    invoke-virtual {v0}, Lcom/tencent/qimei/r/l;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDK_INIT \uff5c STRATEGY"

    const-string v2, "more than 24 hours since the last Strategy request"

    .line 6
    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qimei/aa/c;->d:Lcom/tencent/qimei/aa/f;

    .line 7
    iget-object v0, v0, Lcom/tencent/qimei/aa/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/aa/c;->d:Lcom/tencent/qimei/aa/f;

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/d/a;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
