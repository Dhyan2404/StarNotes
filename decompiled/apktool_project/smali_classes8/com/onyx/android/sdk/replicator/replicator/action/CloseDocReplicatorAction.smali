.class public final Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;
.super Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction<",
        "Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;",
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
        "manager",
        "",
        "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
        "n",
        "replicators",
        "l",
        "m",
        "replicatorManager",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replicatorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;-><init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V

    return-void
.end method

.method public static final synthetic access$checkListObservable(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;->l(Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadOpenDocList(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;->n(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction$d;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction$e;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;->m(Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final m(Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction$a;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction$a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction$b;->e:Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction$b;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction$c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction$c;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getOpenDocReplicatorList()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
