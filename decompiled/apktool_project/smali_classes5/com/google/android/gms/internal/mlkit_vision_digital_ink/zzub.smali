.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field public final synthetic zzd:Landroid/net/Uri;

.field public final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzub;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzub;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzub;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzub;->zzd:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzub;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzub;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzub;->zzd:Landroid/net/Uri;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zza()I

    move-result p1

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zze()I

    const/4 v0, 0x5

    const-string v3, "DownloaderCallbackImpl"

    if-lt p1, v0, :cond_0

    const-string p0, "%s: Checksum mismatch detected but the has already reached retry limit! Skipping removal for file %s"

    invoke-static {p0, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    const-string p1, "%s: Removing file and marking as corrupted due to checksum mismatch"

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    :try_start_0
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzf(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception p0

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s: Failed to remove corrupted file %s"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    :goto_1
    return-object p0
.end method
