.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzif;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzif;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzif;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzif;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    :goto_0
    return-object p0
.end method
