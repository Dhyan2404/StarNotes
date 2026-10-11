.class public final Lsun/java2d/pipe/ShapeSpanIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/SpanIterator;
.implements Lsun/awt/geom/PathConsumer2D;


# instance fields
.field pData:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lsun/java2d/pipe/ShapeSpanIterator;->initIDs()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lsun/java2d/pipe/ShapeSpanIterator;->setNormalize(Z)V

    return-void
.end method

.method public static initIDs()V
    .locals 0

    return-void
.end method

.method private native setNormalize(Z)V
.end method


# virtual methods
.method public native addSegment(I[F)V
.end method

.method public appendPath(Ljava/awt/geom/PathIterator;)V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [F

    invoke-interface {p1}, Ljava/awt/geom/PathIterator;->getWindingRule()I

    move-result v1

    invoke-virtual {p0, v1}, Lsun/java2d/pipe/ShapeSpanIterator;->setRule(I)V

    :goto_0
    invoke-interface {p1}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/awt/geom/PathIterator;->currentSegment([F)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lsun/java2d/pipe/ShapeSpanIterator;->addSegment(I[F)V

    invoke-interface {p1}, Ljava/awt/geom/PathIterator;->next()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lsun/java2d/pipe/ShapeSpanIterator;->pathDone()V

    return-void
.end method

.method public native appendPoly([I[IIII)V
.end method

.method public native closePath()V
.end method

.method public native curveTo(FFFFFF)V
.end method

.method public native dispose()V
.end method

.method public native getNativeConsumer()J
.end method

.method public native getNativeIterator()J
.end method

.method public native getPathBox([I)V
.end method

.method public native intersectClipBox(IIII)V
.end method

.method public native lineTo(FF)V
.end method

.method public native moveTo(FF)V
.end method

.method public native nextSpan([I)Z
.end method

.method public native pathDone()V
.end method

.method public native quadTo(FFFF)V
.end method

.method public setOutputArea(Ljava/awt/Rectangle;)V
    .locals 3

    .line 1
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget v2, p1, Ljava/awt/Rectangle;->width:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lsun/java2d/pipe/ShapeSpanIterator;->setOutputAreaXYWH(IIII)V

    return-void
.end method

.method public setOutputArea(Lsun/java2d/pipe/Region;)V
    .locals 3

    .line 2
    iget v0, p1, Lsun/java2d/pipe/Region;->lox:I

    iget v1, p1, Lsun/java2d/pipe/Region;->loy:I

    iget v2, p1, Lsun/java2d/pipe/Region;->hix:I

    iget p1, p1, Lsun/java2d/pipe/Region;->hiy:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lsun/java2d/pipe/ShapeSpanIterator;->setOutputAreaXYXY(IIII)V

    return-void
.end method

.method public setOutputAreaXYWH(IIII)V
    .locals 0

    invoke-static {p1, p3}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p3

    invoke-static {p2, p4}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/pipe/ShapeSpanIterator;->setOutputAreaXYXY(IIII)V

    return-void
.end method

.method public native setOutputAreaXYXY(IIII)V
.end method

.method public native setRule(I)V
.end method

.method public native skipDownTo(I)V
.end method
