.class public final Lcom/permissionx/guolindev/request/RequestChain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\tJ\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/permissionx/guolindev/request/RequestChain;",
        "",
        "Lcom/permissionx/guolindev/request/BaseTask;",
        "task",
        "",
        "addTaskToChain$permissionx_release",
        "(Lcom/permissionx/guolindev/request/BaseTask;)V",
        "addTaskToChain",
        "runTask$permissionx_release",
        "()V",
        "runTask",
        "a",
        "Lcom/permissionx/guolindev/request/BaseTask;",
        "headTask",
        "b",
        "tailTask",
        "<init>",
        "permissionx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public a:Lcom/permissionx/guolindev/request/BaseTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/permissionx/guolindev/request/BaseTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V
    .locals 1
    .param p1    # Lcom/permissionx/guolindev/request/BaseTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestChain;->a:Lcom/permissionx/guolindev/request/BaseTask;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/permissionx/guolindev/request/RequestChain;->a:Lcom/permissionx/guolindev/request/BaseTask;

    :cond_0
    iget-object v0, p0, Lcom/permissionx/guolindev/request/RequestChain;->b:Lcom/permissionx/guolindev/request/BaseTask;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcom/permissionx/guolindev/request/BaseTask;->next:Lcom/permissionx/guolindev/request/ChainTask;

    :goto_0
    iput-object p1, p0, Lcom/permissionx/guolindev/request/RequestChain;->b:Lcom/permissionx/guolindev/request/BaseTask;

    return-void
.end method

.method public final runTask$permissionx_release()V
    .locals 0

    iget-object p0, p0, Lcom/permissionx/guolindev/request/RequestChain;->a:Lcom/permissionx/guolindev/request/BaseTask;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/permissionx/guolindev/request/ChainTask;->request()V

    :cond_0
    return-void
.end method
