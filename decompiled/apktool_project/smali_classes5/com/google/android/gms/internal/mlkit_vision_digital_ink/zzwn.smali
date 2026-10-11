.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzg()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkUsageMonitor"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s: Unable to increment LoggingStateStore network usage for %s"

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzg()Ljava/lang/String;

    move-result-object p0

    const-string p1, "%s: Successfully incremented LoggingStateStore network usage for %s"

    const-string v0, "NetworkUsageMonitor"

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    return-void
.end method
