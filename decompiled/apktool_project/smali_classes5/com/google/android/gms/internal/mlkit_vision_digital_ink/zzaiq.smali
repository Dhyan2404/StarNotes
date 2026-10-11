.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzk()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzc:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object p0, p0, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzk()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaio;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaio;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzk()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzo()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;)Ljava/lang/Object;

    move-result-object v6

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    iget-object v7, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zza:[I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzb:[Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzc:[Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, v0

    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiy;->zzb(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzn(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;)I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->zzl()V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaiv;->size()I

    move-result p0

    return p0
.end method
