.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# instance fields
.field protected zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    return-void
.end method


# virtual methods
.method public final zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    return-object p0
.end method
