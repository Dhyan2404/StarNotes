.class public Lnet/vrallev/android/task/TaskPendingResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;

.field public final c:Lnet/vrallev/android/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/vrallev/android/task/Task<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lnet/vrallev/android/task/TaskExecutor;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Lnet/vrallev/android/task/Task;Lnet/vrallev/android/task/TaskExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lnet/vrallev/android/task/Task<",
            "*>;",
            "Lnet/vrallev/android/task/TaskExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/vrallev/android/task/TaskPendingResult;->a:Ljava/lang/Class;

    iput-object p2, p0, Lnet/vrallev/android/task/TaskPendingResult;->b:Ljava/lang/Object;

    iput-object p3, p0, Lnet/vrallev/android/task/TaskPendingResult;->c:Lnet/vrallev/android/task/Task;

    iput-object p4, p0, Lnet/vrallev/android/task/TaskPendingResult;->d:Lnet/vrallev/android/task/TaskExecutor;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/vrallev/android/task/TaskPendingResult;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public getResultType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/vrallev/android/task/TaskPendingResult;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public getTask()Lnet/vrallev/android/task/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vrallev/android/task/Task<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lnet/vrallev/android/task/TaskPendingResult;->c:Lnet/vrallev/android/task/Task;

    return-object p0
.end method

.method public getTaskExecutor()Lnet/vrallev/android/task/TaskExecutor;
    .locals 0

    iget-object p0, p0, Lnet/vrallev/android/task/TaskPendingResult;->d:Lnet/vrallev/android/task/TaskExecutor;

    return-object p0
.end method
