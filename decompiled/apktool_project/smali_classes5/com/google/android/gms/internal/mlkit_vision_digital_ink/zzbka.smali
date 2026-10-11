.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbka;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbka;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbka;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbka;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbjz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbka;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbka;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkc;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbka;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbkd;->zzb:I

    return p0
.end method
