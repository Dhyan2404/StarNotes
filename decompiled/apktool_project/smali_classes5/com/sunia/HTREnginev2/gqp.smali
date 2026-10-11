.class public final Lcom/sunia/HTREnginev2/gqp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/sunia/HTREnginev2/fqp;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zznb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznb;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzt()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gqp;->a:Lcom/sunia/HTREnginev2/fqp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznb;->b(Lcom/google/android/gms/measurement/internal/zznb;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gqp;->a:Lcom/sunia/HTREnginev2/fqp;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzk()Lcom/sunia/HTREnginev2/hlp;

    move-result-object v0

    iget-object v0, v0, Lcom/sunia/HTREnginev2/hlp;->t:Lcom/google/android/gms/measurement/internal/zzgz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zznb;->zza(Z)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcl:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/xjp;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Retrying trigger URI registration in foreground"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xjp;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->x()V

    :cond_1
    return-void
.end method

.method public final b(J)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v6, Lcom/sunia/HTREnginev2/fqp;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/fqp;-><init>(Lcom/sunia/HTREnginev2/gqp;JJ)V

    iput-object v6, p0, Lcom/sunia/HTREnginev2/gqp;->a:Lcom/sunia/HTREnginev2/fqp;

    iget-object p1, p0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznb;->b(Lcom/google/android/gms/measurement/internal/zznb;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gqp;->a:Lcom/sunia/HTREnginev2/fqp;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
