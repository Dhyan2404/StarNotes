.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzare;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;

.field final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzare;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzare;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzare;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzare;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarf;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarf;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzare;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
