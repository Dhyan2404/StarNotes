.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgd;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;
.source "SourceFile"


# instance fields
.field private zza:Z

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

.field private zzc:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgd;->zza:Z

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgd;->zzc:B

    return-object p0
.end method

.method public final zzb(Ljava/util/Set;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgj;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzg(Ljava/util/Collection;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    :cond_0
    iget-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgd;->zzc:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgd;->zza:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgd;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;-><init>(ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzge;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required properties: requireUnmeteredNetwork"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
