.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zza()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzu()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    return-object p0
.end method
