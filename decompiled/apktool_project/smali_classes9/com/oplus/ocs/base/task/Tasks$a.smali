.class final Lcom/oplus/ocs/base/task/Tasks$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/ocs/base/task/Tasks$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ocs/base/task/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/oplus/ocs/base/task/TaskImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/task/TaskImpl<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Exception;

.field private volatile d:I

.field private volatile e:I

.field private volatile f:I

.field private volatile g:I

.field private volatile h:Z


# direct methods
.method public constructor <init>(ILcom/oplus/ocs/base/task/TaskImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/oplus/ocs/base/task/TaskImpl<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/base/task/Tasks$a;->a:Ljava/lang/Object;

    iput p1, p0, Lcom/oplus/ocs/base/task/Tasks$a;->d:I

    iput-object p2, p0, Lcom/oplus/ocs/base/task/Tasks$a;->b:Lcom/oplus/ocs/base/task/TaskImpl;

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/oplus/ocs/base/task/Tasks$a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oplus/ocs/base/task/Tasks$a;->e:I

    iget v2, p0, Lcom/oplus/ocs/base/task/Tasks$a;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/ocs/base/task/Tasks$a;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/ocs/base/task/Tasks$a;->d:I

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oplus/ocs/base/task/Tasks$a;->c:Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/ocs/base/task/Tasks$a;->b:Lcom/oplus/ocs/base/task/TaskImpl;

    iget v2, p0, Lcom/oplus/ocs/base/task/Tasks$a;->f:I

    new-instance v3, Ljava/util/concurrent/ExecutionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/ocs/base/task/Tasks$a;->d:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " underlying tasks failed"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/ocs/base/task/Tasks$a;->c:Ljava/lang/Exception;

    invoke-direct {v3, v2, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/oplus/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/oplus/ocs/base/task/Tasks$a;->h:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/oplus/ocs/base/task/Tasks$a;->b:Lcom/oplus/ocs/base/task/TaskImpl;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/task/TaskImpl;->tryCancel()Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oplus/ocs/base/task/Tasks$a;->b:Lcom/oplus/ocs/base/task/TaskImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oplus/ocs/base/task/TaskImpl;->setResult(Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final onCanceled()V
    .locals 3

    iget-object v0, p0, Lcom/oplus/ocs/base/task/Tasks$a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oplus/ocs/base/task/Tasks$a;->g:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/ocs/base/task/Tasks$a;->g:I

    iput-boolean v2, p0, Lcom/oplus/ocs/base/task/Tasks$a;->h:Z

    invoke-direct {p0}, Lcom/oplus/ocs/base/task/Tasks$a;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    invoke-static {p1}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oplus/ocs/base/task/Tasks$a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oplus/ocs/base/task/Tasks$a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oplus/ocs/base/task/Tasks$a;->f:I

    iput-object p1, p0, Lcom/oplus/ocs/base/task/Tasks$a;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/oplus/ocs/base/task/Tasks$a;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/oplus/ocs/base/task/Tasks$a;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lcom/oplus/ocs/base/task/Tasks$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/ocs/base/task/Tasks$a;->e:I

    invoke-direct {p0}, Lcom/oplus/ocs/base/task/Tasks$a;->a()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
