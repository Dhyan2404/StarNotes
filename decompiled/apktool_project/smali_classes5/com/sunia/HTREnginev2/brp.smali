.class public final Lcom/sunia/HTREnginev2/brp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/zzt;


# instance fields
.field public final e:Ljava/util/Map;

.field public f:I

.field public g:Z

.field public h:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Lcom/google/android/gms/common/internal/zzo;

.field public j:Landroid/content/ComponentName;

.field public final synthetic k:Lcom/sunia/HTREnginev2/krp;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/krp;Lcom/google/android/gms/common/internal/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/brp;->k:Lcom/sunia/HTREnginev2/krp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/brp;->i:Lcom/google/android/gms/common/internal/zzo;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/brp;->e:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, Lcom/sunia/HTREnginev2/brp;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/brp;->f:I

    return p0
.end method

.method public final b()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/brp;->j:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final c()Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/brp;->h:Landroid/os/IBinder;

    return-object p0
.end method

.method public final d(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/brp;->e:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 9
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x3

    iput v0, p0, Lcom/sunia/HTREnginev2/brp;->f:I

    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    invoke-static {v1}, Lcom/sunia/HTREnginev2/arp;->a(Landroid/os/StrictMode$VmPolicy$Builder;)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/brp;->k:Lcom/sunia/HTREnginev2/krp;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/krp;->d(Lcom/sunia/HTREnginev2/krp;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    invoke-static {v1}, Lcom/sunia/HTREnginev2/krp;->b(Lcom/sunia/HTREnginev2/krp;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/brp;->i:Lcom/google/android/gms/common/internal/zzo;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/krp;->b(Lcom/sunia/HTREnginev2/krp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/internal/zzo;->zzb(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    const/16 v7, 0x1081

    move-object v4, p1

    move-object v6, p0

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/brp;->g:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/brp;->k:Lcom/sunia/HTREnginev2/krp;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/krp;->c(Lcom/sunia/HTREnginev2/krp;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/brp;->i:Lcom/google/android/gms/common/internal/zzo;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/sunia/HTREnginev2/brp;->k:Lcom/sunia/HTREnginev2/krp;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/krp;->c(Lcom/sunia/HTREnginev2/krp;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/brp;->k:Lcom/sunia/HTREnginev2/krp;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/krp;->a(Lcom/sunia/HTREnginev2/krp;)J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lcom/sunia/HTREnginev2/brp;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/sunia/HTREnginev2/brp;->k:Lcom/sunia/HTREnginev2/krp;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/krp;->d(Lcom/sunia/HTREnginev2/krp;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p2

    invoke-static {p1}, Lcom/sunia/HTREnginev2/krp;->b(Lcom/sunia/HTREnginev2/krp;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw p0
.end method

.method public final f(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/brp;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/sunia/HTREnginev2/brp;->i:Lcom/google/android/gms/common/internal/zzo;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/brp;->k:Lcom/sunia/HTREnginev2/krp;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/krp;->c(Lcom/sunia/HTREnginev2/krp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/brp;->k:Lcom/sunia/HTREnginev2/krp;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/krp;->d(Lcom/sunia/HTREnginev2/krp;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    invoke-static {p1}, Lcom/sunia/HTREnginev2/krp;->b(Lcom/sunia/HTREnginev2/krp;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/brp;->g:Z

    const/4 p1, 0x2

    iput p1, p0, Lcom/sunia/HTREnginev2/brp;->f:I

    return-void
.end method

.method public final h(Landroid/content/ServiceConnection;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/brp;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/brp;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/brp;->g:Z

    return p0
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/brp;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/brp;->k:Lcom/sunia/HTREnginev2/krp;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/krp;->e(Lcom/sunia/HTREnginev2/krp;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/brp;->k:Lcom/sunia/HTREnginev2/krp;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/krp;->c(Lcom/sunia/HTREnginev2/krp;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/brp;->i:Lcom/google/android/gms/common/internal/zzo;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/brp;->h:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/brp;->j:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/brp;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/sunia/HTREnginev2/brp;->f:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/brp;->k:Lcom/sunia/HTREnginev2/krp;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/krp;->e(Lcom/sunia/HTREnginev2/krp;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/brp;->k:Lcom/sunia/HTREnginev2/krp;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/krp;->c(Lcom/sunia/HTREnginev2/krp;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/brp;->i:Lcom/google/android/gms/common/internal/zzo;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sunia/HTREnginev2/brp;->h:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/brp;->j:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/brp;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/sunia/HTREnginev2/brp;->f:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
