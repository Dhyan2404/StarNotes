.class abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaie;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;


# instance fields
.field private transient zza:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahy;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaie;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zzh()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zzb()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zza()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zzd(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    return v1

    :cond_5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakl;->zzc(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zza(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzali;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaie;->zzh()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaie;->zzh()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaie;->zze(Ljava/lang/Object;I)I

    move-result p0

    if-lez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zzg()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zzg()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zzg()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zzg()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaie;->zzh()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method abstract zzb()I
.end method

.method public abstract zzc()Ljava/util/Iterator;
.end method

.method public final zzd(Ljava/lang/Object;I)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public zze(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzf(Ljava/lang/Object;I)I
    .locals 1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zza(Ljava/lang/Object;)I

    move-result p2

    neg-int v0, p2

    if-lez v0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zzd(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    neg-int v0, v0

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zze(Ljava/lang/Object;I)I

    :cond_1
    :goto_0
    return p2
.end method

.method public zzg()Ljava/util/Set;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzh()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaie;->zza:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaid;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaid;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaie;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaie;->zza:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final zzi(Ljava/lang/Object;II)Z
    .locals 1

    const-string p3, "oldCount"

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaij;->zza(ILjava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zza(Ljava/lang/Object;)I

    move-result p3

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;->zzf(Ljava/lang/Object;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method
