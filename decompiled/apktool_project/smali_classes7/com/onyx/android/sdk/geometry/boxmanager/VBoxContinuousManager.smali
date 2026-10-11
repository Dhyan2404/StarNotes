.class public Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;
.super Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVBoxContinuousManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VBoxContinuousManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,465:1\n1855#2,2:466\n350#2,7:468\n1864#2,3:475\n1864#2,3:478\n1549#2:482\n1620#2,3:483\n1855#2,2:486\n1#3:481\n*S KotlinDebug\n*F\n+ 1 VBoxContinuousManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager\n*L\n190#1:466,2\n200#1:468,7\n250#1:475,3\n270#1:478,3\n414#1:482\n414#1:483,3\n445#1:486,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008W\u0010XJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002JP\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r26\u0010\u0015\u001a2\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\u000fH\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0002J\u001e\u0010\u001b\u001a\u00020\u00042\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00182\u0006\u0010\u001a\u001a\u00020\rH\u0002J\u0016\u0010\u001e\u001a\u00020\u00042\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u0016\u0010\u001f\u001a\u00020\u00042\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u0010\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0016J\u0010\u0010%\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\rH\u0016J\u0018\u0010)\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u0014H\u0016J \u0010-\u001a\u00020\u00142\u0006\u0010*\u001a\u00020 2\u0006\u0010+\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u0002H\u0016J\u0018\u0010-\u001a\u00020\u00012\u0006\u0010.\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u0002H\u0016J\u0018\u00102\u001a\u00020\u00012\u0006\u00100\u001a\u00020\u00022\u0006\u00101\u001a\u00020\u0002H\u0016J\u000e\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u0016\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001c2\u0006\u00105\u001a\u000204H\u0016J\u001c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001c2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u0010\u0010:\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u000bH\u0016J\u0016\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001c2\u0006\u0010;\u001a\u00020\rH\u0016J\u000e\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u000e\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u0008\u0010?\u001a\u00020\"H\u0016J\u0010\u0010@\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010A\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0008\u0010B\u001a\u00020\u0002H\u0016J\u0010\u0010F\u001a\u00020E2\u0006\u0010D\u001a\u00020CH\u0016J\u0010\u0010I\u001a\u00020G2\u0006\u0010H\u001a\u00020GH\u0016J\u001e\u0010M\u001a\u0002042\u0006\u0010J\u001a\u00020G2\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00020KH\u0016J\u0008\u0010N\u001a\u00020\u0014H\u0016J\u0008\u0010O\u001a\u00020\u0004H\u0016J\u000e\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001cH\u0016J\u001e\u0010Q\u001a\u00020\u00042\u0006\u0010J\u001a\u00020G2\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00020KH\u0016J\u0010\u0010S\u001a\u00020\u00042\u0006\u0010R\u001a\u00020 H\u0016J \u0010V\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\r2\u0006\u0010T\u001a\u00020\u00022\u0006\u0010U\u001a\u00020\u0002H\u0016\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;",
        "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;",
        "",
        "b",
        "",
        "g",
        "e",
        "scale",
        "d",
        "i",
        "h",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "resultBox",
        "Landroid/graphics/RectF;",
        "lastVisibleRegion",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "current",
        "last",
        "",
        "accept",
        "f",
        "c",
        "",
        "boxInfoList",
        "boundingRectF",
        "a",
        "",
        "boxList",
        "setData",
        "updateDataAndApplyScale",
        "",
        "id",
        "",
        "indexOf",
        "viewport",
        "setViewport",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "calculate",
        "updateViewportSize",
        "boxId",
        "offsetX",
        "offsetY",
        "scrollTo",
        "newX",
        "newY",
        "dx",
        "dy",
        "scrollBy",
        "visibleBoxes",
        "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;",
        "viewArgs",
        "collectVisibleBoxList",
        "list",
        "convertToVisibleBoxList",
        "box",
        "updateToVisibleBox",
        "documentRectF",
        "collectIntersectsVisibleBoxList",
        "collectNextViewportVisibleBoxList",
        "collectPrevViewportVisibleBoxList",
        "pageCount",
        "setScale",
        "initScale",
        "currentDisplayScale",
        "Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;",
        "args",
        "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;",
        "createRxScrollerArgs",
        "Landroid/graphics/Matrix;",
        "matrix",
        "loadReboundMatrix",
        "gestureDeltaMatrix",
        "Lorg/apache/commons/lang3/Range;",
        "displayScaleRange",
        "toBoxManagerViewArgs",
        "isEnabledContinuousScroll",
        "alignCenter",
        "copyBoxList",
        "applyMatrix",
        "pageId",
        "updateCurrentMinScale",
        "widthTolerance",
        "shrinkScale",
        "calculateScaleRatioForViewport",
        "<init>",
        "()V",
        "sdk-geometry_release"
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
        "SMAP\nVBoxContinuousManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VBoxContinuousManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,465:1\n1855#2,2:466\n350#2,7:468\n1864#2,3:475\n1864#2,3:478\n1549#2:482\n1620#2,3:483\n1855#2,2:486\n1#3:481\n*S KotlinDebug\n*F\n+ 1 VBoxContinuousManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager\n*L\n190#1:466,2\n200#1:468,7\n250#1:475,3\n270#1:478,3\n414#1:482\n414#1:483,3\n445#1:486,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterHorizontal(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildrenDisplayRectF()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public alignCenter()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterHorizontal(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public applyMatrix(Landroid/graphics/Matrix;Lorg/apache/commons/lang3/Range;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/apache/commons/lang3/Range;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gestureDeltaMatrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayScaleRange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->toBoxManagerViewArgs(Landroid/graphics/Matrix;Lorg/apache/commons/lang3/Range;)Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getScale()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->setScale(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getViewportLeft()F

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getViewportTop()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->scrollTo(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    return-void
.end method

.method public final b()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getGap()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewportLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limit(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getEnableFreeMovePaper()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterHorizontalIf(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public calculateScaleRatioForViewport(Landroid/graphics/RectF;FF)F
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentOrFirstBoxInfo$sdk_geometry_release()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float p2, v1, p2

    if-gez p2, :cond_1

    invoke-static {p1, p3, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;FF)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewportWidth(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p0

    div-float/2addr p0, p2

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public collectIntersectsVisibleBoxList(Landroid/graphics/RectF;)Ljava/util/List;
    .locals 5
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "documentRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->updateToVisibleBox(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public collectNextViewportVisibleBoxList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->collectIntersectsVisibleBoxList(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public collectPrevViewportVisibleBoxList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->collectIntersectsVisibleBoxList(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public collectVisibleBoxList(Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;)Ljava/util/List;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "viewArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getFirstVisibleIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentBoxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentMinScale()F

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getScale()F

    move-result v6

    div-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getViewportLeft()F

    move-result v7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getViewportTop()F

    move-result p1

    invoke-virtual {v6, v7, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->g()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->visibleBoxes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setViewport(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentMinScale(F)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentBoxId(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->convertToVisibleBoxList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setViewport(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentMinScale(F)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentBoxId(Ljava/lang/String;)V

    throw p1
.end method

.method public convertToVisibleBoxList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->updateToVisibleBox(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public copyBoxList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public createRxScrollerArgs(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getVelocityX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setVelocityX(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getVelocityY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setVelocityY(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewportLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setLimitRect(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getVelocityX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getVelocityY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartX(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->isRestoreScrollBegin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getScrollBeginY()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    :goto_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartY(F)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFrictionX(F)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFrictionY(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getVelocityX()F

    move-result p0

    cmpl-float p0, p0, v2

    if-lez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;->CONTINUOUS_SCROLL_TO_RIGHT:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;->CONTINUOUS_SCROLL_TO_LEFT:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    :goto_1
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFlingActionType(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;)V

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->isRestoreScrollBegin()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getScrollBeginX()F

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    :goto_2
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartX(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartY(F)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFrictionX(F)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFrictionY(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getVelocityY()F

    move-result p0

    cmpl-float p0, p0, v2

    if-lez p0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;->CONTINUOUS_SCROLL_TO_BOTTOM:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;->CONTINUOUS_SCROLL_TO_TOP:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    :goto_3
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFlingActionType(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;)V

    :goto_4
    return-object v0
.end method

.method public currentDisplayScale()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentMinScale()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final d(F)V
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->b()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v6, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v6, p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setScale(F)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result v8

    float-to-double v8, v8

    if-lez v5, :cond_1

    add-double/2addr v3, v0

    :cond_1
    add-double/2addr v8, v3

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v5

    double-to-float v3, v3

    iput v3, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    double-to-float v4, v8

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    move v5, v7

    move-wide v3, v8

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->i()V

    return-void
.end method

.method public final e()V
    .locals 6

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->b()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "get(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->verCheck(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->bottom()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->topAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->bottom()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->bottom()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->bottom()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->moveToBottom(F)V

    :cond_4
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Landroid/graphics/RectF;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/graphics/RectF;",
            "-",
            "Landroid/graphics/RectF;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->toZeroOriginRoundRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p3, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentBoxId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    const/4 p3, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, p3, v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewportWithAspectScaleCheck$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentMinScale(F)V

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->c()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->e()V

    return-void
.end method

.method public final h()V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setViewportLimitRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getEnableFreeMovePaper()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewportLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewportLimitRect()Landroid/graphics/RectF;

    move-result-object p0

    const/high16 v0, 0x43960000    # 300.0f

    invoke-virtual {p0, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public final i()V
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->isNaNBox()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePagesBoundingRect, find NANBox, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getDebugString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/blankj/utilcode/util/LogUtils;->wTag(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->logNaNTrace()V

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_3
    :goto_1
    move v3, v5

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->a(Ljava/util/List;Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->h()V

    return-void
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->indexOfId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public initScale(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setActualScale(F)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->d(F)V

    return-void
.end method

.method public isEnabledContinuousScroll()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public loadReboundMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 7
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewportLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [F

    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x2

    aget v5, v3, v5

    neg-float v5, v5

    const/4 v6, 0x5

    aget v3, v3, v6

    neg-float v3, v3

    iget v6, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    iget v5, v1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v4

    add-float/2addr v5, v3

    invoke-virtual {v1, v6, v5}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {v2, v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limit(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getEnableFreeMovePaper()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterHorizontalIf(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget p1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v6

    iget v0, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v5

    neg-float p1, p1

    neg-float v0, v0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p0
.end method

.method public pageCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result p0

    return p0
.end method

.method public scrollBy(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->offset(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->g()V

    return-object p0
.end method

.method public scrollTo(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->offsetTo(FF)V

    .line 7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->g()V

    return-object p0
.end method

.method public scrollTo(Ljava/lang/String;FF)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "boxId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->getIndexElementPairWithId(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignOrigin(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->scrollBy(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    const/4 p0, 0x1

    return p0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boxList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setScale(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setActualScale(F)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->d(F)V

    :cond_1
    return-void
.end method

.method public setViewport(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-object p0
.end method

.method public toBoxManagerViewArgs(Landroid/graphics/Matrix;Lorg/apache/commons/lang3/Range;)Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;
    .locals 4
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/apache/commons/lang3/Range;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "gestureDeltaMatrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayScaleRange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixTransX([F)F

    move-result v0

    neg-float v0, v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixTransY([F)F

    move-result v1

    neg-float v1, v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleX([F)F

    move-result v3

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleY([F)F

    move-result p1

    invoke-virtual {v2, v3, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->currentDisplayScale()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/commons/lang3/Range;->getMinimum()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "getMinimum(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Comparable;

    invoke-virtual {p2}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object p2

    const-string v3, "getMaximum(...)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {v0, p1, v1, p2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentMinScale()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    new-instance p2, Landroid/graphics/PointF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {p2, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v2, p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v0, p2}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;-><init>(FFF)V

    return-object p0
.end method

.method public updateCurrentMinScale(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->getWithId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->toZeroOriginRoundRectF()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewportWithAspectScaleCheck$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentMinScale(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentBoxId(Ljava/lang/String;)V

    return-void
.end method

.method public updateDataAndApplyScale(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boxList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->setData(Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateCurrentMinScale$default(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->initScale(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->g()V

    return-void
.end method

.method public updateToVisibleBox(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "box"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateVisibleRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public updateViewportSize(Lcom/onyx/android/sdk/base/data/Size;Z)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "size"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->resize(Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/Size;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->h()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->g()V

    return-void
.end method

.method public visibleBoxes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getFirstVisibleIndex()I

    move-result v1

    if-gez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->b()F

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getFirstVisibleIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "get(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->verCheck(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateVisibleRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->intersect(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager$visibleBoxes$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager$visibleBoxes$1;

    invoke-virtual {p0, v6, v2, v5}, Lcom/onyx/android/sdk/geometry/boxmanager/VBoxContinuousManager;->f(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;Lkotlin/jvm/functions/Function2;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method
