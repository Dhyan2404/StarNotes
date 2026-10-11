.class public final Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,134:1\n92#2,4:135\n*S KotlinDebug\n*F\n+ 1 IRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls\n*L\n128#1:135,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIRenderHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,134:1\n92#2,4:135\n*S KotlinDebug\n*F\n+ 1 IRenderHandler.kt\ncom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls\n*L\n128#1:135,4\n*E\n"
    }
.end annotation


# direct methods
.method public static addNoteSearchBeanList(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/List;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static addRenderer(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "renderer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static cancelAllRenderRequest(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static clearNoteSearchBeanList(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static clearRenderer(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static clearShapeFlushInfo(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "visibleBoxList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "fromIterable(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static createDisplayScalingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "visibleBoxList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "fromIterable(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static createDisplayScrollingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "visibleBoxList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "fromIterable(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static createPreRenderBoxListObservable(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "boxList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "fromIterable(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static displayBoxList(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static flushShapeToPage(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shapeFlushInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getDisplayDebugString(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method public static getPageRenderNodeInfo(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "pageId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPageSliceInfo(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "pageId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static invalidateNotVisiblePagesIf(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/Collection;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "pageIdSet"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static invalidateSliceByPages(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/Collection;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "pageIdSet"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static isEnabledPageBorder(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static log(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static logW(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static lowLatencyFlushToPage(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shapeFlushInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static removeRenderer(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static removeVerifyId(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "virtualBoxInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static rendererSize(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)I
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static resizeCache(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "viewSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static safeClearAllNoteSliceCache(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static safeClearAllSliceCache(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static safeClearPageNoteSliceCache(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pageId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static setBackground(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public static setPageVisible(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static updateExistsRenderNode(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "virtualPageBoxInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
