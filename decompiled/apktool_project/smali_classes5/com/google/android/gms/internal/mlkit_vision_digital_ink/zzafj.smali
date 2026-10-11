.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafh;
.source "SourceFile"


# instance fields
.field private final zza:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafh;-><init>()V

    iput-char p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;->zza:C

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.is(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;->zza:C

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzn(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Ljava/util/BitSet;)V
    .locals 0

    iget-char p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;->zza:C

    invoke-virtual {p1, p0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public final zzc(C)Z
    .locals 0

    iget-char p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafj;->zza:C

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
