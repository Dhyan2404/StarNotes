.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final zza:Ljava/util/logging/Logger;


# instance fields
.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Ljava/util/Deque;

.field private zzd:J

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;

.field private zzf:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zza:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzc:Ljava/util/Deque;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzf:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzd:J

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzast;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzd:J

    return-wide v0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzc:Ljava/util/Deque;

    return-object p0
.end method

.method public static bridge synthetic zzc()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zza:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzd:J

    return-void
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzf:I

    return p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzf:I

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzc:Ljava/util/Deque;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzf:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzd:J

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzass;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzass;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzc:Ljava/util/Deque;

    invoke-interface {p1, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzf:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzb:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasu;

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzf:I

    if-eq v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzc:Ljava/util/Deque;

    monitor-enter v0

    :try_start_2
    iget-wide v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzd:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzf:I

    if-ne v1, p1, :cond_2

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzf:I

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzc:Ljava/util/Deque;

    monitor-enter v2

    :try_start_3
    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzf:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    if-ne v3, p1, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzc:Ljava/util/Deque;

    invoke-interface {p0, v1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v4, v5

    :cond_4
    instance-of p0, v0, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz p0, :cond_5

    if-nez v4, :cond_5

    monitor-exit v2

    return-void

    :cond_5
    throw v0

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_6
    :goto_0
    :try_start_4
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzc:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasv;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SequentialExecutor@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
