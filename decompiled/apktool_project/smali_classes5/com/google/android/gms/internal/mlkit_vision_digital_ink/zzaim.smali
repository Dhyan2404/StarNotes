.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaim;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/util/Collection;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagh;)Ljava/util/Collection;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaik;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaik;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagh;)V

    return-object v0
.end method

.method public static zzb(Ljava/util/Collection;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Ljava/util/Collection;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzail;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzail;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)V

    return-object v0
.end method

.method public static zzc(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
