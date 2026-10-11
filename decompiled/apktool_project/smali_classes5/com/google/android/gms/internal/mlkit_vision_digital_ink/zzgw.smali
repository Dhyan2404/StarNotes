.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgw;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgz;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgy;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;->zzb()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->hashCode()I

    move-result p0

    return p0
.end method

.method public final zzb()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    return-object p0
.end method
