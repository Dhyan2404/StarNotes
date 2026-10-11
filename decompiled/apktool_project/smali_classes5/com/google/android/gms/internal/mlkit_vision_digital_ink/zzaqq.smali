.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqq;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqn;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqm;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqp;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqm;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;)I
    .locals 0

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->zzz(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->zzD(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;I)V

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p2    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->zzB(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->zzE(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;Ljava/util/Set;)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
