.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajs;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;
.source "SourceFile"


# instance fields
.field final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaic;->zzx(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;->size:I

    return p0
.end method

.method public final zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalx;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;)V

    return-object v0
.end method

.method public final zzm()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
