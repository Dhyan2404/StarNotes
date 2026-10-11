.class public final Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;,
        Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001=B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020&J\u0006\u0010\'\u001a\u00020\u0014J\u000e\u0010(\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010)\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u0006\u0010*\u001a\u00020\u0014J\u000e\u0010+\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010,\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u001c\u0010-\u001a\u00020\u00142\u0008\u0010.\u001a\u0004\u0018\u00010\u00082\u0008\u0010/\u001a\u0004\u0018\u00010\u0008H\u0002J\u0006\u00100\u001a\u000201J\u0006\u00102\u001a\u000203J\u000e\u00104\u001a\u00020$2\u0006\u00105\u001a\u00020\u0014J\u000e\u00106\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:J\n\u0010;\u001a\u00020<*\u00020\u0005R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\n\"\u0004\u0008\u001e\u0010\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006>"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;",
        "",
        "virtualPageBoxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "renderNode",
        "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)V",
        "contentSliceInfo",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "getContentSliceInfo",
        "()Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "setContentSliceInfo",
        "(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V",
        "displayState",
        "Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;",
        "getDisplayState",
        "()Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;",
        "setDisplayState",
        "(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;)V",
        "isSliceOutOfDate",
        "",
        "()Z",
        "setSliceOutOfDate",
        "(Z)V",
        "isVisible",
        "setVisible",
        "getRenderNode",
        "()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;",
        "sliceInfo",
        "getSliceInfo",
        "setSliceInfo",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setVirtualPageBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "clearRenderNode",
        "",
        "getValidSliceCount",
        "",
        "isNeedRequestDisplay",
        "isNeedUpdateRenderNode",
        "isRectChanged",
        "isRenderNodeSizeChanged",
        "isRotationChanged",
        "isScaleChanged",
        "isUpdateSliceInfoSuccess",
        "old",
        "new",
        "toDebugString",
        "",
        "toRenderNodePositionRect",
        "Landroid/graphics/Rect;",
        "updateDisplayStateAfterDrawPageNode",
        "drawSuccess",
        "updateRenderNodeBoxInfo",
        "updateSliceInfo",
        "Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;",
        "pageSliceInfo",
        "Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;",
        "toVisibleRectF",
        "Landroid/graphics/RectF;",
        "DisplayState",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private displayState:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isSliceOutOfDate:Z

.field private isVisible:Z

.field private final renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isVisible:Z

    .line 5
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;->NOT_DISPLAY:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->displayState:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/data/DisplayDataKt;->createRenderNode(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    move-result-object p2

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)V

    return-void
.end method

.method private final isUpdateSliceInfoSuccess(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    const-string v1, ""

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, p0

    :goto_3
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    const/4 p0, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 p0, 0x1

    :goto_5
    return p0
.end method


# virtual methods
.method public final clearRenderNode()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->discardDisplayList()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-void
.end method

.method public final getContentSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-object p0
.end method

.method public final getDisplayState()Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->displayState:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;

    return-object p0
.end method

.method public final getRenderNode()Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    return-object p0
.end method

.method public final getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-object p0
.end method

.method public final getValidSliceCount()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->isValid(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->isValid(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final isNeedRequestDisplay()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->displayState:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final isNeedUpdateRenderNode(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isRectChanged(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isScaleChanged(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isRotationChanged(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isRectChanged(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationX()F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationY()F

    move-result v0

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v3

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    if-ne v0, v3, :cond_3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int p1, p1

    if-eq p0, p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public final isRenderNodeSizeChanged()Z
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->toRenderNodePositionRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isRotationChanged(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result p1

    cmpg-float p0, p0, p1

    const/4 p1, 0x1

    if-nez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, p1

    return p0
.end method

.method public final isScaleChanged(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    cmpg-float p0, p0, p1

    const/4 p1, 0x1

    if-nez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, p1

    return p0
.end method

.method public final isSliceOutOfDate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isSliceOutOfDate:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isVisible:Z

    return p0
.end method

.method public final setContentSliceInfo(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-void
.end method

.method public final setDisplayState(Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->displayState:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;

    return-void
.end method

.method public final setSliceInfo(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-void
.end method

.method public final setSliceOutOfDate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isSliceOutOfDate:Z

    return-void
.end method

.method public final setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isVisible:Z

    return-void
.end method

.method public final toDebugString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->toRenderNodePositionRect()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PageRenderNodeInfo:virtualPage.id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n, virtualPage.visibleRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", actualScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", toRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n, renderNode.visibleRect = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->toVisibleRectF(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", width = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n, isSliceOutOfDate = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isSliceOutOfDate:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n, displayState = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->displayState:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->getDebugString(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/data/SliceKt;->getDebugString(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toRenderNodePositionRect()Landroid/graphics/Rect;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result p0

    float-to-int p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final toVisibleRectF(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;)Landroid/graphics/RectF;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationX()F

    move-result v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationY()F

    move-result v1

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationX()F

    move-result v2

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getTranslationY()F

    move-result v3

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v3, p1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public final updateDisplayStateAfterDrawPageNode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;->DISPLAY_SUCCESS:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;->DISPLAY_FAIL:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;

    :goto_0
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->displayState:Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo$DisplayState;

    return-void
.end method

.method public final updateRenderNodeBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isNeedUpdateRenderNode(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setTranslationX(F)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->renderNode:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;->setTranslationY(F)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateSliceInfo(Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;)Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageSliceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;->getContentSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    move-result-object v6

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-direct {p0, v4, v6}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isUpdateSliceInfoSuccess(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v5, v7}, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->isUpdateSliceInfoSuccess(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    move v3, p1

    if-eqz v3, :cond_2

    iput-object v7, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    iput-object v6, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v7}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copyDisplayData(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    :cond_3
    if-eqz v6, :cond_4

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->contentSliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v6}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->copyDisplayData(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    :cond_4
    :goto_2
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;-><init>(Ljava/lang/String;ZLcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    return-object p1
.end method
