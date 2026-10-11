.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrv;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrv;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
