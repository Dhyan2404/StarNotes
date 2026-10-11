.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchHwrResourceListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchHwrResourceListAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1855#2,2:67\n*S KotlinDebug\n*F\n+ 1 FetchHwrResourceListAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction\n*L\n49#1:67,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u001c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0008\u0010\n\u001a\u00020\u0000H\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002R\u0014\u0010\u000f\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0015\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;",
        "o",
        "models",
        "q",
        "p",
        "",
        "r",
        "e",
        "Ljava/lang/String;",
        "engine",
        "Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;",
        "f",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;",
        "provider",
        "<init>",
        "(Ljava/lang/String;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFetchHwrResourceListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchHwrResourceListAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1855#2,2:67\n*S KotlinDebug\n*F\n+ 1 FetchHwrResourceListAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction\n*L\n49#1:67,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;->e:Ljava/lang/String;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction$provider$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction$provider$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$loadFromCloud(Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;->o()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveToLocal(Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;->m(Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;->p()Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const-string v1, "hwr_resource"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->hasSynced(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/fag;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fag;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;->r()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/android/sdk/replicator/common/NoteService;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/common/NoteService;

    invoke-interface {v1, p0}, Lcom/onyx/android/sdk/replicator/common/NoteService;->loadHwrResourceList(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceItems;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceItems;->getItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p()Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const-string v1, "hwr_resource"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->markAsSynced(Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;->setEngine(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;->n()Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;->saveLangResourceList(Ljava/util/List;)V

    return-object p1
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;->e:Ljava/lang/String;

    const-string v0, "SuNia"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "sunia"

    goto :goto_0

    :cond_0
    const-string v0, "GoogleML"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "mlkit"

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method
