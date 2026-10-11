.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;

.field public final synthetic zzb:J

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;JLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrh;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;

    iget-wide v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrh;->zzb:J

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzv(JLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
