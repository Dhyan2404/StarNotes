.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzail;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final zza:Ljava/util/Collection;

.field final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzail;->zza:Ljava/util/Collection;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzail;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzail;->zza:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzail;->zza:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzail;->zza:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzail;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakh;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakh;-><init>(Ljava/util/Iterator;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)V

    return-object v1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzail;->zza:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method
