.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;


# instance fields
.field final zza:Ljava/lang/ref/WeakReference;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zza:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zza:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->cancel(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzb()V

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    instance-of p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    return p0
.end method

.method public final isDone()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->isDone()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final zzb(Ljava/lang/Throwable;)Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrh;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
