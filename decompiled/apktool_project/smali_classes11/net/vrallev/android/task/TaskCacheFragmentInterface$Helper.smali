.class public final Lnet/vrallev/android/task/TaskCacheFragmentInterface$Helper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/vrallev/android/task/TaskCacheFragmentInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Helper"
.end annotation


# static fields
.field public static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Lnet/vrallev/android/task/TaskCacheFragmentInterface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lnet/vrallev/android/task/TaskCacheFragmentInterface$Helper;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTempCacheFragment(Landroid/app/Activity;)Lnet/vrallev/android/task/TaskCacheFragmentInterface;
    .locals 1

    sget-object v0, Lnet/vrallev/android/task/TaskCacheFragmentInterface$Helper;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/vrallev/android/task/TaskCacheFragmentInterface;

    :goto_0
    return-object p0
.end method

.method public static postPendingResults(Ljava/util/List;Lnet/vrallev/android/task/TaskCacheFragmentInterface;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/vrallev/android/task/TaskPendingResult;",
            ">;",
            "Lnet/vrallev/android/task/TaskCacheFragmentInterface;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/t9n;

    const-class v1, Lnet/vrallev/android/task/TaskResult;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/t9n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/vrallev/android/task/TaskPendingResult;

    invoke-virtual {v2}, Lnet/vrallev/android/task/TaskPendingResult;->getResultType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2}, Lnet/vrallev/android/task/TaskPendingResult;->getTask()Lnet/vrallev/android/task/Task;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4}, Lcom/sunia/HTREnginev2/t9n;->j(Lnet/vrallev/android/task/TaskCacheFragmentInterface;Ljava/lang/Class;Lnet/vrallev/android/task/Task;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2}, Lnet/vrallev/android/task/TaskPendingResult;->getTaskExecutor()Lnet/vrallev/android/task/TaskExecutor;

    move-result-object v4

    invoke-virtual {v2}, Lnet/vrallev/android/task/TaskPendingResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lnet/vrallev/android/task/TaskPendingResult;->getTask()Lnet/vrallev/android/task/Task;

    move-result-object v2

    invoke-virtual {v4, v3, v5, v2}, Lnet/vrallev/android/task/TaskExecutor;->h(Landroid/util/Pair;Ljava/lang/Object;Lnet/vrallev/android/task/Task;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static putTempCacheFragment(Landroid/app/Activity;Lnet/vrallev/android/task/TaskCacheFragmentInterface;)V
    .locals 2

    sget-object v0, Lnet/vrallev/android/task/TaskCacheFragmentInterface$Helper;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
