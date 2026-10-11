.class public final Lnet/vrallev/android/task/TaskExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/vrallev/android/task/TaskExecutor$PostResult;,
        Lnet/vrallev/android/task/TaskExecutor$Builder;,
        Lnet/vrallev/android/task/TaskExecutor$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "TaskExecutor"

.field public static final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static i:Lnet/vrallev/android/task/TaskExecutor;


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lnet/vrallev/android/task/TaskExecutor$PostResult;

.field public final c:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lnet/vrallev/android/task/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field public e:Lcom/sunia/HTREnginev2/t9n;

.field public f:Landroid/app/Application;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lnet/vrallev/android/task/TaskExecutor;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lnet/vrallev/android/task/TaskExecutor$PostResult;Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/vrallev/android/task/TaskExecutor;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-object p2, p0, Lnet/vrallev/android/task/TaskExecutor;->b:Lnet/vrallev/android/task/TaskExecutor$PostResult;

    .line 5
    iput-object p3, p0, Lnet/vrallev/android/task/TaskExecutor;->c:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lnet/vrallev/android/task/TaskExecutor;->d:Landroid/util/SparseArray;

    .line 7
    new-instance p1, Lcom/sunia/HTREnginev2/t9n;

    const-class p2, Lnet/vrallev/android/task/TaskResult;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/t9n;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lnet/vrallev/android/task/TaskExecutor;->e:Lcom/sunia/HTREnginev2/t9n;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;Lnet/vrallev/android/task/TaskExecutor$PostResult;Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;Lnet/vrallev/android/task/TaskExecutor$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/vrallev/android/task/TaskExecutor;-><init>(Ljava/util/concurrent/ExecutorService;Lnet/vrallev/android/task/TaskExecutor$PostResult;Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;)V

    return-void
.end method

.method public static synthetic a(Lnet/vrallev/android/task/TaskExecutor;Lnet/vrallev/android/task/Task;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/vrallev/android/task/TaskExecutor;->f(Lnet/vrallev/android/task/Task;)V

    return-void
.end method

.method public static synthetic b(Lnet/vrallev/android/task/TaskExecutor;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lnet/vrallev/android/task/TaskExecutor;->f:Landroid/app/Application;

    return-object p0
.end method

.method public static synthetic c(Lnet/vrallev/android/task/TaskExecutor;)Lcom/sunia/HTREnginev2/t9n;
    .locals 0

    iget-object p0, p0, Lnet/vrallev/android/task/TaskExecutor;->e:Lcom/sunia/HTREnginev2/t9n;

    return-object p0
.end method

.method public static synthetic d(Lnet/vrallev/android/task/TaskExecutor;)Lnet/vrallev/android/task/TaskExecutor$PostResult;
    .locals 0

    iget-object p0, p0, Lnet/vrallev/android/task/TaskExecutor;->b:Lnet/vrallev/android/task/TaskExecutor$PostResult;

    return-object p0
.end method

.method public static synthetic e(Lnet/vrallev/android/task/TaskExecutor;)Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;
    .locals 0

    iget-object p0, p0, Lnet/vrallev/android/task/TaskExecutor;->c:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

    return-object p0
.end method

.method public static getInstance()Lnet/vrallev/android/task/TaskExecutor;
    .locals 2

    sget-object v0, Lnet/vrallev/android/task/TaskExecutor;->i:Lnet/vrallev/android/task/TaskExecutor;

    if-nez v0, :cond_1

    const-class v0, Lnet/vrallev/android/task/TaskExecutor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/vrallev/android/task/TaskExecutor;->i:Lnet/vrallev/android/task/TaskExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lnet/vrallev/android/task/TaskExecutor$Builder;

    invoke-direct {v1}, Lnet/vrallev/android/task/TaskExecutor$Builder;-><init>()V

    invoke-virtual {v1}, Lnet/vrallev/android/task/TaskExecutor$Builder;->build()Lnet/vrallev/android/task/TaskExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lnet/vrallev/android/task/TaskExecutor;->asSingleton()Lnet/vrallev/android/task/TaskExecutor;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lnet/vrallev/android/task/TaskExecutor;->i:Lnet/vrallev/android/task/TaskExecutor;

    return-object v0
.end method


# virtual methods
.method public asSingleton()Lnet/vrallev/android/task/TaskExecutor;
    .locals 1

    const-class v0, Lnet/vrallev/android/task/TaskExecutor;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lnet/vrallev/android/task/TaskExecutor;->i:Lnet/vrallev/android/task/TaskExecutor;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized execute(Lnet/vrallev/android/task/Task;Landroid/app/Activity;)I
    .locals 1
    .param p1    # Lnet/vrallev/android/task/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vrallev/android/task/Task<",
            "*>;",
            "Landroid/app/Activity;",
            ")I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/vrallev/android/task/TaskExecutor;->execute(Lnet/vrallev/android/task/Task;Landroid/app/Activity;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized execute(Lnet/vrallev/android/task/Task;Landroid/app/Activity;Ljava/lang/String;)I
    .locals 7
    .param p1    # Lnet/vrallev/android/task/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vrallev/android/task/Task<",
            "*>;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor;->c:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

    invoke-interface {v0, p2}, Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;->create(Landroid/app/Activity;)Lnet/vrallev/android/task/TaskCacheFragmentInterface;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lnet/vrallev/android/task/TaskExecutor;->g(Lnet/vrallev/android/task/Task;Landroid/app/Activity;Lnet/vrallev/android/task/TaskCacheFragmentInterface;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized execute(Lnet/vrallev/android/task/Task;Landroidx/fragment/app/Fragment;)I
    .locals 1
    .param p1    # Lnet/vrallev/android/task/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vrallev/android/task/Task<",
            "*>;",
            "Landroidx/fragment/app/Fragment;",
            ")I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/vrallev/android/task/TaskExecutor;->execute(Lnet/vrallev/android/task/Task;Landroidx/fragment/app/Fragment;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized execute(Lnet/vrallev/android/task/Task;Landroidx/fragment/app/Fragment;Ljava/lang/String;)I
    .locals 6
    .param p1    # Lnet/vrallev/android/task/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vrallev/android/task/Task<",
            "*>;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 3
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor;->c:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

    invoke-interface {v0, v2}, Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;->create(Landroid/app/Activity;)Lnet/vrallev/android/task/TaskCacheFragmentInterface;

    move-result-object v3

    invoke-static {p2}, Lcom/sunia/HTREnginev2/nug;->b(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lnet/vrallev/android/task/TaskExecutor;->g(Lnet/vrallev/android/task/Task;Landroid/app/Activity;Lnet/vrallev/android/task/TaskCacheFragmentInterface;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(Lnet/vrallev/android/task/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vrallev/android/task/Task<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lnet/vrallev/android/task/Task;->g()V

    invoke-virtual {p0, p1}, Lnet/vrallev/android/task/TaskExecutor;->i(Lnet/vrallev/android/task/Task;)V

    return-void
.end method

.method public final declared-synchronized g(Lnet/vrallev/android/task/Task;Landroid/app/Activity;Lnet/vrallev/android/task/TaskCacheFragmentInterface;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vrallev/android/task/Task<",
            "*>;",
            "Landroid/app/Activity;",
            "Lnet/vrallev/android/task/TaskCacheFragmentInterface;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnet/vrallev/android/task/TaskExecutor;->isShutdown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor;->f:Landroid/app/Application;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    iput-object p2, p0, Lnet/vrallev/android/task/TaskExecutor;->f:Landroid/app/Application;

    :cond_1
    sget-object p2, Lnet/vrallev/android/task/TaskExecutor;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/vrallev/android/task/Task;->i(I)V

    invoke-virtual {p1, p0}, Lnet/vrallev/android/task/Task;->j(Lnet/vrallev/android/task/TaskExecutor;)V

    invoke-virtual {p1, p3}, Lnet/vrallev/android/task/Task;->f(Lnet/vrallev/android/task/TaskCacheFragmentInterface;)V

    invoke-virtual {p1, p4}, Lnet/vrallev/android/task/Task;->e(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Lnet/vrallev/android/task/Task;->h(Ljava/lang/String;)V

    iget-object p4, p0, Lnet/vrallev/android/task/TaskExecutor;->d:Landroid/util/SparseArray;

    invoke-virtual {p4, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p4, Lnet/vrallev/android/task/TaskExecutor$b;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p1, p3, p5}, Lnet/vrallev/android/task/TaskExecutor$b;-><init>(Lnet/vrallev/android/task/TaskExecutor;Lnet/vrallev/android/task/Task;Lnet/vrallev/android/task/TaskCacheFragmentInterface;Lnet/vrallev/android/task/TaskExecutor$a;)V

    iget-object p1, p0, Lnet/vrallev/android/task/TaskExecutor;->f:Landroid/app/Application;

    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p1, p0, Lnet/vrallev/android/task/TaskExecutor;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllTasks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/vrallev/android/task/Task<",
            "*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lnet/vrallev/android/task/TaskExecutor;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lnet/vrallev/android/task/TaskExecutor;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllTasks(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/vrallev/android/task/Task<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lnet/vrallev/android/task/TaskExecutor;->getAllTasks()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/vrallev/android/task/Task;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTask(I)Lnet/vrallev/android/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/vrallev/android/task/Task<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/vrallev/android/task/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h(Landroid/util/Pair;Ljava/lang/Object;Lnet/vrallev/android/task/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lnet/vrallev/android/task/Task<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lnet/vrallev/android/task/TaskExecutor;->f(Lnet/vrallev/android/task/Task;)V

    iget-object p0, p0, Lnet/vrallev/android/task/TaskExecutor;->e:Lcom/sunia/HTREnginev2/t9n;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/t9n;->l(Landroid/util/Pair;Ljava/lang/Object;Lnet/vrallev/android/task/Task;)V

    return-void
.end method

.method public final declared-synchronized i(Lnet/vrallev/android/task/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vrallev/android/task/Task<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isShutdown()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/vrallev/android/task/TaskExecutor;->a:Ljava/util/concurrent/ExecutorService;

    const-class v1, Lnet/vrallev/android/task/TaskExecutor;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lnet/vrallev/android/task/TaskExecutor;->i:Lnet/vrallev/android/task/TaskExecutor;

    if-ne p0, v2, :cond_0

    sput-object v0, Lnet/vrallev/android/task/TaskExecutor;->i:Lnet/vrallev/android/task/TaskExecutor;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
