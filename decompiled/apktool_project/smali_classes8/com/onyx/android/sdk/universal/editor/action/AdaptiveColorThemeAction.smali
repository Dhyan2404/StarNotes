.class public final Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\n\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "pageInfo",
        "",
        "pageIndex",
        "m",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public static final synthetic access$adaptiveColorTheme(Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction;->l()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction$create$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction$create$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createReaderObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    sget-object v3, Lcom/onyx/android/sdk/base/data/ContentConstants;->INSTANCE:Lcom/onyx/android/sdk/base/data/ContentConstants;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/data/ContentConstants;->isPDF(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->parseContentPageIndex()I

    move-result v3

    new-instance v4, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->setPath(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->setPageIndex(I)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageInfoRequest;->getReaderPageInfo()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;

    move-result-object v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v5

    invoke-virtual {p0, v4, v3}, Lcom/onyx/android/sdk/universal/editor/action/AdaptiveColorThemeAction;->m(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->setColorTheme(I)V

    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->updatePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;I)I
    .locals 11

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPageOriginSize()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPageOriginSize()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getDEFAULT_PAGE_THUMBNAIL_SIZE()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getThumbnailSize(Lcom/onyx/android/sdk/base/data/Size;Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v6

    new-instance v0, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    move-object v3, v0

    move v5, p2

    invoke-direct/range {v3 .. v10}, Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/base/data/Size;Landroid/graphics/RectF;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/LoadReaderPageThumbnailArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/request/LoadReaderPageThumbnailRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->loadResourceColor(Landroid/graphics/Bitmap;)I

    move-result p0

    sget-object p1, Lcom/onyx/android/sdk/base/data/ColorTheme;->INSTANCE:Lcom/onyx/android/sdk/base/data/ColorTheme;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/ColorTheme;->getThemeFromColor(I)I

    move-result p0

    return p0
.end method
