.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagk;
.super Ljava/util/Random;
.source "SourceFile"


# instance fields
.field private final zza:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagk;->zza:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagj;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagk;->zza:Z

    return-void
.end method


# virtual methods
.method public final setSeed(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagk;->zza:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Setting the seed on the shared Random object is not permitted"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
