.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqv;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqx;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqv;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    const-string v1, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqv;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqv;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Z

    return-void
.end method
