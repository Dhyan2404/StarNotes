.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarq;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaro;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaro;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zzh()Ljava/util/concurrent/Future;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
.end method

.method public final zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarq;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
