.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcau;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;)V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpt;

    move-result-object p0

    return-object p0
.end method
