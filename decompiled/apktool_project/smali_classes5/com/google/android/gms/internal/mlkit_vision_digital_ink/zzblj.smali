.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblj;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblh;
.source "SourceFile"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblh;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;

    return-void
.end method


# virtual methods
.method public final zzc()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzblj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbke;->zza()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zze(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbli;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;Ljava/lang/Object;)V

    return-void
.end method
