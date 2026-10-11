.class public final Lorg/apache/poi/hwmf/record/HwmfDraw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSelectObject;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfChord;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPie;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRoundRect;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfSetPixel;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfRectangle;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyPolygon;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfFrameRegion;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfEllipse;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolyline;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfPolygon;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfLineTo;,
        Lorg/apache/poi/hwmf/record/HwmfDraw$WmfMoveTo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normalizeBounds(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 13
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    cmpl-double v1, v4, v2

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v4

    :goto_0
    move-wide v5, v4

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    cmpl-double v1, v7, v2

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v1

    :goto_1
    move-wide v7, v1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method public static readBounds(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I
    .locals 14

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v6, v3

    int-to-double v8, v4

    int-to-double v10, p0

    int-to-double v12, v0

    move-object v5, p1

    invoke-virtual/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    const/16 p0, 0x8

    return p0
.end method

.method public static readPointS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p0

    int-to-double v1, p0

    int-to-double v3, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    const/4 p0, 0x4

    return p0
.end method

.method public static readRectS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I
    .locals 14

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result p0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-double v6, v3

    int-to-double v8, v4

    int-to-double v10, v0

    int-to-double v12, p0

    move-object v5, p1

    invoke-virtual/range {v5 .. v13}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    const/16 p0, 0x8

    return p0
.end method
