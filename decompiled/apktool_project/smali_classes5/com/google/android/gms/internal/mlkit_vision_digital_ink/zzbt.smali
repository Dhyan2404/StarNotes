.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;
.end method

.method public abstract zzb(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;
.end method

.method public abstract zzc(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;
.end method

.method public abstract zzd(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;
.end method

.method public abstract zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "Request must provide a group name or source to filter by"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzf(ZLjava/lang/Object;)V

    :cond_0
    return-object p0
.end method
