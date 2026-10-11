.class public final Lorg/apache/poi/hemf/record/emf/HemfDraw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfStrokeAndFillPath;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfFillPath;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfStrokePath;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfWidenPath;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfFlattenPath;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfCloseFigure;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfAbortPath;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfEndPath;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfBeginPath;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw16;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyDraw;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfArcTo;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfLineTo;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfRoundRect;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfRectangle;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfEllipse;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPie;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfChord;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfArc;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfSetMoveToEx;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfSetPixelV;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolyline16;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolyline;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon16;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolylineTo16;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolylineTo;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezierTo16;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezierTo;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyline16;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyline;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon16;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolygon;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier16;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyBezier;,
        Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfSelectObject;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/awt/geom/PathIterator;Ljava/awt/geom/Path2D;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->lambda$polyTo$0(Ljava/awt/geom/PathIterator;Ljava/awt/geom/Path2D;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/awt/geom/Path2D;Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->polyTo(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/awt/geom/Path2D;Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V

    return-void
.end method

.method private static synthetic lambda$polyTo$0(Ljava/awt/geom/PathIterator;Ljava/awt/geom/Path2D;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Ljava/awt/geom/Path2D;->append(Ljava/awt/geom/PathIterator;Z)V

    return-void
.end method

.method private static polyTo(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/awt/geom/Path2D;Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/awt/geom/Path2D;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/awt/geom/PathIterator;->next()V

    invoke-interface {p1}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/sunia/HTREnginev2/ugh;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ugh;-><init>(Ljava/awt/geom/PathIterator;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hemf/draw/HemfGraphics;->draw(Ljava/util/function/Consumer;Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V

    return-void
.end method

.method public static readDimensionFloat(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Dimension2D;)J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result p0

    float-to-double v2, p0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    const-wide/16 p0, 0x8

    return-wide p0
.end method

.method public static readDimensionInt(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Dimension2D;)J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    int-to-double v2, p0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    const-wide/16 p0, 0x8

    return-wide p0
.end method

.method public static readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    int-to-double v0, v0

    int-to-double v2, p0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    const-wide/16 p0, 0x8

    return-wide p0
.end method

.method public static readPointS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p0

    int-to-double v0, v0

    int-to-double v2, p0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    const-wide/16 p0, 0x4

    return-wide p0
.end method

.method public static readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    int-to-double v6, p0

    sub-double v8, v0, v2

    sub-double v10, v6, v4

    move-object v1, p1

    move-wide v6, v8

    move-wide v8, v10

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    const-wide/16 p0, 0x10

    return-wide p0
.end method
