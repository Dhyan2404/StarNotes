.class public Lcom/tencent/qimei/r/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qimei/r/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Lcom/tencent/qimei/sdk/Qimei;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/r/b;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qimei/r/b;->h:Z

    iput-object p1, p0, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/qimei/r/b;->d:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/qimei/r/b;->e:J

    iput v0, p0, Lcom/tencent/qimei/r/b;->f:I

    iput-boolean v0, p0, Lcom/tencent/qimei/r/b;->g:Z

    new-instance v0, Lcom/tencent/qimei/sdk/Qimei;

    invoke-direct {v0, v1, v1, p1}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/r/b;
    .locals 4

    const-class v0, Lcom/tencent/qimei/r/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/r/b;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/r/b;

    if-nez v2, :cond_1

    new-instance v2, Lcom/tencent/qimei/r/b;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/r/b;-><init>(Ljava/lang/String;)V

    .line 2
    iget-boolean v3, v2, Lcom/tencent/qimei/r/b;->h:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/tencent/qimei/r/b;->a()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tencent/qimei/r/b;->h:Z

    .line 3
    :goto_0
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/b/a;->g(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qimei/r/b;->a(Lcom/tencent/qimei/sdk/Qimei;)V

    iget-object v0, p0, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/t/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/t/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/t/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    .line 4
    new-instance v2, Lcom/tencent/qimei/sdk/Qimei;

    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/tencent/qimei/t/a;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v4}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/tencent/qimei/t/a;->g:Lcom/tencent/qimei/sdk/Qimei;

    .line 5
    new-instance v0, Lcom/tencent/qimei/sdk/Qimei;

    iget-object v1, p0, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    iget-object v0, p0, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/b/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/tencent/qimei/l/g;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/tencent/qimei/l/g;->c:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Lcom/tencent/qimei/f/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/f/c;->b()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, v0, Lcom/tencent/qimei/l/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/Qimei;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "QM"

    const-string v4, "Local qm cache not found, try load from old version cache(appKey: %s)"

    invoke-static {v1, v4, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/r/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    if-nez v0, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "QM"

    const-string v2, "Local qm cache failed(appKey: %s)"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iput-object v0, p0, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    iput-boolean v3, p0, Lcom/tencent/qimei/r/b;->g:Z

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/Qimei;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "QM"

    const-string v2, "(appKey: %s) Qm load successfully from cache, detail: %s"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/tencent/qimei/sdk/Qimei;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qimei/o/d;->a(Ljava/lang/String;)Lcom/tencent/qimei/o/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qimei/o/d;->b()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/tencent/qimei/m/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
