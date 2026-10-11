.class public abstract Lcom/sunia/HTREnginev2/ehp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:Landroid/os/Handler;


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/anp;

.field public final b:Ljava/lang/Runnable;

.field public volatile c:J


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/anp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ehp;->a:Lcom/sunia/HTREnginev2/anp;

    new-instance v0, Lcom/sunia/HTREnginev2/jhp;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/jhp;-><init>(Lcom/sunia/HTREnginev2/ehp;Lcom/sunia/HTREnginev2/anp;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/ehp;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic c(Lcom/sunia/HTREnginev2/ehp;J)V
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/ehp;->c:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/ehp;->c:J

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ehp;->f()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ehp;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ehp;->a()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ehp;->a:Lcom/sunia/HTREnginev2/anp;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/anp;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/ehp;->c:J

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ehp;->f()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ehp;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ehp;->a:Lcom/sunia/HTREnginev2/anp;

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/anp;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p0

    const-string v0, "Failed to schedule delayed post. time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract d()V
.end method

.method public final e()Z
    .locals 4

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/ehp;->c:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Landroid/os/Handler;
    .locals 2

    sget-object v0, Lcom/sunia/HTREnginev2/ehp;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sunia/HTREnginev2/ehp;->d:Landroid/os/Handler;

    return-object p0

    :cond_0
    const-class v0, Lcom/sunia/HTREnginev2/ehp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sunia/HTREnginev2/ehp;->d:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzdh;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ehp;->a:Lcom/sunia/HTREnginev2/anp;

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/anp;->zza()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzdh;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/sunia/HTREnginev2/ehp;->d:Landroid/os/Handler;

    :cond_1
    sget-object p0, Lcom/sunia/HTREnginev2/ehp;->d:Landroid/os/Handler;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
