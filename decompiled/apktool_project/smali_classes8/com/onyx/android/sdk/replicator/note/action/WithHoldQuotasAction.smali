.class public final Lcom/onyx/android/sdk/replicator/note/action/WithHoldQuotasAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/WithHoldQuotasAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;",
        "f",
        "Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;",
        "withHoldQuotasData",
        "<init>",
        "(Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;)V",
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
.field public final f:Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "withHoldQuotasData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/WithHoldQuotasAction;->f:Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;

    return-void
.end method

.method public static final synthetic access$load(Lcom/onyx/android/sdk/replicator/note/action/WithHoldQuotasAction;)Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/WithHoldQuotasAction;->l()Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;

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
            "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/WithHoldQuotasAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/WithHoldQuotasAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/WithHoldQuotasAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/WithHoldQuotasRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/WithHoldQuotasAction;->f:Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/WithHoldQuotasRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/WithHoldQuotasRequest;->execute()Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;

    move-result-object p0

    return-object p0
.end method
