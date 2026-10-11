.class public final Lcom/tencent/qimei/r/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/tencent/qimei/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qimei/r/f$b;,
        Lcom/tencent/qimei/r/f$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qimei/r/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:J

.field public d:Lcom/tencent/qimei/r/f$b;

.field public e:Lcom/tencent/qimei/c/c;

.field public f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:J

.field public h:J

.field public i:Z

.field public j:Ljava/lang/String;

.field public final k:Lcom/tencent/qimei/r/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/r/f;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    sput-object v0, Lcom/tencent/qimei/r/f;->b:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qimei/r/f;->c:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/qimei/r/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/tencent/qimei/r/f;->i:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    new-instance v0, Lcom/tencent/qimei/r/f$a;

    new-instance v2, Lcom/tencent/qimei/r/d;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/r/d;-><init>(Lcom/tencent/qimei/r/f;)V

    const/4 v3, 0x3

    invoke-direct {v0, v3, v2}, Lcom/tencent/qimei/r/f$a;-><init>(ILcom/tencent/qimei/r/f$a$a;)V

    iput-object v0, p0, Lcom/tencent/qimei/r/f;->k:Lcom/tencent/qimei/r/f$a;

    iput-object p1, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    new-instance p0, Ljava/util/Random;

    const-class p1, Lcom/tencent/qimei/r/f;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v4, p1

    invoke-direct {p0, v4, v5}, Ljava/util/Random;-><init>(J)V

    :goto_0
    if-ge v1, v3, :cond_0

    sget-object p1, Lcom/tencent/qimei/r/f;->b:Ljava/util/Queue;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/tencent/qimei/r/f$b;)Lcom/tencent/qimei/r/f;
    .locals 3
    .param p1    # Lcom/tencent/qimei/r/f$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-class v0, Lcom/tencent/qimei/r/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qimei/r/f;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/r/f;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/qimei/r/f;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/r/f;-><init>(Ljava/lang/String;)V

    iput-object p1, v2, Lcom/tencent/qimei/r/f;->d:Lcom/tencent/qimei/r/f$b;

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

.method public static synthetic a(Lcom/tencent/qimei/r/f;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/tencent/qimei/r/f;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qimei/r/f;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qimei/r/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qimei/r/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qimei/r/f;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/tencent/qimei/r/f;->i:Z

    return p1
.end method

.method public static synthetic b(Lcom/tencent/qimei/r/f;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/tencent/qimei/w/b;->a:Ljava/util/Random;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 3
    invoke-static {v0}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/tencent/qimei/ac/b;->q()I

    move-result v0

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qimei/r/f;->h:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/tencent/qimei/r/f;->g:J

    sub-long/2addr v0, v4

    invoke-static {}, Lcom/tencent/qimei/e/c;->j()Lcom/tencent/qimei/e/c;

    move-result-object v4

    iget-wide v4, v4, Lcom/tencent/qimei/e/c;->d:J

    iget-object v6, p0, Lcom/tencent/qimei/r/f;->d:Lcom/tencent/qimei/r/f$b;

    if-eqz v6, :cond_2

    check-cast v6, Lcom/tencent/qimei/r/l;

    .line 6
    iget-wide v6, v6, Lcom/tencent/qimei/r/l;->k:J

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x0

    .line 7
    :goto_1
    iget-object p0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/tencent/qimei/q/i;->b()Lcom/tencent/qimei/q/i;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/qimei/q/i;->a()Lcom/tencent/qimei/q/c;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 9
    iget-object v3, v9, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v10, "p1"

    invoke-interface {v3, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 11
    iget-object v1, v9, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v2, "p2"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 13
    iget-object v1, v9, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v2, "p3"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 15
    iget-object v1, v9, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v2, "p4"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v1"

    const-string v1, "/report"

    .line 16
    invoke-virtual {v8, v9, v0, p0, v1}, Lcom/tencent/qimei/q/i;->b(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/tencent/qimei/r/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qimei/r/f;->k:Lcom/tencent/qimei/r/f$a;

    .line 7
    iget-object v1, v0, Lcom/tencent/qimei/r/f$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v0, v0, Lcom/tencent/qimei/r/f$a;->a:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    const-string v1, "451"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1001"

    goto :goto_1

    :cond_1
    const-string p1, "1000"

    :goto_1
    invoke-static {}, Lcom/tencent/qimei/q/i;->b()Lcom/tencent/qimei/q/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/q/i;->a()Lcom/tencent/qimei/q/c;

    move-result-object v2

    .line 10
    iget-object v3, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v4, "p1"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error code: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", msg:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object p2, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string p3, "p2"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v2"

    const-string p2, "/report"

    .line 13
    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/tencent/qimei/q/i;->b(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qimei/r/f;->d()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ""

    sget-object v0, Lcom/tencent/qimei/i/a;->c:Lcom/tencent/qimei/k/d;

    invoke-virtual {v0, v2}, Lcom/tencent/qimei/k/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qimei/r/f;->d()V

    return-void

    .line 15
    :cond_0
    sget-object v0, Lcom/tencent/qimei/i/a;->d:Lcom/tencent/qimei/k/d;

    invoke-virtual {v0, v2}, Lcom/tencent/qimei/k/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :try_start_0
    invoke-static {v0, v3}, Lcom/tencent/qimei/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 17
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v4

    .line 18
    :goto_0
    iget-object v7, v1, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    filled-new-array {v7, v0}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "QM"

    const-string v9, "(appKey: %s)QM response, data decryption result: %s"

    invoke-static {v8, v9, v7}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "v2"

    const-string v8, "/report"

    const-string v9, "p2"

    const-string v10, "p1"

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v2, v1, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/r/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/b;

    move-result-object v2

    .line 19
    iget-object v3, v2, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    .line 20
    iget-object v11, v1, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    .line 21
    invoke-static {v0, v11}, Lcom/tencent/qimei/r/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v11

    .line 22
    invoke-virtual {v2, v11}, Lcom/tencent/qimei/r/b;->a(Lcom/tencent/qimei/sdk/Qimei;)V

    .line 23
    iget-object v11, v2, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    .line 24
    iget-boolean v12, v2, Lcom/tencent/qimei/r/b;->g:Z

    if-eqz v3, :cond_8

    .line 25
    invoke-virtual {v3}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/tencent/qimei/sdk/Qimei;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lcom/tencent/qimei/sdk/Qimei;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v13, :cond_8

    if-nez v3, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v11}, Lcom/tencent/qimei/sdk/Qimei;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/tencent/qimei/sdk/Qimei;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_2

    :cond_6
    iget-object v15, v1, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    move-object/from16 v16, v4

    .line 26
    invoke-static {}, Lcom/tencent/qimei/q/i;->b()Lcom/tencent/qimei/q/i;

    move-result-object v4

    move-object/from16 v17, v6

    invoke-virtual {v4}, Lcom/tencent/qimei/q/i;->a()Lcom/tencent/qimei/q/c;

    move-result-object v6

    move-object/from16 v18, v0

    .line 27
    iget-object v0, v6, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v3, "p3"

    invoke-interface {v0, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v3, "p4"

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_7

    const-string v0, "1"

    goto :goto_1

    :cond_7
    move-object/from16 v0, v17

    :goto_1
    iget-object v3, v6, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v11, "p5"

    invoke-interface {v3, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v3"

    .line 28
    invoke-virtual {v4, v6, v0, v15, v8}, Lcom/tencent/qimei/q/i;->b(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    :goto_2
    move-object/from16 v18, v0

    move-object/from16 v16, v4

    .line 29
    :goto_3
    iget-object v0, v1, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/r/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/b;

    move-result-object v0

    .line 30
    iget-object v0, v0, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, v1, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/tencent/qimei/q/i;->b()Lcom/tencent/qimei/q/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qimei/q/i;->a()Lcom/tencent/qimei/q/c;

    move-result-object v4

    .line 33
    iget-object v6, v4, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v11, "1004"

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v4, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v3, v4, v7, v0, v8}, Lcom/tencent/qimei/q/i;->b(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_4
    iget-object v0, v2, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    if-eqz v0, :cond_b

    .line 36
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qimei/r/f;->c()V

    iget-object v0, v1, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    move-object/from16 v4, v18

    invoke-static {v0, v4}, Lcom/tencent/qimei/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/tencent/qimei/r/f;->c:J

    .line 37
    iput-wide v3, v2, Lcom/tencent/qimei/r/b;->e:J

    .line 38
    iget-object v0, v2, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/o/d;->a(Ljava/lang/String;)Lcom/tencent/qimei/o/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/o/d;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move-object/from16 v4, v16

    goto :goto_5

    :cond_a
    invoke-static {v0}, Lcom/tencent/qimei/m/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    :goto_5
    iput-object v4, v2, Lcom/tencent/qimei/r/b;->d:Ljava/lang/String;

    iget-object v0, v2, Lcom/tencent/qimei/r/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    iget-object v2, v2, Lcom/tencent/qimei/r/b;->d:Ljava/lang/String;

    const-string v3, "tt"

    invoke-virtual {v0, v3, v2}, Lcom/tencent/qimei/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qimei/r/f;->a()V

    return-void

    :cond_c
    :goto_6
    iget-object v0, v1, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/tencent/qimei/q/i;->b()Lcom/tencent/qimei/q/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qimei/q/i;->a()Lcom/tencent/qimei/q/c;

    move-result-object v5

    .line 42
    iget-object v6, v5, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v11, "1002"

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decrypt error, aes key: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", content:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    iget-object v3, v5, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    invoke-interface {v3, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v4, v5, v7, v0, v8}, Lcom/tencent/qimei/q/i;->b(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qimei/r/f;->d()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/r/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/b/a;->g(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/r/b;->a(Lcom/tencent/qimei/sdk/Qimei;)V

    iget-object v0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/r/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/b;

    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    invoke-virtual {p0}, Lcom/tencent/qimei/r/f;->c()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qimei/x/b;->a()Lcom/tencent/qimei/x/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BizInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qimei/x/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/z/a;

    move-result-object v1

    instance-of v2, v1, Lcom/tencent/qimei/y/b;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/tencent/qimei/y/b;

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    move-object v2, v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/qimei/x/b;->a()Lcom/tencent/qimei/x/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qimei/x/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/z/a;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/qimei/y/b;

    if-eqz v1, :cond_3

    move-object v4, v0

    check-cast v4, Lcom/tencent/qimei/y/b;

    :cond_3
    :goto_1
    invoke-interface {v4}, Lcom/tencent/qimei/y/b;->f()V

    :goto_2
    iget-object p0, p0, Lcom/tencent/qimei/r/f;->e:Lcom/tencent/qimei/c/c;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/tencent/qimei/c/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/qimei/n/a;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "QM"

    const-string v2, "QM request failed(appKey: %s)"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/qimei/r/f;->a()V

    iget-boolean v0, p0, Lcom/tencent/qimei/r/f;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/tencent/qimei/r/f;->i:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/r/f;->k:Lcom/tencent/qimei/r/f$a;

    iget-object v2, v0, Lcom/tencent/qimei/r/f$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v2, v0, Lcom/tencent/qimei/r/f$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, v0, Lcom/tencent/qimei/r/f$a;->a:I

    const/4 v4, 0x1

    if-le v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v0, Lcom/tencent/qimei/r/f$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, v0, Lcom/tencent/qimei/r/f$a;->b:Lcom/tencent/qimei/r/f$a$a;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/tencent/qimei/r/d;

    iget-object v1, v0, Lcom/tencent/qimei/r/d;->a:Lcom/tencent/qimei/r/f;

    invoke-static {v1}, Lcom/tencent/qimei/r/f;->a(Lcom/tencent/qimei/r/f;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/ac/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/tencent/qimei/r/d;->a:Lcom/tencent/qimei/r/f;

    invoke-static {v1, v4}, Lcom/tencent/qimei/r/f;->a(Lcom/tencent/qimei/r/f;Z)Z

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/qimei/r/d;->a:Lcom/tencent/qimei/r/f;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4, v0}, Lcom/tencent/qimei/d/a;->a(JLjava/lang/Runnable;)V

    :cond_3
    :goto_1
    if-nez v2, :cond_5

    sget-object v0, Lcom/tencent/qimei/r/f;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x0

    :goto_2
    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p0}, Lcom/tencent/qimei/d/a;->a(JLjava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public run()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qimei/r/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "QM"

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "QM is requesting,cancel this request(appKey: %s)"

    invoke-static {v1, v0, p0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/r/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/tencent/qimei/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "no network,cancel QM request(appKey: %s)"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/qimei/r/f;->a()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/f/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/f/c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/qimei/c/c;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/c/c;-><init>(Lcom/tencent/qimei/c/b;)V

    iput-object v0, p0, Lcom/tencent/qimei/r/f;->e:Lcom/tencent/qimei/c/c;

    invoke-virtual {v0}, Lcom/tencent/qimei/c/c;->a()V

    invoke-virtual {p0}, Lcom/tencent/qimei/r/f;->b()V

    invoke-virtual {p0}, Lcom/tencent/qimei/r/f;->a()V

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/qimei/r/f;->g:J

    sget-object v4, Lcom/tencent/qimei/r/c;->a:Lcom/tencent/qimei/r/c;

    invoke-static {}, Lcom/tencent/qimei/m/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/qimei/ac/b;->l:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tencent/qimei/r/f;->i:Z

    const-string v5, ""

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qimei/aa/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/aa/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qimei/aa/a;->a()Lcom/tencent/qimei/ac/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qimei/ac/b;->p()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v5

    :goto_0
    invoke-virtual {v4, v2, v3}, Lcom/tencent/qimei/r/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qimei/r/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/r/b;

    move-result-object v3

    iget-object v7, v3, Lcom/tencent/qimei/r/b;->c:Lcom/tencent/qimei/sdk/Qimei;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/tencent/qimei/r/f;->c:J

    iget-object v3, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qimei/b/a;->c(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "delay"

    :try_start_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    move-object v10, v5

    :goto_1
    iget-object v6, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    iget-wide v8, p0, Lcom/tencent/qimei/r/f;->c:J

    move-object v5, v0

    invoke-virtual/range {v4 .. v10}, Lcom/tencent/qimei/r/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/sdk/Qimei;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "The parameter to get the QM request is wrong, cancel the QM request(appKey: %s)"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qimei/q/i;->b()Lcom/tencent/qimei/q/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/q/i;->a()Lcom/tencent/qimei/q/c;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v4, "p1"

    const-string v5, "1007"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "v2"

    const-string v4, "/report"

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/tencent/qimei/q/i;->b(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qimei/r/f;->a()V

    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/qimei/r/f;->h:J

    new-instance v4, Lcom/tencent/qimei/r/e;

    invoke-direct {v4, p0, v0}, Lcom/tencent/qimei/r/e;-><init>(Lcom/tencent/qimei/r/f;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/tencent/qimei/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/g/c;)V

    iget-object p0, p0, Lcom/tencent/qimei/r/f;->j:Ljava/lang/String;

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "start request QM(appKey: %s), url: %s"

    invoke-static {v1, v0, p0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
