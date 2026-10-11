.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzks;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzks;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajz;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzu()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzE()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrp;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajz;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajz;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p0

    return-object p0
.end method
