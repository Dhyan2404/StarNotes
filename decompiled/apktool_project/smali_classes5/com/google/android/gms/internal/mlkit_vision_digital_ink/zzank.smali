.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzank;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanb;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/logging/Level;

.field private final zzb:Ljava/util/Set;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    sget-object p1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanm;->zzc()Ljava/util/Set;

    move-result-object p3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanm;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;

    move-result-object p4

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanb;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzank;->zza:Ljava/util/logging/Level;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzank;->zzb:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzank;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;

    return-void
.end method
