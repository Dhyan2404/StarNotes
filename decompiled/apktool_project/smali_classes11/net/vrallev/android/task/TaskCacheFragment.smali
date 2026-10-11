.class public final Lnet/vrallev/android/task/TaskCacheFragment;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lnet/vrallev/android/task/TaskCacheFragmentInterface;


# static fields
.field public static final h:Ljava/lang/String; = "TaskCacheFragment"


# instance fields
.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setRetainInstance(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/vrallev/android/task/TaskCacheFragment;->e:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lnet/vrallev/android/task/TaskCacheFragment;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "TaskCacheFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    instance-of v3, v2, Lnet/vrallev/android/task/TaskCacheFragment;

    if-eqz v3, :cond_0

    check-cast v2, Lnet/vrallev/android/task/TaskCacheFragment;

    return-object v2

    :cond_0
    invoke-static {p0}, Lnet/vrallev/android/task/TaskCacheFragmentInterface$Helper;->getTempCacheFragment(Landroid/app/Activity;)Lnet/vrallev/android/task/TaskCacheFragmentInterface;

    move-result-object v2

    instance-of v3, v2, Lnet/vrallev/android/task/TaskCacheFragment;

    if-eqz v3, :cond_1

    check-cast v2, Lnet/vrallev/android/task/TaskCacheFragment;

    return-object v2

    :cond_1
    new-instance v2, Lnet/vrallev/android/task/TaskCacheFragment;

    invoke-direct {v2}, Lnet/vrallev/android/task/TaskCacheFragment;-><init>()V

    iput-object p0, v2, Lnet/vrallev/android/task/TaskCacheFragment;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :try_start_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0, v2}, Lnet/vrallev/android/task/TaskCacheFragmentInterface$Helper;->putTempCacheFragment(Landroid/app/Activity;Lnet/vrallev/android/task/TaskCacheFragmentInterface;)V

    :goto_0
    return-object v2
.end method


# virtual methods
.method public canSaveInstanceState()Z
    .locals 0

    iget-boolean p0, p0, Lnet/vrallev/android/task/TaskCacheFragment;->f:Z

    return p0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/vrallev/android/task/TaskCacheFragment;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lnet/vrallev/android/task/TaskCacheFragment;->g:Landroid/app/Activity;

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/vrallev/android/task/TaskCacheFragment;->f:Z

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lnet/vrallev/android/task/TaskCacheFragment;->g:Landroid/app/Activity;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lnet/vrallev/android/task/TaskCacheFragment;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/vrallev/android/task/TaskCacheFragment;->g:Landroid/app/Activity;

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/vrallev/android/task/TaskCacheFragment;->f:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/vrallev/android/task/TaskCacheFragment;->f:Z

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/vrallev/android/task/TaskCacheFragment;->f:Z

    const-string v0, "PENDING_RESULT_KEY"

    invoke-virtual {p0, v0}, Lnet/vrallev/android/task/TaskCacheFragment;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p0}, Lnet/vrallev/android/task/TaskCacheFragmentInterface$Helper;->postPendingResults(Ljava/util/List;Lnet/vrallev/android/task/TaskCacheFragmentInterface;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/vrallev/android/task/TaskCacheFragment;->f:Z

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/vrallev/android/task/TaskCacheFragment;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putPendingResult(Lnet/vrallev/android/task/TaskPendingResult;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "PENDING_RESULT_KEY"

    invoke-virtual {p0, v0}, Lnet/vrallev/android/task/TaskCacheFragment;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "PENDING_RESULT_KEY"

    invoke-virtual {p0, v1, v0}, Lnet/vrallev/android/task/TaskCacheFragment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/vrallev/android/task/TaskCacheFragment;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
