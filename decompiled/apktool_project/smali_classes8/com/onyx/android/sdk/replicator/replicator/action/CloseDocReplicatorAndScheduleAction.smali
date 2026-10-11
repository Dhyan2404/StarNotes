.class public final Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;
.super Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction<",
        "Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0008H\u0014R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;",
        "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "replicatorInfo",
        "setReplicatorInfo",
        "",
        "success",
        "setSuccess",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "f",
        "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;",
        "g",
        "Z",
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
.field public f:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Z


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

.method public static final synthetic access$getReplicatorInfo$p(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;->f:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    return-object p0
.end method

.method public static final synthetic access$getSuccess$p(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;->g:Z

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction$a;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction$b;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction$c;-><init>(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setReplicatorInfo(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "replicatorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;->f:Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    return-object p0
.end method

.method public final setSuccess(Z)Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;->g:Z

    return-object p0
.end method
