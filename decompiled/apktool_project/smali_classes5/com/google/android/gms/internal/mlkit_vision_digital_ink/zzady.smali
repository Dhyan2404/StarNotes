.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaei;


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

.field private final zzc:Z

.field private zzd:Z

.field private zze:Z

.field private zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzf:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxz;->zzb(Ljava/lang/Thread;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzc:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzf:Z

    return-void
.end method

.method private final zzb()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzd:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzc:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zze:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxz;->zzb(Ljava/lang/Thread;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzh(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    const-class v0, Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zze:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzd:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaei;->close()V

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzf:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadw;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v2, "Span was already closed!"

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaei;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_3
    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_4
    :goto_1
    throw p0
.end method

.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzd:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zze:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzb()V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadx;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadx;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxz;->zza()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zzd:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zze:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zze:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzi(I)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Signal is already attached to future"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Span was already closed. Did you attach it to a future after calling Tracer.endSpan()?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
