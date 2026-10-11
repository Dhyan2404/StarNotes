.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

.field public final synthetic zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasw;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarc;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Z

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarf;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarf;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->cancel(Z)Z

    :cond_1
    return-void
.end method
