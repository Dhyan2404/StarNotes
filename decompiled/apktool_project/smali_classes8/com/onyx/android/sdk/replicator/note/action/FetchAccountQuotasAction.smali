.class public final Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R$\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR$\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR$\u0010\u0016\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\t\u001a\u0004\u0008\u0014\u0010\u000b\"\u0004\u0008\u0015\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
        "l",
        "",
        "f",
        "Ljava/lang/String;",
        "getCategory",
        "()Ljava/lang/String;",
        "setCategory",
        "(Ljava/lang/String;)V",
        "category",
        "g",
        "getSubCategory",
        "setSubCategory",
        "subCategory",
        "h",
        "getItemId",
        "setItemId",
        "itemId",
        "<init>",
        "()V",
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
.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$fetch(Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;->l()Ljava/util/List;

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
            "Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;",
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

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction$b;->e:Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction$c;-><init>(Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final getSubCategory()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/FetchQuotasRequest;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/FetchQuotasRequest;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/request/cloud/FetchQuotasRequest;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/request/cloud/FetchQuotasRequest;->setSubCategory(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/FetchQuotasRequest;->setItemId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/FetchQuotasRequest;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;->f:Ljava/lang/String;

    return-void
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;->h:Ljava/lang/String;

    return-void
.end method

.method public final setSubCategory(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;->g:Ljava/lang/String;

    return-void
.end method
