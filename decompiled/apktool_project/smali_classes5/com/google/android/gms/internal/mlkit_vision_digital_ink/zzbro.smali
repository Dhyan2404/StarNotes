.class public Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;


# static fields
.field static final zza:Z

.field static final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;

.field public static final synthetic zzf:I

.field private static final zzg:Ljava/util/logging/Logger;

.field private static final zzh:Ljava/lang/Object;


# instance fields
.field volatile zzc:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field volatile zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field volatile zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zza:Z

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzg:Ljava/util/logging/Logger;

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrk;

    const-class v3, Ljava/lang/Thread;

    const-string v4, "zzb"

    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-string v3, "zzc"

    invoke-static {v0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-string v3, "zze"

    invoke-static {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    const-string v3, "zzd"

    invoke-static {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Ljava/lang/Object;

    const-string v3, "zzc"

    invoke-static {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrk;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrm;-><init>()V

    :goto_0
    move-object v8, v0

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;

    if-eqz v8, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzg:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "com.google.mlkit.shared.mdd.concurrent.AbstractResolvableFuture"

    const-string v6, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzh:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;)V
    .locals 4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zzb:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zzb:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    invoke-virtual {v2, p0, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    iput-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    move-object p0, v0

    move-object v0, v2

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;->zzb:Ljava/lang/Runnable;

    instance-of v3, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    if-nez v3, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object p0, v0

    goto :goto_2

    :cond_4
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    iget-object p0, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;

    throw v1

    :cond_5
    return-void
.end method

.method private final zzd(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const-string v1, "SUCCESS, result=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, p0, :cond_1

    const-string p0, "this future"

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const-string v0, "UNKNOWN, cause=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " thrown from get()]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    const-string p0, "CANCELLED"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :goto_3
    const-string v1, "FAILURE, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzg:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuntimeException while executing runnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.mlkit.shared.mdd.concurrent.AbstractResolvableFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zzb:Ljava/lang/Thread;

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    if-eq p1, v1, :cond_3

    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zzb:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    move-object v1, p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    iget-object p1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zzb:Ljava/lang/Thread;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static final zzg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrh;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzh:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrh;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrh;->zzb:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;->zzc:Ljava/lang/Throwable;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    or-int/2addr v1, v4

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zza:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    :cond_3
    :goto_1
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;)V

    instance-of p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    const/4 p0, 0x0

    throw p0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    instance-of p1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    if-nez p1, :cond_3

    :cond_6
    move v2, v3

    :goto_2
    return v2
.end method

.method public final get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 3
    :goto_0
    instance-of v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    if-eq v0, v3, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    .line 5
    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;-><init>()V

    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;

    .line 6
    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;)V

    .line 7
    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v1

    .line 11
    :goto_1
    instance-of v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 13
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;)V

    new-instance p0, Ljava/lang/InterruptedException;

    .line 14
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    if-ne v0, v4, :cond_2

    :cond_7
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    .line 16
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 17
    :cond_8
    new-instance p0, Ljava/lang/InterruptedException;

    .line 18
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 19
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 20
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 21
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 22
    :goto_0
    instance-of v10, v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 23
    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_1

    :cond_2
    move-wide v11, v9

    :goto_1
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_a

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    sget-object v15, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    if-eq v6, v15, :cond_9

    new-instance v15, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    .line 25
    invoke-direct {v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;-><init>()V

    :cond_3
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;

    .line 26
    invoke-virtual {v7, v15, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;)V

    .line 27
    invoke-virtual {v7, v0, v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 28
    :cond_4
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 29
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 30
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    if-eqz v4, :cond_5

    move v5, v8

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 31
    :goto_2
    instance-of v6, v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 32
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 33
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 34
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;)V

    goto :goto_3

    .line 35
    :cond_7
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;)V

    new-instance v0, Ljava/lang/InterruptedException;

    .line 36
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 37
    :cond_8
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrn;

    if-ne v6, v7, :cond_3

    :cond_9
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 39
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    if-eqz v4, :cond_b

    move v5, v8

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 40
    :goto_4
    instance-of v6, v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 41
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 42
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 44
    :cond_d
    new-instance v0, Ljava/lang/InterruptedException;

    .line 45
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 46
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->toString()Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Waited "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v11, v11, v9

    if-gez v11, :cond_14

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 50
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    sub-long v4, v4, v16

    cmp-long v3, v11, v9

    if-eqz v3, :cond_10

    cmp-long v9, v4, v13

    if-lez v9, :cond_f

    goto :goto_5

    :cond_f
    const/4 v8, 0x0

    :cond_10
    :goto_5
    if-lez v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_11

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_11
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v8, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_13
    const-string v1, "delay)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->isDone()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, " but future completed as timeout expired"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_15
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_16
    new-instance v0, Ljava/lang/InterruptedException;

    .line 57
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    instance-of p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    return p0
.end method

.method public final isDone()Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int p0, v1, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string p0, "CANCELLED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzd(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zza()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Exception thrown from implementation: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "PENDING, info=["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzd(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_3
    const-string p0, "PENDING"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zza()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzc:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    const-string p0, "setFuture=[null]"

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remaining delay=["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public zzc(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzh:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    if-eq v0, v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbre;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbri;

    if-ne v0, v2, :cond_0

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
