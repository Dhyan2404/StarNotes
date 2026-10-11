.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalh;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalf;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalh;->zza:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalh;->zzb:I

    const-string p0, "count"

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaij;->zza(ILjava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalh;->zzb:I

    return p0
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalh;->zza:Ljava/lang/Object;

    return-object p0
.end method
