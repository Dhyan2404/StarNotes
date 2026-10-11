.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

.field private zzb:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadt;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Initialize "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadt;->zza(Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;->zzb:Ljava/util/List;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;->zzb:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzl(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;Ljava/util/List;)V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;->zzb:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacn;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacm;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;->zzb:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_4
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaci;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaci;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarv;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_8
    const-class v1, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    :goto_1
    throw p0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzack;->zzb:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
