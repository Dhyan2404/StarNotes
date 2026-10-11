.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzb(Ljava/util/Map$Entry;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzb(Ljava/util/Map$Entry;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;Z)V

    return v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzb:I

    return p0
.end method
