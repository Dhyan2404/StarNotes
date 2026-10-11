.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaie;
.source "SourceFile"


# instance fields
.field final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaie;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;->zzq()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;->zzr(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;->zzu()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakr;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;->zzh()I

    move-result p0

    return p0
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;->zzv()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakx;->zza(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final zzb()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;->zzv()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final zzc()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalb;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;->zzv()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final zze(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaij;->zza(ILjava/lang/String;)I

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;->zza(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;->zzv()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakx;->zza(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return p1

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    if-ge p1, p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final zzg()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;->zzw()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
