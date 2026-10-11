.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbin;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbin;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;)V

    return-object v0
.end method
