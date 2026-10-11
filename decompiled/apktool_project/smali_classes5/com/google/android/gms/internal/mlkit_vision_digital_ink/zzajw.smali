.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajw;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzake;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzake;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zza()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zzb()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zza(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zza()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zzq()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalu;->zza(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zzo()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public final synthetic zza(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zzp(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;

    move-result-object p0

    return-object p0
.end method

.method public final zzm()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
