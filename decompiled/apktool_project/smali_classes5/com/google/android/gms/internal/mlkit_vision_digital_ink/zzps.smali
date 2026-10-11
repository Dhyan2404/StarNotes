.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzps;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzps;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbw;

    :cond_0
    return-object p0
.end method
