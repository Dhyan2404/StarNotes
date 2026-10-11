.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# instance fields
.field zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field zzb:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field zzc:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field zzd:Ljava/lang/Thread;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarg;)V
    .locals 0

    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarf;

    invoke-direct {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzb:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarf;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzb:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzd:Ljava/lang/Thread;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;->zza:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzd:Ljava/lang/Thread;

    if-ne v1, v3, :cond_2

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;->zzb:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzj(Z)V

    iput-object p1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;->zzb:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzb:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;->zzc:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzb:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzb:Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzb:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzc:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzd:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception p1

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzd:Ljava/lang/Thread;

    throw p1
.end method

.method public final run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzd:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzc:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzari;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;->zza:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;->zzc:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object p0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;->zzb:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;->zzc:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;->zzb:Ljava/lang/Runnable;

    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;->zzc:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;->zza:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception p0

    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarj;->zza:Ljava/lang/Thread;

    throw p0
.end method
