.class final Lcom/couchbase/lite/internal/AndroidExecutionService$CancellableTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/exec/ExecutionService$Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/AndroidExecutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancellableTask"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final task:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "handler"

    .line 3
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "task"

    .line 4
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/couchbase/lite/internal/AndroidExecutionService$CancellableTask;->handler:Landroid/os/Handler;

    .line 6
    iput-object p2, p0, Lcom/couchbase/lite/internal/AndroidExecutionService$CancellableTask;->task:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Lcom/couchbase/lite/internal/AndroidExecutionService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/AndroidExecutionService$CancellableTask;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/internal/AndroidExecutionService$CancellableTask;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/couchbase/lite/internal/AndroidExecutionService$CancellableTask;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
