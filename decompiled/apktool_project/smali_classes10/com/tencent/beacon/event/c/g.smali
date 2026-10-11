.class public Lcom/tencent/beacon/event/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/beacon/event/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Landroid/os/Handler;


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private volatile B:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Landroid/content/Context;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:J

.field private q:Ljava/util/concurrent/atomic/AtomicLong;

.field private r:Ljava/util/concurrent/atomic/AtomicLong;

.field private s:Ljava/util/concurrent/atomic/AtomicLong;

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/beacon/event/c/g;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "normal_log_id"

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->c:Ljava/lang/String;

    const-string v0, "realtime_log_id"

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->d:Ljava/lang/String;

    const-string v0, "immediate_log_id"

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->e:Ljava/lang/String;

    const-string v0, "normal_min_log_id"

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->f:Ljava/lang/String;

    const-string v0, "normal_max_log_id"

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->g:Ljava/lang/String;

    const-string v0, "realtime_min_log_id"

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->h:Ljava/lang/String;

    const-string v0, "realtime_max_log_id"

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->i:Ljava/lang/String;

    const-string v0, "immediate_min_log_id"

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->j:Ljava/lang/String;

    const-string v0, "immediate_max_log_id"

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->k:Ljava/lang/String;

    const-string v0, "on_date"

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->l:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->o:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->q:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->r:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->s:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/tencent/beacon/event/c/e;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/c/e;-><init>(Lcom/tencent/beacon/event/c/g;)V

    iput-object v0, p0, Lcom/tencent/beacon/event/c/g;->A:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/tencent/beacon/event/c/g;->m:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/beacon/event/c/g;->n:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/tencent/beacon/event/open/EventType;)J
    .locals 1

    .line 19
    sget-object v0, Lcom/tencent/beacon/event/c/f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-wide/16 p0, -0x1

    goto :goto_0

    .line 20
    :pswitch_0
    iget-object p0, p0, Lcom/tencent/beacon/event/c/g;->s:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide p0

    goto :goto_0

    .line 21
    :pswitch_1
    iget-object p0, p0, Lcom/tencent/beacon/event/c/g;->s:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide p0

    goto :goto_0

    .line 22
    :pswitch_2
    iget-object p0, p0, Lcom/tencent/beacon/event/c/g;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide p0

    goto :goto_0

    .line 23
    :pswitch_3
    iget-object p0, p0, Lcom/tencent/beacon/event/c/g;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide p0

    :goto_0
    return-wide p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/tencent/beacon/event/c/g;->z:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new_b_log_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/tencent/beacon/a/c/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/event/c/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/event/c/g;->z:Landroid/content/SharedPreferences;

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/tencent/beacon/event/c/g;->z:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static synthetic a(Lcom/tencent/beacon/event/c/g;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/beacon/event/c/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/beacon/event/c/g;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/tencent/beacon/event/c/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/beacon/event/c/g;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/beacon/event/c/g;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/tencent/beacon/event/c/g;

    invoke-direct {v2, p0, p1}, Lcom/tencent/beacon/event/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static synthetic a(Lcom/tencent/beacon/event/c/g;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/event/c/g;->r:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method private a(JLcom/tencent/beacon/event/open/EventType;)V
    .locals 5

    .line 24
    sget-object v0, Lcom/tencent/beacon/event/open/EventType;->REALTIME:Lcom/tencent/beacon/event/open/EventType;

    const-wide/16 v1, 0x0

    if-eq p3, v0, :cond_8

    sget-object v0, Lcom/tencent/beacon/event/open/EventType;->DT_REALTIME:Lcom/tencent/beacon/event/open/EventType;

    if-ne p3, v0, :cond_0

    goto :goto_5

    .line 25
    :cond_0
    sget-object v0, Lcom/tencent/beacon/event/open/EventType;->NORMAL:Lcom/tencent/beacon/event/open/EventType;

    if-eq p3, v0, :cond_5

    sget-object v0, Lcom/tencent/beacon/event/open/EventType;->DT_NORMAL:Lcom/tencent/beacon/event/open/EventType;

    if-ne p3, v0, :cond_1

    goto :goto_2

    .line 26
    :cond_1
    sget-object v0, Lcom/tencent/beacon/event/open/EventType;->IMMEDIATE_MSF:Lcom/tencent/beacon/event/open/EventType;

    if-eq p3, v0, :cond_2

    sget-object v0, Lcom/tencent/beacon/event/open/EventType;->IMMEDIATE:Lcom/tencent/beacon/event/open/EventType;

    if-ne p3, v0, :cond_b

    .line 27
    :cond_2
    iget-wide v3, p0, Lcom/tencent/beacon/event/c/g;->y:J

    cmp-long p3, v3, v1

    if-nez p3, :cond_3

    move-wide v3, p1

    goto :goto_0

    :cond_3
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lcom/tencent/beacon/event/c/g;->y:J

    .line 28
    iget-wide v3, p0, Lcom/tencent/beacon/event/c/g;->x:J

    cmp-long p3, v3, v1

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :goto_1
    iput-wide p1, p0, Lcom/tencent/beacon/event/c/g;->x:J

    goto :goto_8

    .line 29
    :cond_5
    :goto_2
    iget-wide v3, p0, Lcom/tencent/beacon/event/c/g;->w:J

    cmp-long p3, v3, v1

    if-nez p3, :cond_6

    move-wide v3, p1

    goto :goto_3

    :cond_6
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_3
    iput-wide v3, p0, Lcom/tencent/beacon/event/c/g;->w:J

    .line 30
    iget-wide v3, p0, Lcom/tencent/beacon/event/c/g;->v:J

    cmp-long p3, v3, v1

    if-nez p3, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :goto_4
    iput-wide p1, p0, Lcom/tencent/beacon/event/c/g;->v:J

    goto :goto_8

    .line 31
    :cond_8
    :goto_5
    iget-wide v3, p0, Lcom/tencent/beacon/event/c/g;->u:J

    cmp-long p3, v3, v1

    if-nez p3, :cond_9

    move-wide v3, p1

    goto :goto_6

    :cond_9
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_6
    iput-wide v3, p0, Lcom/tencent/beacon/event/c/g;->u:J

    .line 32
    iget-wide v3, p0, Lcom/tencent/beacon/event/c/g;->t:J

    cmp-long p3, v3, v1

    if-nez p3, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :goto_7
    iput-wide p1, p0, Lcom/tencent/beacon/event/c/g;->t:J

    :cond_b
    :goto_8
    return-void
.end method

.method public static synthetic b(Lcom/tencent/beacon/event/c/g;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/event/c/g;->q:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static synthetic c(Lcom/tencent/beacon/event/c/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/beacon/event/c/g;->t:J

    return-wide v0
.end method

.method private c()V
    .locals 15

    .line 2
    invoke-direct {p0}, Lcom/tencent/beacon/event/c/g;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/tencent/beacon/event/c/g;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/tencent/beacon/event/c/g;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/beacon/a/c/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/tencent/beacon/event/c/g;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-wide v4, p0, Lcom/tencent/beacon/event/c/g;->t:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-wide/16 v8, 0x1

    if-nez v4, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p0, Lcom/tencent/beacon/event/c/g;->t:J

    sub-long/2addr v10, v8

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    :goto_0
    iget-wide v10, p0, Lcom/tencent/beacon/event/c/g;->u:J

    cmp-long v5, v10, v6

    if-nez v5, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p0, Lcom/tencent/beacon/event/c/g;->u:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    :goto_1
    iget-wide v10, p0, Lcom/tencent/beacon/event/c/g;->v:J

    cmp-long v10, v10, v6

    if-nez v10, :cond_2

    move-object v10, v1

    goto :goto_2

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v11, p0, Lcom/tencent/beacon/event/c/g;->v:J

    sub-long/2addr v11, v8

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 9
    :goto_2
    iget-wide v11, p0, Lcom/tencent/beacon/event/c/g;->w:J

    cmp-long v11, v11, v6

    if-nez v11, :cond_3

    move-object v11, v1

    goto :goto_3

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, p0, Lcom/tencent/beacon/event/c/g;->w:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 10
    :goto_3
    iget-wide v12, p0, Lcom/tencent/beacon/event/c/g;->x:J

    cmp-long v12, v12, v6

    if-nez v12, :cond_4

    move-object v8, v1

    goto :goto_4

    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v13, p0, Lcom/tencent/beacon/event/c/g;->x:J

    sub-long/2addr v13, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 11
    :goto_4
    iget-wide v12, p0, Lcom/tencent/beacon/event/c/g;->y:J

    cmp-long v6, v12, v6

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, p0, Lcom/tencent/beacon/event/c/g;->y:J

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process_name="

    .line 13
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&real_logid_min="

    .line 15
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&real_logid_max="

    .line 17
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&normal_logid_min="

    .line 19
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&normal_logid_max="

    .line 21
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&immediate_logid_min="

    .line 23
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&immediate_logid_max="

    .line 25
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&logid_day="

    .line 27
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&appkey="

    .line 29
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/beacon/event/c/g;->n:Ljava/lang/String;

    .line 30
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&bundleid="

    .line 31
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {}, Lcom/tencent/beacon/a/b/i;->e()Lcom/tencent/beacon/a/b/i;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "701"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/tencent/beacon/event/c/g;->g()V

    :cond_6
    return-void
.end method

.method public static synthetic d(Lcom/tencent/beacon/event/c/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/beacon/event/c/g;->p:J

    return-wide v0
.end method

.method private d()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/tencent/beacon/event/c/g;->m:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/beacon/event/c/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "on_date"

    const-wide/16 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/beacon/event/c/g;->p:J

    .line 4
    iget-object v1, p0, Lcom/tencent/beacon/event/c/g;->r:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "realtime_log_id"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 5
    iget-object v1, p0, Lcom/tencent/beacon/event/c/g;->q:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "normal_log_id"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 6
    iget-object v1, p0, Lcom/tencent/beacon/event/c/g;->s:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "immediate_log_id"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string v1, "realtime_min_log_id"

    .line 7
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/beacon/event/c/g;->t:J

    const-string v1, "realtime_max_log_id"

    .line 8
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/beacon/event/c/g;->u:J

    const-string v1, "normal_min_log_id"

    .line 9
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/beacon/event/c/g;->v:J

    const-string v1, "normal_max_log_id"

    .line 10
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/beacon/event/c/g;->w:J

    const-string v1, "immediate_min_log_id"

    .line 11
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/beacon/event/c/g;->x:J

    const-string v1, "immediate_max_log_id"

    .line 12
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/beacon/event/c/g;->y:J

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LogID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/beacon/event/c/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/beacon/event/c/g;->p:J

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/beacon/event/c/g;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/beacon/event/c/g;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object p0, p0, Lcom/tencent/beacon/event/c/g;->s:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, " load LogID from sp, date: %s , realtime: %d, normal: %d, immediate: %d"

    .line 15
    invoke-static {v0, v1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lcom/tencent/beacon/event/c/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/event/c/g;->n:Ljava/lang/String;

    return-object p0
.end method

.method private e()Z
    .locals 6

    .line 2
    invoke-static {}, Lcom/tencent/beacon/base/util/b;->d()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/tencent/beacon/event/c/g;->p:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/beacon/base/util/b;->a(JJ)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic f(Lcom/tencent/beacon/event/c/g;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/event/c/g;->s:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/tencent/beacon/event/c/g;->n:Ljava/lang/String;

    const-string v1, "e_l_e_k"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p0

    new-instance v1, Lcom/tencent/beacon/a/a/c;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v0}, Lcom/tencent/beacon/a/a/c;-><init>(ILjava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/tencent/beacon/a/a/b;->a(Lcom/tencent/beacon/a/a/c;)V

    return-void
.end method

.method public static synthetic g(Lcom/tencent/beacon/event/c/g;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/event/c/g;->m:Landroid/content/Context;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/tencent/beacon/event/c/g;->u:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/beacon/event/c/g;->t:J

    .line 3
    iget-wide v0, p0, Lcom/tencent/beacon/event/c/g;->w:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/beacon/event/c/g;->v:J

    .line 4
    iget-wide v0, p0, Lcom/tencent/beacon/event/c/g;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/beacon/event/c/g;->x:J

    return-void
.end method

.method public static synthetic h(Lcom/tencent/beacon/event/c/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/beacon/event/c/g;->y:J

    return-wide v0
.end method

.method public static synthetic i(Lcom/tencent/beacon/event/c/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/beacon/event/c/g;->x:J

    return-wide v0
.end method

.method public static synthetic j(Lcom/tencent/beacon/event/c/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/beacon/event/c/g;->w:J

    return-wide v0
.end method

.method public static synthetic k(Lcom/tencent/beacon/event/c/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/beacon/event/c/g;->v:J

    return-wide v0
.end method

.method public static synthetic l(Lcom/tencent/beacon/event/c/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/beacon/event/c/g;->u:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/tencent/beacon/event/open/EventType;)Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/beacon/event/c/g;->B:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/tencent/beacon/event/c/g;->a()V

    .line 8
    iput-boolean v1, p0, Lcom/tencent/beacon/event/c/g;->B:Z

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/event/c/g;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 10
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/tencent/beacon/event/c/g;->a(Lcom/tencent/beacon/event/open/EventType;)J

    move-result-wide v2

    .line 11
    invoke-direct {p0}, Lcom/tencent/beacon/event/c/g;->c()V

    .line 12
    invoke-static {}, Lcom/tencent/beacon/base/util/b;->d()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/beacon/event/c/g;->p:J

    .line 13
    invoke-direct {p0, v2, v3, p2}, Lcom/tencent/beacon/event/c/g;->a(JLcom/tencent/beacon/event/open/EventType;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stat "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/beacon/event/c/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    aput-object p1, v4, v1

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v4, p2

    const-string p1, "type: %s, code: %s, logID: %s."

    .line 16
    invoke-static {v0, p1, v4}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    sget-object p1, Lcom/tencent/beacon/event/c/g;->b:Landroid/os/Handler;

    iget-object p2, p0, Lcom/tencent/beacon/event/c/g;->A:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 33
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/beacon/event/c/g;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/Object;

    .line 34
    iget-object v2, p0, Lcom/tencent/beacon/event/c/g;->n:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "LogIDGenerator init appkey = %s"

    invoke-static {v2, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v1

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/a/b/b;->a(I)Landroid/os/Handler;

    move-result-object v1

    sput-object v1, Lcom/tencent/beacon/event/c/g;->b:Landroid/os/Handler;

    .line 36
    iget-object v1, p0, Lcom/tencent/beacon/event/c/g;->o:Ljava/util/List;

    const-string v2, "rqd_model"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, p0, Lcom/tencent/beacon/event/c/g;->o:Ljava/util/List;

    const-string v2, "rqd_appresumed"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-direct {p0}, Lcom/tencent/beacon/event/c/g;->d()V

    .line 39
    invoke-direct {p0}, Lcom/tencent/beacon/event/c/g;->f()V

    .line 40
    iput-boolean v0, p0, Lcom/tencent/beacon/event/c/g;->B:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/beacon/event/c/g;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
