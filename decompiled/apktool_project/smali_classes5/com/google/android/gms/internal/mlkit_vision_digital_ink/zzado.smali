.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzado;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/WeakHashMap;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "exceptions"
    .end annotation
.end field

.field private static final zzb:Ljava/util/WeakHashMap;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "exceptionsWithTraceStack"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzado;->zza:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzado;->zzb:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static zza(Ljava/lang/Throwable;)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzado;->zzb:Ljava/util/WeakHashMap;

    monitor-enter v0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzado;->zzb:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzado;->zzb:Ljava/util/WeakHashMap;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzado;->zza:Ljava/util/WeakHashMap;

    monitor-enter v0

    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzado;->zza:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_2
    if-nez v1, :cond_3

    monitor-exit v0

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzado;->zza:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaej;

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadn;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadn;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaej;)V

    :goto_3
    if-eqz v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v1

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzf(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzf(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakq;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    invoke-interface {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    invoke-interface {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaej;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaej;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;)V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzado;->zza:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_2
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_7
    return-void

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method
