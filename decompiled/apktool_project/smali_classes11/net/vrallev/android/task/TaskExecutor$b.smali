.class public final Lnet/vrallev/android/task/TaskExecutor$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/vrallev/android/task/TaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Landroid/app/Application$ActivityLifecycleCallbacks;"
    }
.end annotation


# instance fields
.field public final e:Lnet/vrallev/android/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/vrallev/android/task/Task<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/vrallev/android/task/TaskCacheFragmentInterface;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lnet/vrallev/android/task/TaskExecutor;


# direct methods
.method public constructor <init>(Lnet/vrallev/android/task/TaskExecutor;Lnet/vrallev/android/task/Task;Lnet/vrallev/android/task/TaskCacheFragmentInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vrallev/android/task/Task<",
            "TT;>;",
            "Lnet/vrallev/android/task/TaskCacheFragmentInterface;",
            ")V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/vrallev/android/task/TaskExecutor;Lnet/vrallev/android/task/Task;Lnet/vrallev/android/task/TaskCacheFragmentInterface;Lnet/vrallev/android/task/TaskExecutor$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/vrallev/android/task/TaskExecutor$b;-><init>(Lnet/vrallev/android/task/TaskExecutor;Lnet/vrallev/android/task/Task;Lnet/vrallev/android/task/TaskCacheFragmentInterface;)V

    return-void
.end method

.method public static synthetic a(Lnet/vrallev/android/task/TaskExecutor$b;)Lnet/vrallev/android/task/Task;
    .locals 0

    iget-object p0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lnet/vrallev/android/task/TaskCacheFragmentInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/vrallev/android/task/TaskCacheFragmentInterface;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-virtual {v0}, Lnet/vrallev/android/task/TaskExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    iget-object p2, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-static {p1, p2}, Lnet/vrallev/android/task/TaskExecutor;->a(Lnet/vrallev/android/task/TaskExecutor;Lnet/vrallev/android/task/Task;)V

    iget-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {p1}, Lnet/vrallev/android/task/TaskExecutor;->b(Lnet/vrallev/android/task/TaskExecutor;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_0
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {v0}, Lnet/vrallev/android/task/TaskExecutor;->c(Lnet/vrallev/android/task/TaskExecutor;)Lcom/sunia/HTREnginev2/t9n;

    move-result-object v0

    iget-object v1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {v1}, Lnet/vrallev/android/task/TaskExecutor;->c(Lnet/vrallev/android/task/TaskExecutor;)Lcom/sunia/HTREnginev2/t9n;

    move-result-object v1

    iget-object v2, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {v1, p1, v2}, Lcom/sunia/HTREnginev2/t9n;->k(Ljava/lang/Object;Lnet/vrallev/android/task/Task;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {v0, p2, v1, v2}, Lcom/sunia/HTREnginev2/t9n;->j(Lnet/vrallev/android/task/TaskCacheFragmentInterface;Ljava/lang/Class;Lnet/vrallev/android/task/Task;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    iget-object p2, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-static {p1, p2}, Lnet/vrallev/android/task/TaskExecutor;->a(Lnet/vrallev/android/task/TaskExecutor;Lnet/vrallev/android/task/Task;)V

    iget-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {p1}, Lnet/vrallev/android/task/TaskExecutor;->b(Lnet/vrallev/android/task/TaskExecutor;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_1
    iget-object v1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {v1}, Lnet/vrallev/android/task/TaskExecutor;->d(Lnet/vrallev/android/task/TaskExecutor;)Lnet/vrallev/android/task/TaskExecutor$PostResult;

    move-result-object v1

    sget-object v2, Lnet/vrallev/android/task/TaskExecutor$PostResult;->IMMEDIATELY:Lnet/vrallev/android/task/TaskExecutor$PostResult;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p2, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {p2}, Lnet/vrallev/android/task/TaskExecutor;->b(Lnet/vrallev/android/task/TaskExecutor;)Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p2, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    iget-object p0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {p2, v0, p1, p0}, Lnet/vrallev/android/task/TaskExecutor;->h(Landroid/util/Pair;Ljava/lang/Object;Lnet/vrallev/android/task/Task;)V

    return-void

    :cond_2
    invoke-interface {p2}, Lnet/vrallev/android/task/TaskCacheFragmentInterface;->canSaveInstanceState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {v1}, Lnet/vrallev/android/task/TaskExecutor;->b(Lnet/vrallev/android/task/TaskExecutor;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {v1}, Lnet/vrallev/android/task/TaskExecutor;->d(Lnet/vrallev/android/task/TaskExecutor;)Lnet/vrallev/android/task/TaskExecutor$PostResult;

    move-result-object v1

    sget-object v2, Lnet/vrallev/android/task/TaskExecutor$PostResult;->ON_ANY_THREAD:Lnet/vrallev/android/task/TaskExecutor$PostResult;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p2, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    iget-object p0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {p2, v0, p1, p0}, Lnet/vrallev/android/task/TaskExecutor;->h(Landroid/util/Pair;Ljava/lang/Object;Lnet/vrallev/android/task/Task;)V

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lnet/vrallev/android/task/TaskCacheFragmentInterface;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance v1, Lnet/vrallev/android/task/TaskExecutor$b$a;

    invoke-direct {v1, p0, v0, p1}, Lnet/vrallev/android/task/TaskExecutor$b$a;-><init>(Lnet/vrallev/android/task/TaskExecutor$b;Landroid/util/Pair;Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {v0}, Lnet/vrallev/android/task/TaskExecutor;->c(Lnet/vrallev/android/task/TaskExecutor;)Lcom/sunia/HTREnginev2/t9n;

    move-result-object v0

    iget-object v1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {v0, p1, v1}, Lcom/sunia/HTREnginev2/t9n;->k(Ljava/lang/Object;Lnet/vrallev/android/task/Task;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lnet/vrallev/android/task/TaskPendingResult;

    iget-object v2, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    iget-object p0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-direct {v1, v0, p1, v2, p0}, Lnet/vrallev/android/task/TaskPendingResult;-><init>(Ljava/lang/Class;Ljava/lang/Object;Lnet/vrallev/android/task/Task;Lnet/vrallev/android/task/TaskExecutor;)V

    invoke-interface {p2, v1}, Lnet/vrallev/android/task/TaskCacheFragmentInterface;->putPendingResult(Lnet/vrallev/android/task/TaskPendingResult;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {v0}, Lnet/vrallev/android/task/Task;->isExecuting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {v0}, Lnet/vrallev/android/task/Task;->getKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_1

    iget-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {p1}, Lnet/vrallev/android/task/TaskExecutor;->b(Lnet/vrallev/android/task/TaskExecutor;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_1
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {v0}, Lnet/vrallev/android/task/Task;->getKey()I

    move-result v0

    if-eq p2, v0, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {p2}, Lnet/vrallev/android/task/TaskExecutor;->b(Lnet/vrallev/android/task/TaskExecutor;)Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p2, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {p2}, Lnet/vrallev/android/task/TaskExecutor;->e(Lnet/vrallev/android/task/TaskExecutor;)Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;->create(Landroid/app/Activity;)Lnet/vrallev/android/task/TaskCacheFragmentInterface;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {p2}, Lnet/vrallev/android/task/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lnet/vrallev/android/task/TaskExecutor$b;->b(Ljava/lang/Object;Lnet/vrallev/android/task/TaskCacheFragmentInterface;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TaskExecutor"

    const-string p2, "getResult failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/vrallev/android/task/TaskCacheFragmentInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/vrallev/android/task/TaskCacheFragmentInterface;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {p1}, Lnet/vrallev/android/task/Task;->getKey()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {p0}, Lnet/vrallev/android/task/Task;->getKey()I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {v0}, Lnet/vrallev/android/task/Task;->isExecuting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {v0}, Lnet/vrallev/android/task/TaskExecutor;->e(Lnet/vrallev/android/task/TaskExecutor;)Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;->create(Landroid/app/Activity;)Lnet/vrallev/android/task/TaskCacheFragmentInterface;

    move-result-object p1

    const-string v0, "PENDING_RESULT_KEY"

    invoke-interface {p1, v0}, Lnet/vrallev/android/task/TaskCacheFragmentInterface;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {p1}, Lnet/vrallev/android/task/TaskExecutor;->b(Lnet/vrallev/android/task/TaskExecutor;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {p1}, Lnet/vrallev/android/task/TaskExecutor;->b(Lnet/vrallev/android/task/TaskExecutor;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    invoke-virtual {v0}, Lnet/vrallev/android/task/Task;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->e:Lnet/vrallev/android/task/Task;

    instance-of v2, v1, Lnet/vrallev/android/task/TaskNoCallback;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {v0, v1}, Lnet/vrallev/android/task/TaskExecutor;->a(Lnet/vrallev/android/task/TaskExecutor;Lnet/vrallev/android/task/Task;)V

    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$b;->g:Lnet/vrallev/android/task/TaskExecutor;

    invoke-static {v0}, Lnet/vrallev/android/task/TaskExecutor;->b(Lnet/vrallev/android/task/TaskExecutor;)Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_0
    iget-object v1, p0, Lnet/vrallev/android/task/TaskExecutor$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/vrallev/android/task/TaskCacheFragmentInterface;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v1}, Lnet/vrallev/android/task/TaskExecutor$b;->b(Ljava/lang/Object;Lnet/vrallev/android/task/TaskCacheFragmentInterface;)V

    :cond_1
    return-void
.end method
