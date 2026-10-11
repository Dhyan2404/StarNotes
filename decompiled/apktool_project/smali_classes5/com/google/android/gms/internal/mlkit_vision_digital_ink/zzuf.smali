.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zza()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;->zzc(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzu(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
