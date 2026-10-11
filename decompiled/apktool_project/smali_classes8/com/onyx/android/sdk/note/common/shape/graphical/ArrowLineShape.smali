.class public final Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;
.super Lcom/onyx/android/sdk/note/common/shape/graphical/LineShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0007\u00a2\u0006\u0004\u0008*\u0010+J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J \u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0018\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002R\"\u0010\u001d\u001a\u00020\u00168\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8V@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0014\u0010)\u001a\u00020&8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;",
        "Lcom/onyx/android/sdk/note/common/shape/graphical/LineShape;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "",
        "render",
        "",
        "x",
        "y",
        "radius",
        "hitTest",
        "Landroid/graphics/Path;",
        "getPath",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "Landroid/graphics/Matrix;",
        "renderMatrix",
        "",
        "b",
        "a",
        "",
        "K",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "Landroid/graphics/RectF;",
        "L",
        "Landroid/graphics/RectF;",
        "getOriginRect",
        "()Landroid/graphics/RectF;",
        "setOriginRect",
        "(Landroid/graphics/RectF;)V",
        "originRect",
        "Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;",
        "c",
        "()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;",
        "arrowStyle",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public K:I

.field public L:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/LineShape;-><init>()V

    const/16 v0, 0x1c

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->K:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->L:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;)V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->c()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;->getArrowsPath(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;)V
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final c()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;->getDEFAULT()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getShapeLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->getArrowStyle()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->getArrowStyle()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;->getDEFAULT()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    move-result-object p0

    :cond_1
    move-object v1, p0

    :cond_2
    return-object v1
.end method

.method public getOriginRect()Landroid/graphics/RectF;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result v3

    sget-object v4, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;->getDEFAULT()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;->arrowLinePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->L:Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->union(FF)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->L:Landroid/graphics/RectF;

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->union(FF)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->L:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->c()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;->getArrowsPath(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    invoke-virtual {p0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->K:I

    return p0
.end method

.method public hitTest(FFF)Z
    .locals 15

    const/4 v0, 0x4

    new-array v0, v0, [F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    const/4 v5, 0x3

    aput v1, v0, v5

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result v8

    sget-object v9, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle$Companion;->getDEFAULT()Lcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;

    move-result-object v9

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape$Companion;->arrowLinePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FLcom/onyx/android/sdk/replicator/note/data/line/ArrowStyle;)[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_1
    sget-object v6, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    aget v8, v0, v2

    aget v9, v0, v3

    aget v10, v0, v4

    aget v11, v0, v5

    move-object v7, v6

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-virtual/range {v7 .. v14}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result v7

    if-eqz v7, :cond_2

    return v3

    :cond_2
    aget v8, v1, v2

    aget v9, v1, v3

    aget v10, v0, v4

    aget v11, v0, v5

    move-object v7, v6

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-virtual/range {v7 .. v14}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    aget v8, v1, v4

    aget v9, v1, v5

    aget v10, v0, v4

    aget v11, v0, v5

    move-object v7, v6

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-virtual/range {v7 .. v14}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result v3

    :goto_0
    return v3
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->isIntersectClipRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->b(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setOriginRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->L:Landroid/graphics/RectF;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/graphical/ArrowLineShape;->K:I

    return-void
.end method

.method public toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "embedShapeBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createLineShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setLineArrowDirection(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->getPolyLineVertices(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)[F

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setVertices([F)V

    return-object v0
.end method
