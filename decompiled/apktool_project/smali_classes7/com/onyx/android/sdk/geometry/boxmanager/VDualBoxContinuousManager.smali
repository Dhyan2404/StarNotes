.class public final Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;
.super Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVDualBoxContinuousManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VDualBoxContinuousManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,636:1\n1855#2,2:637\n350#2,7:639\n1864#2,3:646\n1549#2:650\n1620#2,3:651\n1855#2,2:654\n1#3:649\n703#4,5:656\n703#4,5:661\n*S KotlinDebug\n*F\n+ 1 VDualBoxContinuousManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager\n*L\n214#1:637,2\n224#1:639,7\n322#1:646,3\n481#1:650\n481#1:651,3\n550#1:654,2\n627#1:656,5\n632#1:661,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008`\u0010aJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0002H\u0002J\u0008\u0010\u000e\u001a\u00020\u0004H\u0002J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002J\u001e\u0010\u0013\u001a\u00020\u00042\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001a\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0002J\u001e\u0010\u001a\u001a\u00020\u00042\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010\u0019\u001a\u00020\u0011H\u0002J\u001e\u0010\u001b\u001a\u00020\u00042\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010\u0019\u001a\u00020\u0011H\u0002J\u001a\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00072\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0002J\u001a\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u0002J\u001a\u0010 \u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u0002J&\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\u0002J\u0016\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00070$2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0016\u0010\'\u001a\u00020\u00042\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00070$H\u0016J\u0016\u0010(\u001a\u00020\u00042\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00070$H\u0016J\u0010\u0010,\u001a\u00020+2\u0006\u0010*\u001a\u00020)H\u0016J\u0010\u0010.\u001a\u00020\u00012\u0006\u0010-\u001a\u00020\u0011H\u0016J\u0018\u00102\u001a\u00020\u00042\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020\"H\u0016J \u00106\u001a\u00020\"2\u0006\u00103\u001a\u00020)2\u0006\u00104\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u0002H\u0016J\u0018\u00106\u001a\u00020\u00012\u0006\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u0002H\u0016J\u0018\u0010;\u001a\u00020\u00012\u0006\u00109\u001a\u00020\u00022\u0006\u0010:\u001a\u00020\u0002H\u0016J\u000e\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00070$H\u0016J\u0016\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00070$2\u0006\u0010>\u001a\u00020=H\u0016J\u001c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00070$2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070$H\u0016J\u0010\u0010B\u001a\u00020\u00042\u0006\u0010A\u001a\u00020\u0007H\u0016J\u0016\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00070$2\u0006\u0010!\u001a\u00020\u0011H\u0016J\u000e\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00070$H\u0016J\u000e\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00070$H\u0016J\u0008\u0010F\u001a\u00020+H\u0016J\u0010\u0010G\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010H\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u0008\u0010I\u001a\u00020\u0002H\u0016J\u0010\u0010M\u001a\u00020L2\u0006\u0010K\u001a\u00020JH\u0016J\u0010\u0010P\u001a\u00020N2\u0006\u0010O\u001a\u00020NH\u0016J\u001e\u0010T\u001a\u00020=2\u0006\u0010Q\u001a\u00020N2\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00020RH\u0016J\u0008\u0010U\u001a\u00020\"H\u0016J\u0008\u0010V\u001a\u00020\u0004H\u0016J\u000e\u0010W\u001a\u0008\u0012\u0004\u0012\u00020\u00070$H\u0016J\u001e\u0010X\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020N2\u000c\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00020RH\u0016J\u0010\u0010Z\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020)H\u0016J \u0010]\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u00112\u0006\u0010[\u001a\u00020\u00022\u0006\u0010\\\u001a\u00020\u0002H\u0016R\u0014\u0010_\u001a\u00020+8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010^\u00a8\u0006b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;",
        "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;",
        "",
        "h",
        "",
        "o",
        "m",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxInfo",
        "",
        "list",
        "b",
        "scale",
        "l",
        "q",
        "p",
        "resultList",
        "Landroid/graphics/RectF;",
        "lastVisibleRegion",
        "n",
        "first",
        "second",
        "e",
        "k",
        "boxInfoList",
        "boundingRectF",
        "c",
        "g",
        "f",
        "firstBox",
        "secondBox",
        "i",
        "j",
        "documentRectF",
        "",
        "a",
        "",
        "d",
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
        "convertToVisibleBoxList",
        "box",
        "updateToVisibleBox",
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
        "I",
        "columnCount",
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
        "SMAP\nVDualBoxContinuousManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VDualBoxContinuousManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,636:1\n1855#2,2:637\n350#2,7:639\n1864#2,3:646\n1549#2:650\n1620#2,3:651\n1855#2,2:654\n1#3:649\n703#4,5:656\n703#4,5:661\n*S KotlinDebug\n*F\n+ 1 VDualBoxContinuousManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager\n*L\n214#1:637,2\n224#1:639,7\n322#1:646,3\n481#1:650\n481#1:651,3\n550#1:654,2\n627#1:656,5\n632#1:661,5\n*E\n"
    }
.end annotation


# instance fields
.field public final k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->k:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->updateToVisibleBox(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->toBoxManagerViewArgs(Landroid/graphics/Matrix;Lorg/apache/commons/lang3/Range;)Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getScale()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->setScale(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getViewportLeft()F

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getViewportTop()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->scrollTo(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateVisibleRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->intersect(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c(Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 7
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->centerAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildrenDisplayRectF()V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->g(Ljava/util/List;Landroid/graphics/RectF;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->h()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->h()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    iget p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->k:I

    invoke-static {v2, p0}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v3

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result p0

    if-lez p0, :cond_1

    if-le v2, v3, :cond_2

    :cond_1
    if-gez p0, :cond_4

    if-gt v3, v2, :cond_4

    :cond_2
    :goto_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->rightAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    add-int/lit8 v5, v2, 0x1

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->leftAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterVertical(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildrenDisplayRectF()V

    :cond_3
    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterVertical(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildrenDisplayRectF()V

    if-eq v2, v3, :cond_4

    add-int/2addr v2, p0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public calculateScaleRatioForViewport(Landroid/graphics/RectF;FF)F
    .locals 7
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->h()F

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->k:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentOrFirstBoxInfo$sdk_geometry_release()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->d(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    :cond_1
    add-float/2addr v5, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float p2, v3, p2

    if-gez p2, :cond_2

    invoke-static {p1, p3, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;FF)V

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    add-float/2addr v4, p3

    goto :goto_1

    :cond_3
    add-float/2addr v4, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr p0, v4

    div-float/2addr p0, p2

    return p0

    :cond_4
    :goto_2
    return v2
.end method

.method public collectIntersectsVisibleBoxList(Landroid/graphics/RectF;)Ljava/util/List;
    .locals 7
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

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    iget v2, p0, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->k:I

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v3

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    if-lez v1, :cond_3

    if-le v2, v3, :cond_4

    :cond_3
    if-gez v1, :cond_7

    if-gt v3, v2, :cond_7

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "get(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1, v4, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->a(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Z

    move-result v4

    if-eqz v5, :cond_5

    invoke-virtual {p0, p1, v5, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->a(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x1

    :cond_5
    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    if-eq v2, v3, :cond_7

    add-int/2addr v2, v1

    goto :goto_2

    :cond_7
    :goto_3
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

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->collectIntersectsVisibleBoxList(Landroid/graphics/RectF;)Ljava/util/List;

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

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->collectIntersectsVisibleBoxList(Landroid/graphics/RectF;)Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->o()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->visibleBoxes()Ljava/util/List;

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

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->convertToVisibleBoxList(Ljava/util/List;)Ljava/util/List;

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

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->updateToVisibleBox(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

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

.method public final d(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->indexOfId(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget p1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->k:I

    div-int v1, v0, p1

    rem-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->toZeroOriginRoundRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    return-object p2

    :cond_2
    return-object p1
.end method

.method public final f(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)F
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p2, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getGap()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->toZeroOriginRoundRectF()Landroid/graphics/RectF;

    move-result-object p0

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, p2, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPageWithAspectScaleCheck$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final g(Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 2
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

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    iget p1, p2, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->h()F

    move-result p0

    add-float/2addr p1, p0

    iput p1, p2, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public final h()F
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

.method public final i(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->unionOrCopy(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    :cond_0
    return-object p0
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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->l(F)V

    return-void
.end method

.method public isEnabledContinuousScroll()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->unionOrCopy(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final k()V
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

.method public final l(F)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->h()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    iget v6, v0, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->k:I

    invoke-static {v4, v6}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v6

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v4

    if-lez v4, :cond_0

    if-le v6, v7, :cond_1

    :cond_0
    if-gez v4, :cond_5

    if-gt v7, v6, :cond_5

    :cond_1
    const-wide/16 v8, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "get(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v10, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setScale(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v11

    add-int/lit8 v12, v6, 0x1

    invoke-static {v11, v12}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v11, :cond_2

    invoke-virtual {v11, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setScale(F)V

    :cond_2
    invoke-virtual {v0, v10, v11}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->i(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v10}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result v14

    float-to-double v14, v14

    if-lez v6, :cond_3

    add-double/2addr v8, v2

    :cond_3
    add-double/2addr v14, v8

    invoke-virtual {v10}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v5

    double-to-float v0, v8

    iput v0, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    double-to-float v5, v14

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v10}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->h()F

    move-result v14

    const/4 v15, 0x0

    invoke-static {v0, v5, v15, v14}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->moveToEnd(Landroid/graphics/RectF;Landroid/graphics/RectF;ZF)V

    invoke-virtual {v11}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v10}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->topAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_4
    const/4 v15, 0x0

    :goto_1
    add-double/2addr v8, v12

    if-eq v6, v7, :cond_5

    add-int/2addr v6, v4

    move-object/from16 v0, p0

    move v5, v15

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->q()V

    return-void
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

.method public final m()V
    .locals 9

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->h()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    iget v3, p0, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->k:I

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v4

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    const-string v5, "get(...)"

    if-lez v1, :cond_1

    if-le v3, v4, :cond_2

    :cond_1
    if-gez v1, :cond_4

    if-gt v4, v3, :cond_4

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v6, v7}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->i(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->verCheck(Landroid/graphics/RectF;Landroid/graphics/RectF;F)I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    return-void

    :cond_3
    if-eq v3, v4, :cond_4

    add-int/2addr v3, v1

    goto :goto_0

    :cond_4
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

    if-gez v1, :cond_5

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

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->k:I

    div-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->i(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->bottom()F

    move-result v3

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->moveToBottom(F)V

    :cond_6
    return-void
.end method

.method public final n(Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 4
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

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->j(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->toZeroOriginRoundRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->e(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentBoxId(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->k()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->m()V

    return-void
.end method

.method public final p()V
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

.method public pageCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final q()V
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

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->c(Ljava/util/List;Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->p()V

    return-void
.end method

.method public scrollBy(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->offset(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->o()V

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->o()V

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
    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->scrollBy(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->l(F)V

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->currentDisplayScale()F

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->setData(Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateCurrentMinScale$default(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->initScale(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->o()V

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->p()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->o()V

    return-void
.end method

.method public visibleBoxes()Ljava/util/List;
    .locals 11
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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->h()F

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getFirstVisibleIndex()I

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    iget v5, p0, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->k:I

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v6

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v4

    if-lez v4, :cond_1

    if-le v5, v6, :cond_2

    :cond_1
    if-gez v4, :cond_5

    if-gt v6, v5, :cond_5

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "get(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v7, v8}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->i(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->verCheck(Landroid/graphics/RectF;Landroid/graphics/RectF;F)I

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v7, v9}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    if-eqz v8, :cond_4

    invoke-virtual {p0, v8, v9}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->f(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v9, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/VDualBoxContinuousManager;->n(Ljava/util/List;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eq v5, v6, :cond_5

    add-int/2addr v5, v4

    goto :goto_0

    :cond_5
    :goto_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_2

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentMinScale(F)V

    return-object v0
.end method
