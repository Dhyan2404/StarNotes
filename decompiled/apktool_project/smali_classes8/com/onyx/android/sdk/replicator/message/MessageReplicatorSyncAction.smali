.class public final Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;",
        "e",
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;",
        "args",
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicator;",
        "f",
        "Lcom/onyx/android/sdk/replicator/message/MessageReplicator;",
        "replicator",
        "g",
        "Z",
        "success",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/replicator/message/MessageReplicator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;->e:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    sget-object v0, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorBundle;->getMessageReplicator(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;)Lcom/onyx/android/sdk/replicator/message/MessageReplicator;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;->f:Lcom/onyx/android/sdk/replicator/message/MessageReplicator;

    return-void
.end method

.method public static final synthetic access$getReplicator$p(Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;)Lcom/onyx/android/sdk/replicator/message/MessageReplicator;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;->f:Lcom/onyx/android/sdk/replicator/message/MessageReplicator;

    return-object p0
.end method

.method public static final synthetic access$publishReplicationEvent(Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;->n()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setSuccess$p(Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;->g:Z

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;->m(Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;->f:Lcom/onyx/android/sdk/replicator/message/MessageReplicator;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->closeReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;->f:Lcom/onyx/android/sdk/replicator/message/MessageReplicator;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction$a;-><init>(Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction$b;-><init>(Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction$c;-><init>(Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/bnj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bnj;-><init>(Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Z
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/replicator/event/MessageReplicateEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;->e:Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/event/MessageReplicateEvent;-><init>(Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;)V

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_0
    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/message/MessageReplicatorSyncAction;->g:Z

    return p0
.end method
