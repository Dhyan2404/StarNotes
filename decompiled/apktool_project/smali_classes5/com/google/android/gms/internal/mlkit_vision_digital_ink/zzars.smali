.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzars;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Ljava/util/concurrent/Future;

.field final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzars;->zza:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzars;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzars;->zza:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzata;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzata;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatb;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzata;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzars;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;->zza(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzars;->zza:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzars;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;->zzb(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzars;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;->zza(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzars;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;->zza(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafz;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzars;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
