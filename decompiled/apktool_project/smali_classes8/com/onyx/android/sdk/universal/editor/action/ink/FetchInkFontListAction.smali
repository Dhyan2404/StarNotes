.class public final Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000c\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\r\u001a\u00020\u0000H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/font/FontList;",
        "p",
        "fontList",
        "r",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "model",
        "m",
        "o",
        "q",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$cleanOutdatedFont(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;->m(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadFontThumbnail(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;->o(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadFromCloud(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;)Lcom/onyx/android/sdk/replicator/font/FontList;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;->p()Lcom/onyx/android/sdk/replicator/font/FontList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveToLocal(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;Lcom/onyx/android/sdk/replicator/font/FontList;)Lcom/onyx/android/sdk/replicator/font/FontList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;->r(Lcom/onyx/android/sdk/replicator/font/FontList;)Lcom/onyx/android/sdk/replicator/font/FontList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;->n(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;)V

    return-void
.end method

.method public static final n(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;->q()Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
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

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "ink_beautify"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->getComposedKey$default(Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$a;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getDataObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$c;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$d;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$e;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/gag;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gag;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->checkMD5WithDelete(Ljava/lang/String;Ljava/lang/String;)Z

    return-object p1
.end method

.method public final o(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/data/glide/GlideExt;->INSTANCE:Lcom/onyx/android/sdk/data/glide/GlideExt;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getCachedPreviewFile(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/onyx/android/sdk/data/glide/GlideExt;->saveAsFile(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getInkTitleThumbnail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getCachedInkTitleThumbnailFile(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/data/glide/GlideExt;->saveAsFile(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getInkContentThumbnail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getCachedInkContentThumbnailFile(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/onyx/android/sdk/data/glide/GlideExt;->saveAsFile(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lio/reactivex/rxjava3/core/Observable;->merge(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$h;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction$h;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public final p()Lcom/onyx/android/sdk/replicator/font/FontList;
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/android/sdk/replicator/common/NoteService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/common/NoteService;

    invoke-interface {v0}, Lcom/onyx/android/sdk/replicator/common/NoteService;->loadInkFontList()Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/font/FontResourceList;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/font/FontResourceList;->getResources()Lcom/onyx/android/sdk/replicator/font/FontList;

    move-result-object p0

    return-object p0
.end method

.method public final q()Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "ink_beautify"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->getComposedKey$default(Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->markAsSynced(Ljava/lang/String;)V

    return-object p0
.end method

.method public final r(Lcom/onyx/android/sdk/replicator/font/FontList;)Lcom/onyx/android/sdk/replicator/font/FontList;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserInkFontProvider()Lcom/onyx/android/sdk/replicator/note/db/FontProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/FontProvider;->syncInkFontList(Ljava/util/List;)V

    return-object p1
.end method
