.class public abstract Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\u0007\u001a\u00020\u0005J\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00042\u0006\u0010\t\u001a\u00020\u0008R\u0014\u0010\u000e\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;",
        "",
        "T",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
        "createObservable",
        "getReplicatorManager",
        "",
        "documentId",
        "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
        "ensureReplicatorObservable",
        "e",
        "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
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


# instance fields
.field public final e:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replicatorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->e:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    return-void
.end method


# virtual methods
.method public final createObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final ensureReplicatorObservable(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->ensureReplicatorObservable(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->e:Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    return-object p0
.end method
