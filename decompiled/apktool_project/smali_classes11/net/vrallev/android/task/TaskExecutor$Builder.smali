.class public Lnet/vrallev/android/task/TaskExecutor$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/vrallev/android/task/TaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lnet/vrallev/android/task/TaskExecutor$PostResult;

.field public b:Ljava/util/concurrent/ExecutorService;

.field public c:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lnet/vrallev/android/task/TaskExecutor;
    .locals 4

    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$Builder;->a:Lnet/vrallev/android/task/TaskExecutor$PostResult;

    if-nez v0, :cond_0

    sget-object v0, Lnet/vrallev/android/task/TaskExecutor$PostResult;->UI_THREAD:Lnet/vrallev/android/task/TaskExecutor$PostResult;

    iput-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$Builder;->a:Lnet/vrallev/android/task/TaskExecutor$PostResult;

    :cond_0
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$Builder;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$Builder;->b:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$Builder;->c:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

    if-nez v0, :cond_2

    sget-object v0, Lnet/vrallev/android/task/TaskCacheFragmentInterface;->DEFAULT_FACTORY:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

    iput-object v0, p0, Lnet/vrallev/android/task/TaskExecutor$Builder;->c:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

    :cond_2
    new-instance v0, Lnet/vrallev/android/task/TaskExecutor;

    iget-object v1, p0, Lnet/vrallev/android/task/TaskExecutor$Builder;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lnet/vrallev/android/task/TaskExecutor$Builder;->a:Lnet/vrallev/android/task/TaskExecutor$PostResult;

    iget-object p0, p0, Lnet/vrallev/android/task/TaskExecutor$Builder;->c:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lnet/vrallev/android/task/TaskExecutor;-><init>(Ljava/util/concurrent/ExecutorService;Lnet/vrallev/android/task/TaskExecutor$PostResult;Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;Lnet/vrallev/android/task/TaskExecutor$a;)V

    return-object v0
.end method

.method public setCacheFactory(Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;)Lnet/vrallev/android/task/TaskExecutor$Builder;
    .locals 0

    iput-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$Builder;->c:Lnet/vrallev/android/task/TaskCacheFragmentInterface$Factory;

    return-object p0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lnet/vrallev/android/task/TaskExecutor$Builder;
    .locals 0

    iput-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$Builder;->b:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public setPostResult(Lnet/vrallev/android/task/TaskExecutor$PostResult;)Lnet/vrallev/android/task/TaskExecutor$Builder;
    .locals 0

    iput-object p1, p0, Lnet/vrallev/android/task/TaskExecutor$Builder;->a:Lnet/vrallev/android/task/TaskExecutor$PostResult;

    return-object p0
.end method
