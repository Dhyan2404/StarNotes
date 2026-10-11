.class public final Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u000f\u001a\u00020\u0000H\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "n",
        "Lcom/onyx/android/sdk/replicator/font/FontList;",
        "o",
        "fontList",
        "q",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "model",
        "l",
        "m",
        "p",
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

.method public static final synthetic access$cleanOutdatedFont(Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;->l(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadFontThumbnail(Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;->m(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureDefaultFont(Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;->n()V

    return-void
.end method

.method public static final synthetic access$loadFromCloud(Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;)Lcom/onyx/android/sdk/replicator/font/FontList;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;->o()Lcom/onyx/android/sdk/replicator/font/FontList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$markSyncState(Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;)Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;->p()Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveToLocal(Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;Lcom/onyx/android/sdk/replicator/font/FontList;)Lcom/onyx/android/sdk/replicator/font/FontList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;->q(Lcom/onyx/android/sdk/replicator/font/FontList;)Lcom/onyx/android/sdk/replicator/font/FontList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
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

    const-string v1, "font"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->hasSynced(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$g;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->isDownloaded(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeFullMD5Safely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_1
    return-object p1
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;
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

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$h;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction$h;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public final n()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->INSTANCE:Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontConfig;->ensureDefaultFontPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onegravity/rteditor/fonts/FontManager;->addFontFace(Ljava/lang/String;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final o()Lcom/onyx/android/sdk/replicator/font/FontList;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/replicator/font/FontServiceExecutor;->INSTANCE:Lcom/onyx/android/sdk/replicator/font/FontServiceExecutor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/font/FontServiceExecutor;->loadFontList()Lcom/onyx/android/sdk/replicator/font/FontListQueryResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getData()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/font/FontResourceList;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/font/FontResourceList;->getResources()Lcom/onyx/android/sdk/replicator/font/FontList;

    move-result-object p0

    return-object p0
.end method

.method public final p()Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const-string v1, "font"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->markAsSynced(Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/replicator/font/FontList;)Lcom/onyx/android/sdk/replicator/font/FontList;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getAppFontProvider()Lcom/onyx/android/sdk/replicator/note/db/FontProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/FontProvider;->syncFontList(Ljava/util/List;)V

    return-object p1
.end method
