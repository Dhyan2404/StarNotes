.class Lcom/tencent/beacon/event/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/event/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private volatile a:J

.field private volatile b:J

.field private volatile c:J

.field final synthetic d:Lcom/tencent/beacon/event/c/g;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/event/c/g;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/beacon/event/c/e;->a:J

    iput-wide v0, p0, Lcom/tencent/beacon/event/c/e;->b:J

    iput-wide v0, p0, Lcom/tencent/beacon/event/c/e;->c:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v1}, Lcom/tencent/beacon/event/c/g;->a(Lcom/tencent/beacon/event/c/g;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v3}, Lcom/tencent/beacon/event/c/g;->b(Lcom/tencent/beacon/event/c/g;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-object v5, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v5}, Lcom/tencent/beacon/event/c/g;->f(Lcom/tencent/beacon/event/c/g;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/tencent/beacon/event/c/e;->a:J

    cmp-long v7, v7, v1

    if-nez v7, :cond_0

    iget-wide v7, p0, Lcom/tencent/beacon/event/c/e;->b:J

    cmp-long v7, v7, v3

    if-nez v7, :cond_0

    iget-wide v7, p0, Lcom/tencent/beacon/event/c/e;->c:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-wide v1, p0, Lcom/tencent/beacon/event/c/e;->a:J

    iput-wide v3, p0, Lcom/tencent/beacon/event/c/e;->b:J

    iput-wide v5, p0, Lcom/tencent/beacon/event/c/e;->c:J

    iget-object v1, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v1}, Lcom/tencent/beacon/event/c/g;->g(Lcom/tencent/beacon/event/c/g;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/beacon/event/c/g;->a(Lcom/tencent/beacon/event/c/g;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/beacon/base/util/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const-string v2, "on_date"

    :try_start_1
    iget-object v3, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v3}, Lcom/tencent/beacon/event/c/g;->d(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "realtime_log_id"

    :try_start_2
    iget-wide v3, p0, Lcom/tencent/beacon/event/c/e;->a:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "normal_log_id"

    :try_start_3
    iget-wide v3, p0, Lcom/tencent/beacon/event/c/e;->b:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "immediate_log_id"

    :try_start_4
    iget-wide v3, p0, Lcom/tencent/beacon/event/c/e;->c:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v2, "realtime_min_log_id"

    :try_start_5
    iget-object v3, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v3}, Lcom/tencent/beacon/event/c/g;->c(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v2, "realtime_max_log_id"

    :try_start_6
    iget-object v3, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v3}, Lcom/tencent/beacon/event/c/g;->l(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v2, "normal_min_log_id"

    :try_start_7
    iget-object v3, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v3}, Lcom/tencent/beacon/event/c/g;->k(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v2, "normal_max_log_id"

    :try_start_8
    iget-object v3, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v3}, Lcom/tencent/beacon/event/c/g;->j(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v2, "immediate_min_log_id"

    :try_start_9
    iget-object v3, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v3}, Lcom/tencent/beacon/event/c/g;->i(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v2, "immediate_max_log_id"

    :try_start_a
    iget-object v3, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v3}, Lcom/tencent/beacon/event/c/g;->h(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v2, "[LogID "

    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v2}, Lcom/tencent/beacon/event/c/g;->e(Lcom/tencent/beacon/event/c/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v2, "]"

    :try_start_c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const-string v2, "  write serial to sp, date: %s ,realtime: %d, normal: %d, immediate: %d "

    const/4 v3, 0x4

    :try_start_d
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v4}, Lcom/tencent/beacon/event/c/g;->d(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/tencent/beacon/event/c/e;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/tencent/beacon/event/c/e;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/tencent/beacon/event/c/e;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v4, 0x3

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw p0
.end method
