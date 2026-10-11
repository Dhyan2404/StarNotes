.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzg;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapz;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqc;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapz;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;
    .locals 0

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    move-result-object p0

    if-eq p0, p2, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzl(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;)V

    :cond_0
    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;
    .locals 0

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    move-result-object p0

    if-eq p0, p2, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)V

    :cond_0
    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->next:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;)Z
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    move-result-object p0

    if-ne p0, p2, :cond_0

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzl(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;)V

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

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_0

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Ljava/lang/Object;)V

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

.method public final zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)Z
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    move-result-object p0

    if-ne p0, p2, :cond_0

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)V

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
