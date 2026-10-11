.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsc;
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsa;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
