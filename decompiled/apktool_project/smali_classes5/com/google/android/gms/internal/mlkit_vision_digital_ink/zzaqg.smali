.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqg;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqi;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqi;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    const-string p2, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic zze(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Z

    return-void
.end method
