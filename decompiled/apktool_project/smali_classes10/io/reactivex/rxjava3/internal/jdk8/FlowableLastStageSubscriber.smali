.class public final Lio/reactivex/rxjava3/internal/jdk8/FlowableLastStageSubscriber;
.super Lcom/sunia/HTREnginev2/oog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sunia/HTREnginev2/oog<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final g:Z

.field public final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hasDefault",
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/oog;-><init>()V

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/jdk8/FlowableLastStageSubscriber;->g:Z

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/jdk8/FlowableLastStageSubscriber;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public afterSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/oog;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/oog;->clear()V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/oog;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/jdk8/FlowableLastStageSubscriber;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/FlowableLastStageSubscriber;->h:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/oog;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/oog;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oog;->f:Ljava/lang/Object;

    return-void
.end method
