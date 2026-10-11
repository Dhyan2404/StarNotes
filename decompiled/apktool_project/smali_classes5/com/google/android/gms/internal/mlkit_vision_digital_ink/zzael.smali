.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzael;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/google/apps/tiktok/tracing/TracePropagation$propagateAsyncCallable$1",
        "Lcom/google/common/util/concurrent/AsyncCallable;",
        "call",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "toString",
        "",
        "java.com.google.apps.tiktok.tracing_tracing_external"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

.field final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzael;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzael;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzael;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "propagating=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzael;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    const-string v1, "trace"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzael;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    const-string v0, "wrapInTrace(trace) { asyncCallable.call() }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzado;->zza(Ljava/lang/Throwable;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    throw p0
.end method
