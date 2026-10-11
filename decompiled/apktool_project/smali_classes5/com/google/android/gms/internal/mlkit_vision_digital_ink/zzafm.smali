.class Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafm;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;
.source "SourceFile"


# instance fields
.field final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, ".negate()"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Ljava/util/BitSet;)V
    .locals 2

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzb(Ljava/util/BitSet;)V

    const/4 p0, 0x0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->flip(II)V

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void
.end method

.method public final zzc(C)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzc(C)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzd(Ljava/lang/CharSequence;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafm;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzg(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
