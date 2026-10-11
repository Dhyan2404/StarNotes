.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajy;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzale;


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajy;-><init>()V

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zzq()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalu;->zza(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalx;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zzq()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb([Ljava/lang/Object;I)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zzq()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalx;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zza()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zzb()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;->zza()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return p2
.end method

.method public final zzd(Ljava/lang/Object;I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public final zze(Ljava/lang/Object;I)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzf(Ljava/lang/Object;I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic zzg()Ljava/util/Set;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic zzh()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zzq()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p0

    return-object p0
.end method

.method public final zzi(Ljava/lang/Object;II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;->zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    :cond_0
    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalx;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zzq()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajv;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public abstract zzo()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;
.end method

.method public abstract zzp(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzald;
.end method

.method public final zzq()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalr;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajv;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    :cond_1
    return-object v0
.end method
