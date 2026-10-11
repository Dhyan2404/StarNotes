.class public final Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction;
.super Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction<",
        "Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction;",
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;",
        "replicatorManager",
        "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
        "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
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


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->getTreeReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->createBaseObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction$a;->e:Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction$b;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
