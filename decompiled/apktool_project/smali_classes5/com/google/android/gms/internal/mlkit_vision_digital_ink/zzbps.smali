.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static declared-synchronized zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpc;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbps;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbps;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpr;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpq;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbps;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpr;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbps;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpr;

    invoke-virtual {v1, p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;
    .locals 1

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbps;

    monitor-enter p0

    :try_start_0
    const-string v0, "digital-ink-recognition"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpc;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbps;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpc;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbph;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
