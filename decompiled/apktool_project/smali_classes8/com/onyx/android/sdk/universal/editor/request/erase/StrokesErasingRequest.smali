.class public final Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010\u0016\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\'\u0010(J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000bH\u0002R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0015R\"\u0010\u001c\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR$\u0010\"\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "g",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "removeShapeBean",
        "Landroid/graphics/RectF;",
        "f",
        "j",
        "h",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "intersectShape",
        "i",
        "rect",
        "k",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;",
        "eraseArgs",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "getChangedShapeBean",
        "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "setChangedShapeBean",
        "(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V",
        "changedShapeBean",
        "Landroid/graphics/RectF;",
        "getEraseRect",
        "()Landroid/graphics/RectF;",
        "setEraseRect",
        "(Landroid/graphics/RectF;)V",
        "eraseRect",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
        "eraseContext",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final i:Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseArgs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->i:Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    new-instance p1, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->j:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->Companion:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;->getEraseContext()Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext$Companion;->isEraseAbort(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;->getNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->g(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->h(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)Landroid/graphics/RectF;
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->getRemoveShapeList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->updateTagShapeList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {v1, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;->getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->roundBoundingRectWithWidth(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->j(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->j:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->getRemoveShapeList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;->getEraseContext()Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->j:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->addChangedShapeBean(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->j:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->f(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->k(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->j:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-object p0
.end method

.method public final getEraseRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->k:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 9

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->i:Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->getPartEraseTrackPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest$removeShapeFillArea$intersectShapes$1;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest$removeShapeFillArea$intersectShapes$1;-><init>(Landroid/graphics/RectF;)V

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getLayerIndex()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;->getEraseContext()Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->getHitTestShapeTypes()Ljava/util/HashSet;

    move-result-object v2

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->isClosedShape()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->isIgnoreFill(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->createRegionsByPaths(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->i:Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->getPartEraseTrackPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Region;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->i(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    :cond_8
    return-void
.end method

.method public final i(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setFillColor(I)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;->getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->roundBoundingRectWithWidth(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->k(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final j(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->i:Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;->getPartEraseTrackPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;->getEraseContext()Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->i:Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;->getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->removeShapesByTouchPointList(Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object p0

    return-object p0
.end method

.method public final k(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->k:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->k:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setChangedShapeBean(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->j:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-void
.end method

.method public final setEraseRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;->k:Landroid/graphics/RectF;

    return-void
.end method
