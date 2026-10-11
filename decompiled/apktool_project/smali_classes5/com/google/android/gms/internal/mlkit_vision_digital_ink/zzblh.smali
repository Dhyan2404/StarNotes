.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblh;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;
.source "SourceFile"


# instance fields
.field final zza:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbio;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblh;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblh;->zzc()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk()V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzq()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblh;->zza:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;->zzk:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblh;->zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzp()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblh;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnj;->zzb(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboa;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract zzc()Ljava/lang/Object;
.end method

.method public abstract zze(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
