.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajt;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;->map:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;->size:I

    return p0
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;->map:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public final synthetic zzg()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;->map:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p0

    return-object p0
.end method

.method public final zzm()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzo()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;->map:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p0

    return-object p0
.end method

.method public final zzp(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaju;->map:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;->zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalh;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalh;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method
