.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field zza:I

.field final zzb:I

.field zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

.field final zzd:Ljava/util/Map;


# direct methods
.method public constructor <init>(IILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzd:Ljava/util/Map;

    if-gt p1, p2, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzb:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaee;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
