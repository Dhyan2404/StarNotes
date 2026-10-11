.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrm;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrd;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zzb:Ljava/lang/Thread;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
