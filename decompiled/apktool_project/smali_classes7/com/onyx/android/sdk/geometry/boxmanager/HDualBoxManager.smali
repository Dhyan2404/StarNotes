.class public final Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;
.super Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHDualBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HDualBoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,945:1\n1855#2,2:946\n350#2,7:948\n1864#2,3:955\n1549#2:959\n1620#2,3:960\n1#3:958\n*S KotlinDebug\n*F\n+ 1 HDualBoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager\n*L\n269#1:946,2\n279#1:948,7\n493#1:955,3\n825#1:959\n825#1:960,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008|\u0010}J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0008\u001a\u00020\u0006H\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0006H\u0002J\u001e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000eH\u0002J\n\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\u001a\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\n2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\nH\u0002J\u001a\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\n2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\nH\u0002J&\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000eH\u0002J\u0008\u0010\u001f\u001a\u00020\u0006H\u0002J\u0010\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0002J\u0010\u0010$\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0002J\u0012\u0010%\u001a\u0004\u0018\u00010\"2\u0006\u0010!\u001a\u00020 H\u0002J\u0012\u0010&\u001a\u0004\u0018\u00010\"2\u0006\u0010!\u001a\u00020 H\u0002J\n\u0010\'\u001a\u0004\u0018\u00010\"H\u0002J\n\u0010(\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004H\u0002J\u0010\u0010,\u001a\u00020\"2\u0006\u0010+\u001a\u00020\u0004H\u0002J\u0010\u0010-\u001a\u00020\"2\u0006\u0010+\u001a\u00020\u0004H\u0002J\u0008\u0010.\u001a\u00020\u0006H\u0002J\u001e\u00101\u001a\u00020\u00062\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000e2\u0006\u00100\u001a\u00020\u0004H\u0002J\u001a\u00104\u001a\u00020\n2\u0006\u00102\u001a\u00020\n2\u0008\u00103\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u00107\u001a\u0004\u0018\u00010\n2\u0006\u00106\u001a\u000205H\u0002J\u0008\u00108\u001a\u00020\u0004H\u0002J\u0008\u00109\u001a\u00020\u0004H\u0002J\u0008\u0010:\u001a\u00020\u0006H\u0002J\u0008\u0010;\u001a\u00020\u0006H\u0002J\u0008\u0010<\u001a\u00020\u0006H\u0002J\u0010\u0010=\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0004H\u0002J\u0006\u0010>\u001a\u00020\u0002J\u0016\u0010@\u001a\u00020\u00062\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0016\u0010A\u001a\u00020\u00062\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0010\u0010D\u001a\u00020\u00132\u0006\u0010C\u001a\u00020BH\u0016J\u0010\u0010F\u001a\u00020\u00012\u0006\u0010E\u001a\u00020\u0004H\u0016J\u0018\u0010J\u001a\u00020\u00062\u0006\u0010H\u001a\u00020G2\u0006\u0010I\u001a\u00020\u001dH\u0016J \u0010N\u001a\u00020\u001d2\u0006\u0010K\u001a\u00020B2\u0006\u0010L\u001a\u00020\u00022\u0006\u0010M\u001a\u00020\u0002H\u0016J\u0018\u0010N\u001a\u00020\u00012\u0006\u0010O\u001a\u00020\u00022\u0006\u0010P\u001a\u00020\u0002H\u0016J\u0018\u0010S\u001a\u00020\u00012\u0006\u0010Q\u001a\u00020\u00022\u0006\u0010R\u001a\u00020\u0002H\u0016J\u000e\u0010T\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0016\u0010W\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010V\u001a\u00020UH\u0016J\u001c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0010\u0010Z\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020\nH\u0016J\u0016\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u001c\u001a\u00020\u0004H\u0016J\u000e\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016J\u000e\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016J\u0008\u0010^\u001a\u00020\u0013H\u0016J\u0010\u0010_\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010`\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0008\u0010a\u001a\u00020\u0002H\u0016J\u0010\u0010b\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0016J\u0010\u0010d\u001a\u0002052\u0006\u0010c\u001a\u000205H\u0016J\u001e\u0010g\u001a\u00020U2\u0006\u00106\u001a\u0002052\u000c\u0010f\u001a\u0008\u0012\u0004\u0012\u00020\u00020eH\u0016J\u0008\u0010h\u001a\u00020\u001dH\u0016J\u0008\u0010i\u001a\u00020\u0006H\u0016J\u000e\u0010j\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016J\u001e\u0010k\u001a\u00020\u00062\u0006\u00106\u001a\u0002052\u000c\u0010f\u001a\u0008\u0012\u0004\u0012\u00020\u00020eH\u0016J\u0010\u0010m\u001a\u00020\u00062\u0006\u0010l\u001a\u00020BH\u0016J \u0010p\u001a\u00020\u00022\u0006\u0010E\u001a\u00020\u00042\u0006\u0010n\u001a\u00020\u00022\u0006\u0010o\u001a\u00020\u0002H\u0016R\u0014\u0010r\u001a\u00020\u00138\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010qR\u0016\u0010a\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u001fR\u001a\u0010u\u001a\u0008\u0012\u0004\u0012\u00020\n0s8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010tR$\u0010{\u001a\u00020\u001d2\u0006\u0010v\u001a\u00020\u001d8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010z\u00a8\u0006~"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;",
        "Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;",
        "",
        "k",
        "Landroid/graphics/RectF;",
        "v",
        "",
        "D",
        "A",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "H",
        "G",
        "boxInfo",
        "",
        "list",
        "b",
        "l",
        "n",
        "",
        "containerIndex",
        "r",
        "scale",
        "y",
        "firstBox",
        "secondBox",
        "s",
        "t",
        "documentRectF",
        "",
        "a",
        "F",
        "Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;",
        "args",
        "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;",
        "d",
        "e",
        "f",
        "g",
        "h",
        "m",
        "displayRectF",
        "u",
        "targetRectF",
        "j",
        "i",
        "E",
        "resultList",
        "lastVisibleRegion",
        "C",
        "first",
        "second",
        "c",
        "Landroid/graphics/Matrix;",
        "gestureDeltaMatrix",
        "o",
        "q",
        "p",
        "x",
        "w",
        "B",
        "z",
        "minDisplayScale",
        "boxList",
        "setData",
        "updateDataAndApplyScale",
        "",
        "id",
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
        "createRxScrollerArgs",
        "matrix",
        "loadReboundMatrix",
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
        "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;",
        "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;",
        "containerIdIndexedList",
        "value",
        "getEnableFreeMovePaper",
        "()Z",
        "setEnableFreeMovePaper",
        "(Z)V",
        "enableFreeMovePaper",
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
        "SMAP\nHDualBoxManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HDualBoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,945:1\n1855#2,2:946\n350#2,7:948\n1864#2,3:955\n1549#2:959\n1620#2,3:960\n1#3:958\n*S KotlinDebug\n*F\n+ 1 HDualBoxManager.kt\ncom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager\n*L\n269#1:946,2\n279#1:948,7\n493#1:955,3\n825#1:959\n825#1:960,3\n*E\n"
    }
.end annotation


# instance fields
.field public final k:I

.field public l:F

.field public final m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->l:F

    new-instance v1, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    sget-object v2, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager$containerIdIndexedList$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager$containerIdIndexedList$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;-><init>(Lkotlin/jvm/functions/Function1;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 7

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {v4, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "get(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->horCheck(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)I

    move-result v4

    if-nez v4, :cond_1

    iget v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    mul-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getFirstVisibleIndex()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->right()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->leftAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->right()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->right()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getFirstVisibleIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->moveToEnd$default(Landroid/graphics/RectF;Landroid/graphics/RectF;ZFILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final B()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->visibleBoxes()Ljava/util/List;

    return-void
.end method

.method public final C(Ljava/util/List;Landroid/graphics/RectF;)V
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

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->t(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->v()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->c(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentBoxId(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_2
    return-void
.end method

.method public final D()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->x()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->A()V

    return-void
.end method

.method public final E()V
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setViewportLimitRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final F()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->E()V

    return-void
.end method

.method public final G()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentOrFirstBoxInfo$sdk_geometry_release()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setActualScale(F)V

    :cond_0
    return-void
.end method

.method public final H()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getFirstVisibleIndex()I

    move-result v1

    if-gez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getFirstVisibleIndex()I

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    div-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_3

    iget-object v4, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {v4, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "get(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->horCheck(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)I

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->isVisibleIntersectWidth(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v4, "not visible width"

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->updateToVisibleBox(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public alignCenter()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->x()V

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->o(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->toBoxManagerViewArgs(Landroid/graphics/Matrix;Lorg/apache/commons/lang3/Range;)Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getScale()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->setScale(F)V

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getViewportLeft()F

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getViewportTop()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->scrollTo(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    neg-float p2, p2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->scrollTo(Ljava/lang/String;FF)Z

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->B()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->w()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->D()V

    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V
    .locals 0
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

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateVisibleRect(Landroid/graphics/RectF;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->v()Landroid/graphics/RectF;

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

    iget v2, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

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

    invoke-virtual {p0, p1, v4, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->a(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Z

    move-result v4

    if-eqz v5, :cond_5

    invoke-virtual {p0, p1, v5, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->a(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Z

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

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->collectIntersectsVisibleBoxList(Landroid/graphics/RectF;)Ljava/util/List;

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

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->collectIntersectsVisibleBoxList(Landroid/graphics/RectF;)Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->D()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->visibleBoxes()Ljava/util/List;

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

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->convertToVisibleBoxList(Ljava/util/List;)Ljava/util/List;

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

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->updateToVisibleBox(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

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
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->H()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->n()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->e(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->right()F

    move-result v0

    iget v3, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v0

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const-string v0, "continuous fling in current display rect"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->e(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getVelocityX()F

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->Companion:Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;->getMinFlingVelocity()F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getScrollBeginX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getScrollBeginY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getVelocityY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getVelocityX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    const/4 v7, 0x0

    if-gez v6, :cond_2

    cmpg-float v4, v5, v4

    if-gez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v7

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v2, v7

    :goto_2
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    cmpl-float v4, v0, v3

    if-lez v4, :cond_5

    const-string v2, "next screen"

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->f(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object v2

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    cmpg-float v2, v0, v3

    if-gez v2, :cond_6

    const-string v2, "prev screen"

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->g(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object v2

    goto :goto_3

    :cond_6
    const-string v2, "rebound screen"

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->h()Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {v2, v7}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setEnabledAbortFlingAnimation(Z)V

    :cond_7
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;->getDEBUG_LOG()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userVelocity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", minFlingVelocity = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;->getMinFlingVelocity()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", scrollArgs = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    :cond_8
    if-nez v2, :cond_9

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->e(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v2
.end method

.method public currentDisplayScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->l:F

    return p0
.end method

.method public final d(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
    .locals 4

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

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    if-lez v1, :cond_1

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

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFrictionX(F)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFrictionY(F)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->isRestoreScrollBegin()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getScrollBeginX()F

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    :goto_1
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartX(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartY(F)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFrictionX(F)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFrictionY(F)V

    :goto_2
    return-object v0
.end method

.method public final e(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
    .locals 3

    const-string v0, "create continuous fling in current display rect"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->d(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->n()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result p0

    sub-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setLimitRect(Landroid/graphics/RectF;)V

    sget-object p0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;->CONTINUOUS_SCROLL_IN_CURRENT_SCREEN:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFlingActionType(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;)V

    :cond_0
    return-object p1
.end method

.method public final f(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getScrollBeginBoxId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->indexOfId(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->r(I)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->u(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterHorizontal(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->leftAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :goto_0
    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartX(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartY(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setVelocityY(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getStartX()F

    move-result v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setLimitRect(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getVelocityX()F

    move-result p1

    sget-object v1, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->Companion:Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, p0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;->getAutoScrollToNewBoxVelocityValue(F)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setVelocityX(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;->getAutoScrollToNewBoxFriction()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFrictionX(F)V

    sget-object p0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;->NEXT_SCREEN:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFlingActionType(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;)V

    return-object v0
.end method

.method public final g(Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getScrollBeginBoxId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->indexOfId(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->r(I)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->u(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterHorizontal(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->rightAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :goto_0
    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartX(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartY(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setVelocityY(F)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getStartX()F

    move-result v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setLimitRect(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;->getVelocityX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget-object v1, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->Companion:Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, v2

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;->getAutoScrollToNewBoxVelocityValue(F)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    neg-float p0, p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setVelocityX(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;->getAutoScrollToNewBoxFriction()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFrictionX(F)V

    sget-object p0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;->PREV_SCREEN:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFlingActionType(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;)V

    return-object v0
.end method

.method public getEnableFreeMovePaper()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h()Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    const-string v2, ", viewportRect = "

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rebound right, targetRectF = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->j(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rebound left, targetRectF = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->i(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "else, rebound left, targetRectF = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->i(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object p0

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;->REBOUND_CURRENT_SCREEN:Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFlingActionType(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;)V

    return-object p0
.end method

.method public final i(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartX(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartY(F)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setVelocityY(F)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setLimitRect(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v1, p0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getStartX()F

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, p1

    sget-object p1, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->Companion:Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;->getAutoScrollToNewBoxVelocityValue(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setVelocityX(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;->getReboundToCurrentBoxInfoFriction()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFrictionX(F)V

    return-object v0
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
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentBoxId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->updateCurrentMinScale(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentMinScale()F

    move-result v0

    div-float v0, p1, v0

    iput v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->l:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->minDisplayScale()F

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->l:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iput v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->l:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentMinScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setActualScale(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setActualScale(F)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->y(F)V

    return-void
.end method

.method public isEnabledContinuousScroll()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartX(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setStartY(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setVelocityY(F)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setLimitRect(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result p0

    sub-float/2addr v1, p0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getStartX()F

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->getLimitRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p1

    sget-object p1, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->Companion:Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;->getAutoScrollToNewBoxVelocityValue(F)F

    move-result p0

    neg-float p0, p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setVelocityX(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;->getReboundToCurrentBoxInfoFriction()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;->setFrictionX(F)V

    return-object v0
.end method

.method public final k()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentOrFirstBoxInfo$sdk_geometry_release()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->indexOfId(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    div-int/2addr v0, v1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public loadReboundMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 6
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->n()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    const/16 v2, 0x9

    new-array v2, v2, [F

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x2

    aget v4, v2, v4

    neg-float v4, v4

    const/4 v5, 0x5

    aget v2, v2, v5

    neg-float v2, v2

    iget v5, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v3

    add-float/2addr v5, v4

    iget v4, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    invoke-virtual {p0, v5, v4}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {p0, v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limitAndCenterIf(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget p1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v5

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, v4

    neg-float p1, p1

    neg-float p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method public final m()Landroid/graphics/RectF;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->n()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->u(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    const-string v2, "alignCenterHorizontal"

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterHorizontal(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const-string v2, "rightAlign"

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->rightAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    const-string v2, "leftAlign"

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->leftAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_3
    const-string v2, "default align, leftAlign"

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->leftAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :goto_0
    return-object v1
.end method

.method public final minDisplayScale()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final n()Landroid/graphics/RectF;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentOrFirstBoxInfo$sdk_geometry_release()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->indexOfId(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    div-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->r(I)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final o(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->visibleBoxes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p0
.end method

.method public final p()Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getGap()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public pageCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final q()Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getGap()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final r(I)Landroid/graphics/RectF;
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    mul-int/2addr v1, p1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v1

    iget v2, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    mul-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->s(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final s(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;
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

.method public scrollBy(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->offset(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->D()V

    return-object p0
.end method

.method public scrollTo(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 17
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->D()V

    return-object p0
.end method

.method public scrollTo(Ljava/lang/String;FF)Z
    .locals 5
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

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setFirstVisibleIndex(I)V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getFirstVisibleIndex()I

    move-result p1

    iget v0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    div-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->r(I)Landroid/graphics/RectF;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->u(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v2, :cond_2

    .line 7
    invoke-static {v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterHorizontal(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignOrigin(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 9
    invoke-virtual {p0, v4, p3}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->scrollBy(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    goto :goto_1

    :cond_2
    cmpg-float v2, p2, v4

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    cmpg-float v2, p3, v4

    if-nez v2, :cond_4

    move v1, v3

    :cond_4
    if-eqz v1, :cond_5

    .line 10
    invoke-static {v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->leftAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 11
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignOrigin(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 12
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->D()V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignOrigin(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 14
    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->scrollBy(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    .line 15
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->z(Landroid/graphics/RectF;)V

    :goto_1
    return v3
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

.method public setEnableFreeMovePaper(Z)V
    .locals 0

    return-void
.end method

.method public setScale(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->initScale(F)V

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

.method public final t(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->currentDisplayScale()F

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

.method public final u(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->right()F

    move-result p0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public updateCurrentMinScale(Ljava/lang/String;)V
    .locals 6
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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->indexOfId(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    rem-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isLastElement(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->toZeroOriginRoundRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewportWithAspectScaleCheck$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentMinScale(F)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->p()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewportWithAspectScaleCheck$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentMinScale(F)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->q()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewportWithAspectScaleCheck$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setCurrentMinScale(F)V

    :goto_1
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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->setData(Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateCurrentMinScale$default(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->initScale(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->D()V

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
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->resize(Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/Size;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->E()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->D()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentBoxId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->visibleBoxes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->resize(Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/Size;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->initScale(F)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->scrollTo(Ljava/lang/String;FF)Z

    :goto_1
    return-void
.end method

.method public final v()Landroid/graphics/RectF;
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->toZeroOriginRoundRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getGap()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getGap()F

    move-result p0

    div-float/2addr p0, v2

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RectF;->inset(FF)V

    return-object v0
.end method

.method public visibleBoxes()Ljava/util/List;
    .locals 9
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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k()F

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getFirstVisibleIndex()I

    move-result v3

    iget v4, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_4

    iget-object v5, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {v5, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "get(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->horCheck(Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->isVisibleIntersectWidth(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "not visible width"

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v7

    iget v8, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    mul-int/2addr v8, v3

    invoke-virtual {v7, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v7, v5}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v6

    iget v7, p0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    mul-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz v6, :cond_3

    invoke-virtual {p0, v6, v5}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->b(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    :cond_3
    invoke-virtual {p0, v5, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->C(Ljava/util/List;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getCurrentBoxId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->updateCurrentMinScale(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->G()V

    sget-object v1, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->Companion:Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager$Companion;->getDEBUG_LOG()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visibleBoxInfo size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->log(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public final w()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->n()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0, v0, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limitAndCenterIf(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final x()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->n()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewportLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limitAndCenterVerticalIf(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewportLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limitAndCenterVerticalIf(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final y(F)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->currentDisplayScale()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->toZeroOriginRoundRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->p()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->q()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    iget v7, v0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->k:I

    invoke-static {v5, v7}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v7

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v8

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v5

    if-lez v5, :cond_0

    if-le v7, v8, :cond_1

    :cond_0
    if-gez v5, :cond_5

    if-gt v8, v7, :cond_5

    :cond_1
    const-wide/16 v9, 0x0

    :goto_0
    new-instance v11, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>(Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {v11, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setActualScale(F)V

    invoke-virtual {v11}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    float-to-double v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "get(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoxIdIndexedList()Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    move-result-object v15

    add-int/lit8 v6, v7, 0x1

    invoke-static {v15, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    if-eqz v6, :cond_2

    move/from16 v16, v1

    const/4 v1, 0x0

    invoke-virtual {v14, v3, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewportWithAspectScaleCheck(Landroid/graphics/RectF;Z)V

    invoke-virtual {v14}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->rightAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_2
    move/from16 v16, v1

    const/4 v1, 0x0

    invoke-virtual {v14, v2, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewportWithAspectScaleCheck(Landroid/graphics/RectF;Z)V

    :goto_1
    invoke-virtual {v14}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    move-object/from16 v17, v2

    double-to-float v2, v9

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v14}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildrenDisplayRectF()V

    invoke-virtual {v14}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6, v4, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewportWithAspectScaleCheck(Landroid/graphics/RectF;Z)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->leftAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->updateChildrenDisplayRectF()V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->unionOrCopy(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    :cond_3
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v3

    move v6, v2

    float-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v19

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v21

    cmpl-double v3, v19, v21

    if-lez v3, :cond_4

    invoke-virtual {v11}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    double-to-float v12, v1

    iput v12, v3, Landroid/graphics/RectF;->right:F

    move-wide v12, v1

    :cond_4
    invoke-virtual {v11}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    iput v6, v1, Landroid/graphics/RectF;->left:F

    iget v2, v15, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    add-double/2addr v9, v12

    double-to-float v2, v9

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget v2, v15, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, v0, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->m:Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;

    invoke-virtual {v1, v11}, Lcom/onyx/android/sdk/base/common/collections/StringIndexedArrayList;->add(Ljava/lang/Object;)Z

    if-eq v7, v8, :cond_5

    add-int/2addr v7, v5

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->F()V

    return-void
.end method

.method public final z(Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->H()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0, p1, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limitAndCenterIf(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/boxmanager/HDualBoxManager;->D()V

    :cond_0
    return-void
.end method
