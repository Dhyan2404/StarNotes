.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field zza:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzast;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;)Ljava/util/Deque;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_2

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :cond_0
    :try_start_3
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zza:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;I)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    return-void

    :cond_3
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    or-int/2addr v1, v0

    const/4 v0, 0x0

    :try_start_7
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zza:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zza:Ljava/lang/Runnable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v9, v3

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzc()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "com.google.common.util.concurrent.SequentialExecutor$QueueWorker"

    const-string v7, "workOnQueue"

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zza:Ljava/lang/Runnable;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while executing runnable "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zza:Ljava/lang/Runnable;

    goto :goto_1

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zza:Ljava/lang/Runnable;

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_3
    if-eqz v1, :cond_4

    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw v0
    :try_end_d
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;)Ljava/util/Deque;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;I)V

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v0

    :catchall_3
    move-exception p0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zza:Ljava/lang/Runnable;

    const-string v1, "}"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SequentialExecutorWorker{running="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const-string p0, "null"

    goto :goto_0

    :cond_1
    const-string p0, "RUNNING"

    goto :goto_0

    :cond_2
    const-string p0, "QUEUED"

    goto :goto_0

    :cond_3
    const-string p0, "QUEUING"

    goto :goto_0

    :cond_4
    const-string p0, "IDLE"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SequentialExecutorWorker{state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
