.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForceRenderSliceListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,333:1\n1477#2:334\n1502#2,3:335\n1505#2,3:345\n372#3,7:338\n*S KotlinDebug\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt\n*L\n108#1:334\n108#1:335,3\n108#1:345,3\n108#1:338,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a$\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002\u001a \u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u001a2\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u001a\u001c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u001c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a$\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u001a\"\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\n\u001a2\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u001a*\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u001a&\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\r0\u0016\u001a$\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0013\u001a\u001a\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u000c\u001a\u00020\r\u001a\"\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\n\u001a\u001e\u0010\u001b\u001a\u00020\u001c*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002\u001a\u0016\u0010\u001d\u001a\u00020\u001c*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u001e\u001a\u00020\u001f\u001a\u0016\u0010 \u001a\u00020\u001c*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u001e\u001a\u00020\u001f\u00a8\u0006!"
    }
    d2 = {
        "ensureHighQualityDisplay",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "args",
        "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;",
        "result",
        "forceRenderIntersectsNoteDirtyRectToDisplay",
        "shapeList",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "forceRenderNoteDirtyRect",
        "virtualPageBoxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "isEnabledPrintFailLog",
        "",
        "forceRenderNoteDirtyRectImpl",
        "forceRenderNoteDirtyRectToDisplay",
        "pageDisplayRectF",
        "Landroid/graphics/RectF;",
        "shape",
        "map",
        "",
        "forceRenderNoteDirtyScreenRectToDisplay",
        "screenRectF",
        "forceRenderNoteToDisplay",
        "forceRenderShapeOutsideRectToDisplay",
        "logAfterForceRender",
        "",
        "logForForceRenderNote",
        "msg",
        "",
        "logW",
        "sdk-universal_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nForceRenderSliceListActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,333:1\n1477#2:334\n1502#2,3:335\n1505#2,3:345\n372#3,7:338\n*S KotlinDebug\n*F\n+ 1 ForceRenderSliceListActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt\n*L\n108#1:334\n108#1:335,3\n108#1:345,3\n108#1:338,7\n*E\n"
    }
.end annotation


# direct methods
.method public static final ensureHighQualityDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;",
            "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->isEnabledEnsureDisplay()Z

    move-result v0

    const-string v1, "just(...)"

    if-nez v0, :cond_0

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewportRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;->isEnabledHighQuality(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;->isHighQualityUpdateSuccess()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isEnabledEnsureDisplay()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "disable ensure display by args"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->safeClearPageNoteSliceCache(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ensureHighQualityDisplay"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt;->display(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$a;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$a;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final forceRenderIntersectsNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
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
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "just(...)"

    if-eqz v0, :cond_0

    const-string p1, "no shapeList"

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->logForForceRenderNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findIntersectsVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->toBoxIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->toPageIdSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->findVisibleBoxInfoList(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v2, "observeOn(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$1;

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderIntersectsNoteDirtyRectToDisplay$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/Set;Ljava/util/List;)V

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final forceRenderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
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
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "no shapeList"

    .line 2
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->logForForceRenderNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 4
    :cond_0
    new-instance v9, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {v0, p2, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingPageDisplayRectFWithWidth(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, v9

    .line 6
    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v9, p3}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->setEnabledPrintFailLog(Z)V

    .line 8
    invoke-static {p0, v9}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final forceRenderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRectImpl(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$b;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic forceRenderNoteDirtyRect$default(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final forceRenderNoteDirtyRectImpl(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 9
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object v8

    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->getEnableVerifyId()Z

    move-result v0

    iput-boolean v0, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->getInvalidate()Z

    move-result v0

    iput-boolean v0, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;

    invoke-direct {v4}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;-><init>()V

    invoke-static {v8}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v0

    const-string v1, "just(...)"

    const-string v2, "id = "

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isFullPageRender()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", empty dirty rect"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->logForForceRenderNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;)V

    invoke-static {v4}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->createNoteRenderArgs(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportRenderPageContentBitmap()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->setSupportRenderPageContentBitmap(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isFullPageRender()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v8, :cond_1

    invoke-static {v8}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    :cond_2
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->setDirtyPageDisplayRectF(Landroid/graphics/RectF;)V

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->getSliceRenderInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", no renderInfo, invalidate not visible pages."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->logForForceRenderNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->invalidateNotVisiblePagesIf(Ljava/util/Collection;)V

    invoke-static {v4}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->isEnabledEnsureDisplay()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->isEnabledEnsureDisplay()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->setEnabledEnsureDisplay(Z)V

    :cond_5
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->setNoteRenderArgs(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->noteSliceList()Ljava/util/List;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;->RENDERING:Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->updateSliceListState(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderNoteDirtyRectImpl$1;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$forceRenderNoteDirtyRectImpl$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/graphics/RectF;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final forceRenderNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Landroid/graphics/RectF;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 33
    :cond_0
    new-instance v9, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    invoke-static {p0, v9}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final forceRenderNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {v1, p2, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingPageDisplayRectFWithWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x34

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final forceRenderNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
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
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "no shapeList"

    .line 22
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->logForForceRenderNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 24
    :cond_0
    new-instance v9, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    .line 25
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {v0, p2, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingPageDisplayRectFWithWidth(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, v9

    .line 26
    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    invoke-virtual {v9, p3}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;->setEnabledPrintFailLog(Z)V

    .line 28
    invoke-static {p0, v9}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final forceRenderNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
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
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "no shapeList"

    .line 7
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->logForForceRenderNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 9
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 12
    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    .line 13
    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 18
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->findBoxInfoListWithPageIdList$default(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/Collection;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 20
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;

    invoke-direct {v1, p0, v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/Map;Z)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final forceRenderNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "concatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic forceRenderNoteDirtyRectToDisplay$default(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic forceRenderNoteDirtyRectToDisplay$default(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/List;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/List;Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final forceRenderNoteDirtyScreenRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;
    .locals 11
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Landroid/graphics/RectF;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v0

    const-string v1, "just(...)"

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iget p2, v0, Landroid/graphics/RectF;->left:F

    neg-float p2, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-virtual {v4, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v10}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final forceRenderNoteToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->computeNoteSliceRenderInfoList(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v9, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x26

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v9}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRect(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final forceRenderShapeOutsideRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;
    .locals 9
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {v0, p2, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingPageDisplayRectFWithWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v2, v1, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToPageDisplayRectF(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v6, v1, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v2, v3, v4, v5}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$f;

    invoke-direct {v1, p2, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$f;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$g;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final logAfterForceRender(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;",
            "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgsKt;->getWarningLogAfterForceRender(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyResult;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->logW(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final logForForceRenderNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final logW(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
