.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field zza:Ljava/lang/Object;

.field zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbru;

.field private zzd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbru;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbru;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbru;

    return-void
.end method

.method private final zze()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zza:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbru;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrq;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zza:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb(Ljava/lang/Throwable;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzd:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbru;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbru;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zza:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbru;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzc(Ljava/lang/Object;)Z
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zza(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zze()V

    :cond_1
    return p1
.end method

.method public final zzd(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzd:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zze()V

    :cond_1
    return v0
.end method
