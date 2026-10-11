.class public Lorg/mortbay/thread/Timeout$Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/thread/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field public e:Lorg/mortbay/thread/Timeout$Task;

.field public f:Lorg/mortbay/thread/Timeout$Task;

.field public g:Lorg/mortbay/thread/Timeout;

.field public h:J

.field public i:J

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/thread/Timeout$Task;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/thread/Timeout$Task;->j:Z

    iput-object p0, p0, Lorg/mortbay/thread/Timeout$Task;->f:Lorg/mortbay/thread/Timeout$Task;

    iput-object p0, p0, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    return-void
.end method

.method public static synthetic a(Lorg/mortbay/thread/Timeout$Task;)V
    .locals 0

    invoke-direct {p0}, Lorg/mortbay/thread/Timeout$Task;->d()V

    return-void
.end method

.method public static synthetic b(Lorg/mortbay/thread/Timeout$Task;Lorg/mortbay/thread/Timeout$Task;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/thread/Timeout$Task;->c(Lorg/mortbay/thread/Timeout$Task;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    iget-object v1, p0, Lorg/mortbay/thread/Timeout$Task;->f:Lorg/mortbay/thread/Timeout$Task;

    iput-object v1, v0, Lorg/mortbay/thread/Timeout$Task;->f:Lorg/mortbay/thread/Timeout$Task;

    iget-object v1, p0, Lorg/mortbay/thread/Timeout$Task;->f:Lorg/mortbay/thread/Timeout$Task;

    iput-object v0, v1, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    iput-object p0, p0, Lorg/mortbay/thread/Timeout$Task;->f:Lorg/mortbay/thread/Timeout$Task;

    iput-object p0, p0, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/thread/Timeout$Task;->j:Z

    return-void
.end method


# virtual methods
.method public final c(Lorg/mortbay/thread/Timeout$Task;)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    iput-object p1, v0, Lorg/mortbay/thread/Timeout$Task;->f:Lorg/mortbay/thread/Timeout$Task;

    iput-object p1, p0, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    iput-object v0, p1, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    iget-object p1, p0, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    iput-object p0, p1, Lorg/mortbay/thread/Timeout$Task;->f:Lorg/mortbay/thread/Timeout$Task;

    return-void
.end method

.method public cancel()V
    .locals 3

    iget-object v0, p0, Lorg/mortbay/thread/Timeout$Task;->g:Lorg/mortbay/thread/Timeout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/thread/Timeout;->b(Lorg/mortbay/thread/Timeout;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/mortbay/thread/Timeout$Task;->d()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/mortbay/thread/Timeout$Task;->i:J

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public expire()V
    .locals 0

    return-void
.end method

.method public expired()V
    .locals 0

    return-void
.end method

.method public getAge()J
    .locals 7

    iget-object v0, p0, Lorg/mortbay/thread/Timeout$Task;->g:Lorg/mortbay/thread/Timeout;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/thread/Timeout;->a(Lorg/mortbay/thread/Timeout;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-wide v5, p0, Lorg/mortbay/thread/Timeout$Task;->i:J

    cmp-long p0, v5, v1

    if-eqz p0, :cond_0

    sub-long/2addr v3, v5

    return-wide v3

    :cond_0
    return-wide v1
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/thread/Timeout$Task;->i:J

    return-wide v0
.end method

.method public isExpired()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/thread/Timeout$Task;->j:Z

    return p0
.end method

.method public isScheduled()Z
    .locals 1

    iget-object v0, p0, Lorg/mortbay/thread/Timeout$Task;->e:Lorg/mortbay/thread/Timeout$Task;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reschedule()V
    .locals 3

    iget-object v0, p0, Lorg/mortbay/thread/Timeout$Task;->g:Lorg/mortbay/thread/Timeout;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lorg/mortbay/thread/Timeout$Task;->h:J

    invoke-virtual {v0, p0, v1, v2}, Lorg/mortbay/thread/Timeout;->schedule(Lorg/mortbay/thread/Timeout$Task;J)V

    :cond_0
    return-void
.end method

.method public schedule(Lorg/mortbay/thread/Timeout;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/mortbay/thread/Timeout;->schedule(Lorg/mortbay/thread/Timeout$Task;)V

    return-void
.end method

.method public schedule(Lorg/mortbay/thread/Timeout;J)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0, p2, p3}, Lorg/mortbay/thread/Timeout;->schedule(Lorg/mortbay/thread/Timeout$Task;J)V

    return-void
.end method
