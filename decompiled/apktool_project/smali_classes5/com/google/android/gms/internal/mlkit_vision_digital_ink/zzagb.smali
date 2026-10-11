.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafb;

    return-object v0
.end method

.method public static zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafb;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagi;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagi;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagi;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
.end method

.method public abstract hashCode()I
.end method

.method public abstract zza()Ljava/lang/Object;
.end method

.method public abstract zzb()Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public abstract zzc()Z
.end method
