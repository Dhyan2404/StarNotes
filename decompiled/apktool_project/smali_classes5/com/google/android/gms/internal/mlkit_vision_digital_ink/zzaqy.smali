.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqx;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;ZLjava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;ZZ)V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqv;

    .line 2
    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqx;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;->zzv()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;ZZ)V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqw;

    .line 5
    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqx;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;->zzv()V

    return-void
.end method

.method public static bridge synthetic zzG(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqx;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqx;

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqx;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqx;->zzf()V

    :cond_0
    return-void
.end method

.method public final zzq()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqx;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzash;->zzh()V

    :cond_0
    return-void
.end method

.method public final zzy(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaql;->zzy(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqx;

    :cond_0
    return-void
.end method
