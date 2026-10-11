.class abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(C)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzd(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaok;->zza(C)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
