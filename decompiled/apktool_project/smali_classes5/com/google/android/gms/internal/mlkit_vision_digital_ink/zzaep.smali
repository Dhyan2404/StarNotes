.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0015\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/google/apps/tiktok/tracing/TracePropagation$propagateFutureCallback$1",
        "Lcom/google/common/util/concurrent/FutureCallback;",
        "onFailure",
        "",
        "t",
        "",
        "onSuccess",
        "result",
        "(Ljava/lang/Object;)V",
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

.field final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaep;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaep;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaep;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    const-string v1, "trace"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaep;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;->zza(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    return-void

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

.method public final zzb(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaep;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    const-string v1, "trace"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaep;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;->zzb(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    return-void

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
