.class public abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzata;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzata;",
        "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final zzc:Ljava/lang/Object;

.field static final zzd:Z

.field private static final zzfb:Ljava/util/logging/Logger;

.field private static final zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;


# instance fields
.field private volatile listeners:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private volatile value:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private volatile waiters:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    :try_start_0
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzd:Z

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfb:Ljava/util/logging/Logger;

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzj;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqe;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v2

    move-object v9, v5

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_2
    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zze;

    const-class v4, Ljava/lang/Thread;

    const-string v5, "thread"

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-string v4, "next"

    invoke-static {v0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-string v4, "waiters"

    invoke-static {v1, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    const-string v4, "listeners"

    invoke-static {v1, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    const-class v0, Ljava/lang/Object;

    const-string v4, "value"

    invoke-static {v1, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zze;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v2

    move-object v5, v3

    move-object v3, v10

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqc;)V

    move-object v9, v0

    move-object v5, v3

    move-object v3, v1

    :goto_1
    sput-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    if-eqz v9, :cond_0

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfb:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "<clinit>"

    const-string v4, "UnsafeAtomicHelper is broken!"

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "com.google.common.util.concurrent.AbstractFuture"

    const-string v1, "<clinit>"

    const-string v8, "SafeAtomicHelper is broken!"

    move-object v4, v6

    move-object v5, v7

    move-object v6, v0

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzata;-><init>()V

    return-void
.end method

.method private final zzA(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->thread:Ljava/lang/Thread;

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->waiters:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    if-eq p1, v1, :cond_3

    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->next:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    move-object v1, p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->next:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    iget-object p1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)Z

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

.method private static final zzB(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzc:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;->zzb:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;->zzd:Ljava/lang/Throwable;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method private static zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Ljava/lang/Object;
    .locals 7

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    instance-of v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzh;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;->zzc:Z

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;->zzd:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    invoke-direct {v0, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;-><init>(ZLjava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_2
    instance-of v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzata;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzata;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzata;->zzk()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    sget-boolean v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzd:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_5

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_5
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zze(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_6
    if-nez v3, :cond_7

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzc:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object v3

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_1
    move-exception v0

    if-nez v1, :cond_8

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_2
    move-exception v3

    if-eqz v1, :cond_9

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    :cond_9
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static zze(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static bridge synthetic zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    return-object v0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->listeners:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->waiters:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->listeners:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    return-void
.end method

.method public static bridge synthetic zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->waiters:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    return-void
.end method

.method public static bridge synthetic zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzy(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Z)V

    return-void
.end method

.method private final zzv(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zze(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string p0, "null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-ne v1, p0, :cond_1

    const-string p0, "this future"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "UNKNOWN, cause=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " thrown from get()]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_1
    const-string p0, "CANCELLED"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    move-exception p0

    const-string v1, "FAILURE, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zzw(Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v1, "PENDING"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    const-string v3, "]"

    if-eqz v2, :cond_0

    const-string v2, ", setFuture=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzx(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception thrown from implementation: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, ", info=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzv(Ljava/lang/StringBuilder;)V

    :cond_2
    return-void
.end method

.method private final zzx(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p2, p0, :cond_0

    :try_start_0
    const-string p0, "this future"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p2, "Exception thrown from implementation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zzy(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Z)V
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    invoke-virtual {v2, p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    iput-object v0, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->thread:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->next:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzq()V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzb()V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    invoke-virtual {p1, p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    move-result-object p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    :goto_2
    if-eqz v1, :cond_3

    iget-object p1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;->next:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    iput-object p0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;->next:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    move-object p0, v1

    move-object v1, p1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz p0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;->next:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;->zzb:Ljava/lang/Runnable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    if-ne v2, p1, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzz(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_5
    move-object p0, v1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private static zzz(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfb:Ljava/util/logging/Logger;

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

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    or-int/2addr v1, v4

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzd:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    move v4, v2

    :cond_3
    :goto_3
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    invoke-virtual {v5, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzy(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Z)V

    instance-of p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    if-eqz p0, :cond_6

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    iget-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzh;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    if-nez v0, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    instance-of v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    or-int/2addr v4, v5

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_3

    :cond_5
    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_6
    move v2, v3

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    instance-of v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    if-nez v5, :cond_3

    move v2, v4

    :cond_8
    :goto_5
    return v2
.end method

.method public get()Ljava/lang/Object;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 3
    :goto_0
    instance-of v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzB(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->waiters:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    if-eq v0, v3, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    .line 5
    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;-><init>()V

    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    .line 6
    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)V

    .line 7
    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v1

    .line 11
    :goto_1
    instance-of v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzB(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 13
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzA(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)V

    new-instance p0, Ljava/lang/InterruptedException;

    .line 14
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->waiters:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    if-ne v0, v4, :cond_2

    :cond_7
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzB(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 17
    :cond_8
    new-instance p0, Ljava/lang/InterruptedException;

    .line 18
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
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
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 22
    :goto_0
    instance-of v10, v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 23
    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzB(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->waiters:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    sget-object v15, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    if-eq v6, v15, :cond_9

    new-instance v15, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    .line 25
    invoke-direct {v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;-><init>()V

    :cond_3
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    .line 26
    invoke-virtual {v7, v15, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)V

    .line 27
    invoke-virtual {v7, v0, v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_4
    const-wide v6, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    .line 28
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 29
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 30
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    if-eqz v4, :cond_5

    move v5, v8

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 31
    :goto_2
    instance-of v6, v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 32
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzB(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzA(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)V

    goto :goto_3

    .line 35
    :cond_7
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzA(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;)V

    new-instance v0, Ljava/lang/InterruptedException;

    .line 36
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 37
    :cond_8
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->waiters:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzk;

    if-ne v6, v7, :cond_3

    :cond_9
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzB(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 39
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    if-eqz v4, :cond_b

    move v5, v8

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 40
    :goto_4
    instance-of v6, v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 41
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzB(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->toString()Ljava/lang/String;

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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->isDone()Z

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

.method public isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    instance-of p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    return p0
.end method

.method public isDone()Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

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

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "CANCELLED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzv(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzw(Ljava/lang/StringBuilder;)V

    :goto_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zza()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

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

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public zzb()V
    .locals 0

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    invoke-virtual {v0, p0, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzy(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Z)V

    return v2

    :cond_0
    return v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)V

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    invoke-virtual {v4, p0, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqz;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;

    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    :cond_3
    instance-of p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    if-eqz p0, :cond_4

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    iget-boolean p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;->zzc:Z

    invoke-interface {p1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    return v1
.end method

.method public final zzk()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzh;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;->zzb:Ljava/lang/Throwable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->listeners:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    if-eq v0, v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;->next:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->listeners:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzd;

    if-ne v0, v2, :cond_0

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzz(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public zzq()V
    .locals 0

    return-void
.end method

.method public final zzr(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzu()Z

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public zzs(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzc:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzy(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Z)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final zzt(Ljava/lang/Throwable;)Z
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzc;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzfc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zza;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzy(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final zzu()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->value:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzb;->zzc:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
