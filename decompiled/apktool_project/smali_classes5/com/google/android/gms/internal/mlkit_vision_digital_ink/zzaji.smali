.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajf;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;

    return-object p0
.end method

.method public final zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajf;

    return-object p0
.end method

.method public final zzg(Ljava/util/Iterator;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;
    .locals 1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;->zza:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaje;->zzb:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzh([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    return-object p0
.end method
