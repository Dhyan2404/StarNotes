.class public final Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction$a;->e:Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction$a;->e:Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;->getReplicatorManager()Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;-><init>(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction$a;->e:Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;->access$getReplicatorInfo$p(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;)Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;->setReplicatorInfoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction$a;->e:Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;->access$getSuccess$p(Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;->setSuccess(Z)Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction$a;->a(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
