.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    if-nez p1, :cond_0

    const-string p1, "%s: getSharedFile called on file that doesn\'t exist! Key = %s"

    const-string v0, "SharedFileManager"

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzro;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzro;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    :goto_0
    return-object p0
.end method
