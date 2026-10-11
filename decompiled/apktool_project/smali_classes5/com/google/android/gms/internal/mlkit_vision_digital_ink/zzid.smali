.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzid;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzid;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzid;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzid;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalx;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object p0

    return-object p0
.end method
