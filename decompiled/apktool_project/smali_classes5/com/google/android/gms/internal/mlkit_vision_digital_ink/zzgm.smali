.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;
.end method

.method public abstract zzc(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;
.end method

.method public abstract zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;
.end method

.method public abstract zze(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;
.end method

.method public abstract zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;
.end method

.method public abstract zzg()Ljava/lang/String;
.end method

.method public final zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;->zzg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inlinefile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "InlineDownloadParams must be set when using inlinefile: scheme"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzf(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;

    move-result-object p0

    return-object p0
.end method
