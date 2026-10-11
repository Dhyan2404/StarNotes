.class public abstract Ljava/awt/geom/Path2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Shape;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/geom/Path2D$Iterator;,
        Ljava/awt/geom/Path2D$Double;,
        Ljava/awt/geom/Path2D$Float;
    }
.end annotation


# static fields
.field static final EXPAND_MAX:I = 0x1f4

.field static final INIT_SIZE:I = 0x14

.field private static final SEG_CLOSE:B = 0x4t

.field private static final SEG_CUBICTO:B = 0x3t

.field private static final SEG_LINETO:B = 0x1t

.field private static final SEG_MOVETO:B = 0x0t

.field private static final SEG_QUADTO:B = 0x2t

.field private static final SERIAL_PATH_END:B = 0x61t

.field private static final SERIAL_SEG_CLOSE:B = 0x60t

.field private static final SERIAL_SEG_DBL_CUBICTO:B = 0x53t

.field private static final SERIAL_SEG_DBL_LINETO:B = 0x51t

.field private static final SERIAL_SEG_DBL_MOVETO:B = 0x50t

.field private static final SERIAL_SEG_DBL_QUADTO:B = 0x52t

.field private static final SERIAL_SEG_FLT_CUBICTO:B = 0x43t

.field private static final SERIAL_SEG_FLT_LINETO:B = 0x41t

.field private static final SERIAL_SEG_FLT_MOVETO:B = 0x40t

.field private static final SERIAL_SEG_FLT_QUADTO:B = 0x42t

.field private static final SERIAL_STORAGE_DBL_ARRAY:B = 0x31t

.field private static final SERIAL_STORAGE_FLT_ARRAY:B = 0x30t

.field public static final WIND_EVEN_ODD:I = 0x0

.field public static final WIND_NON_ZERO:I = 0x1


# instance fields
.field transient numCoords:I

.field transient numTypes:I

.field transient pointTypes:[B

.field transient windingRule:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Ljava/awt/geom/Path2D;->setWindingRule(I)V

    .line 4
    new-array p1, p2, [B

    iput-object p1, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    return-void
.end method

.method public static contains(Ljava/awt/geom/PathIterator;DD)Z
    .locals 6

    const-wide/16 v0, 0x0

    mul-double v2, p1, v0

    mul-double v4, p3, v0

    add-double/2addr v2, v4

    cmpl-double v0, v2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->getWindingRule()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lsun/awt/geom/Curve;->pointCrossingsForPath(Ljava/awt/geom/PathIterator;DD)I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static contains(Ljava/awt/geom/PathIterator;DDDD)Z
    .locals 12

    add-double v5, p1, p5

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_3

    add-double v7, p3, p7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v2, p5, v0

    if-lez v2, :cond_3

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->getWindingRule()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    move v11, v0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 10
    invoke-static/range {v0 .. v8}, Lsun/awt/geom/Curve;->rectCrossingsForPath(Ljava/awt/geom/PathIterator;DDDD)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    and-int/2addr v0, v11

    if-eqz v0, :cond_3

    move v9, v10

    :cond_3
    :goto_1
    return v9
.end method

.method public static contains(Ljava/awt/geom/PathIterator;Ljava/awt/geom/Point2D;)Z
    .locals 4

    .line 3
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Ljava/awt/geom/Path2D;->contains(Ljava/awt/geom/PathIterator;DD)Z

    move-result p0

    return p0
.end method

.method public static contains(Ljava/awt/geom/PathIterator;Ljava/awt/geom/Rectangle2D;)Z
    .locals 9

    .line 11
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Ljava/awt/geom/Path2D;->contains(Ljava/awt/geom/PathIterator;DDDD)Z

    move-result p0

    return p0
.end method

.method public static intersects(Ljava/awt/geom/PathIterator;DDDD)Z
    .locals 12

    add-double v5, p1, p5

    .line 1
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_4

    add-double v7, p3, p7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v2, p5, v0

    if-lez v2, :cond_4

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->getWindingRule()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    move v11, v0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 3
    invoke-static/range {v0 .. v8}, Lsun/awt/geom/Curve;->rectCrossingsForPath(Ljava/awt/geom/PathIterator;DDDD)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    and-int/2addr v0, v11

    if-eqz v0, :cond_4

    :cond_3
    move v9, v10

    :cond_4
    :goto_1
    return v9
.end method

.method public static intersects(Ljava/awt/geom/PathIterator;Ljava/awt/geom/Rectangle2D;)Z
    .locals 9

    .line 4
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Ljava/awt/geom/Path2D;->intersects(Ljava/awt/geom/PathIterator;DDDD)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract append(DD)V
.end method

.method public abstract append(FF)V
.end method

.method public final append(Ljava/awt/Shape;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/awt/geom/Path2D;->append(Ljava/awt/geom/PathIterator;Z)V

    return-void
.end method

.method public abstract append(Ljava/awt/geom/PathIterator;Z)V
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract cloneCoordsDouble(Ljava/awt/geom/AffineTransform;)[D
.end method

.method public abstract cloneCoordsFloat(Ljava/awt/geom/AffineTransform;)[F
.end method

.method public final declared-synchronized closePath()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/awt/geom/Path2D;->numTypes:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v3, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    sub-int/2addr v0, v2

    aget-byte v0, v3, v0

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/awt/geom/Path2D;->needRoom(ZI)V

    iget-object v0, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    iget v2, p0, Ljava/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/awt/geom/Path2D;->numTypes:I

    aput-byte v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final contains(DD)Z
    .locals 6

    const-wide/16 v0, 0x0

    mul-double v2, p1, v0

    mul-double v4, p3, v0

    add-double/2addr v2, v4

    cmpl-double v0, v2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 4
    iget v0, p0, Ljava/awt/geom/Path2D;->numTypes:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 5
    :cond_0
    iget v0, p0, Ljava/awt/geom/Path2D;->windingRule:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/geom/Path2D;->pointCrossings(DD)I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final contains(DDDD)Z
    .locals 12

    add-double v5, p1, p5

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_3

    add-double v7, p3, p7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v2, p5, v0

    if-lez v2, :cond_3

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 13
    iget v1, v0, Ljava/awt/geom/Path2D;->windingRule:I

    const/4 v10, 0x1

    if-ne v1, v10, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    move v11, v1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 14
    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Path2D;->rectCrossings(DDDD)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    and-int/2addr v0, v11

    if-eqz v0, :cond_3

    move v9, v10

    :cond_3
    :goto_1
    return v9
.end method

.method public final contains(Ljava/awt/geom/Point2D;)Z
    .locals 4

    .line 7
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/awt/geom/Path2D;->contains(DD)Z

    move-result p0

    return p0
.end method

.method public final contains(Ljava/awt/geom/Rectangle2D;)Z
    .locals 9

    .line 15
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Path2D;->contains(DDDD)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized createTransformedShape(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/awt/geom/Path2D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/Path2D;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/awt/geom/Path2D;->transform(Ljava/awt/geom/AffineTransform;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract curveTo(DDDDDD)V
.end method

.method public final getBounds()Ljava/awt/Rectangle;
    .locals 0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getCurrentPoint()Ljava/awt/geom/Point2D;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/awt/geom/Path2D;->numCoords:I

    iget v1, p0, Ljava/awt/geom/Path2D;->numTypes:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5

    if-ge v0, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    add-int/lit8 v4, v1, -0x1

    aget-byte v3, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-ne v3, v4, :cond_4

    sub-int/2addr v1, v5

    :goto_0
    if-lez v1, :cond_4

    iget-object v3, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    aget-byte v3, v3, v1

    if-eqz v3, :cond_4

    if-eq v3, v2, :cond_3

    if-eq v3, v5, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x6

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x4

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v5

    invoke-virtual {p0, v0}, Ljava/awt/geom/Path2D;->getPoint(I)Ljava/awt/geom/Point2D;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    :goto_2
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;
    .locals 1

    new-instance v0, Ljava/awt/geom/FlatteningPathIterator;

    invoke-interface {p0, p1}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p0

    invoke-direct {v0, p0, p2, p3}, Ljava/awt/geom/FlatteningPathIterator;-><init>(Ljava/awt/geom/PathIterator;D)V

    return-object v0
.end method

.method abstract getPoint(I)Ljava/awt/geom/Point2D;
.end method

.method public final declared-synchronized getWindingRule()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/awt/geom/Path2D;->windingRule:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final intersects(DDDD)Z
    .locals 12

    add-double v5, p1, p5

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_4

    add-double v7, p3, p7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v2, p5, v0

    if-lez v2, :cond_4

    cmpg-double v0, p7, v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 6
    iget v1, v0, Ljava/awt/geom/Path2D;->windingRule:I

    const/4 v10, 0x1

    if-ne v1, v10, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    move v11, v1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 7
    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Path2D;->rectCrossings(DDDD)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    and-int/2addr v0, v11

    if-eqz v0, :cond_4

    :cond_3
    move v9, v10

    :cond_4
    :goto_1
    return v9
.end method

.method public final intersects(Ljava/awt/geom/Rectangle2D;)Z
    .locals 9

    .line 8
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Path2D;->intersects(DDDD)Z

    move-result p0

    return p0
.end method

.method public abstract lineTo(DD)V
.end method

.method public abstract moveTo(DD)V
.end method

.method public abstract needRoom(ZI)V
.end method

.method public abstract pointCrossings(DD)I
.end method

.method public abstract quadTo(DDDD)V
.end method

.method public final readObject(Ljava/io/ObjectInputStream;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v2

    invoke-virtual {p0, v2}, Ljava/awt/geom/Path2D;->setWindingRule(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v0, :cond_0

    const/16 v2, 0x14

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    new-array v2, v2, [B

    iput-object v2, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    if-gez v1, :cond_1

    const/16 v1, 0x28

    :cond_1
    if-eqz p2, :cond_2

    move-object p2, p0

    check-cast p2, Ljava/awt/geom/Path2D$Double;

    new-array v1, v1, [D

    iput-object v1, p2, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    goto :goto_1

    :cond_2
    move-object p2, p0

    check-cast p2, Ljava/awt/geom/Path2D$Float;

    new-array v1, v1, [F

    iput-object v1, p2, Ljava/awt/geom/Path2D$Float;->floatCoords:[F

    :goto_1
    const/4 p2, 0x0

    move v1, p2

    :goto_2
    const/16 v2, 0x61

    if-ltz v0, :cond_3

    if-ge v1, v0, :cond_5

    :cond_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v3

    const/16 v4, 0x60

    const/4 v5, 0x1

    if-eq v3, v4, :cond_9

    if-eq v3, v2, :cond_4

    const/4 v2, 0x3

    const/4 v4, 0x2

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "unrecognized path type"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    move v4, v2

    goto :goto_3

    :pswitch_1
    move v2, v4

    :goto_3
    move v3, v5

    goto :goto_7

    :pswitch_2
    move v2, v5

    move v3, v2

    goto :goto_4

    :pswitch_3
    move v2, p2

    move v3, v5

    :goto_4
    move v4, v3

    goto :goto_7

    :pswitch_4
    move v3, p2

    goto :goto_5

    :pswitch_5
    move v3, p2

    move v2, v4

    goto :goto_7

    :pswitch_6
    move v3, p2

    move v2, v5

    :goto_5
    move v4, v2

    goto :goto_7

    :pswitch_7
    move v2, p2

    move v3, v2

    move v4, v5

    goto :goto_7

    :cond_4
    if-gez v0, :cond_8

    :cond_5
    if-ltz v0, :cond_7

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result p0

    if-ne p0, v2, :cond_6

    goto :goto_6

    :cond_6
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "missing PATH_END"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_6
    return-void

    :cond_8
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "unexpected PATH_END"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const/4 v2, 0x4

    move v3, p2

    goto :goto_4

    :goto_7
    if-eqz v2, :cond_a

    goto :goto_8

    :cond_a
    move v5, p2

    :goto_8
    mul-int/lit8 v6, v4, 0x2

    invoke-virtual {p0, v5, v6}, Ljava/awt/geom/Path2D;->needRoom(ZI)V

    if-eqz v3, :cond_b

    :goto_9
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_c

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v7

    invoke-virtual {p0, v5, v6, v7, v8}, Ljava/awt/geom/Path2D;->append(DD)V

    goto :goto_9

    :cond_b
    :goto_a
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_c

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/awt/geom/Path2D;->append(FF)V

    goto :goto_a

    :cond_c
    iget-object v3, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    iget v4, p0, Ljava/awt/geom/Path2D;->numTypes:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/awt/geom/Path2D;->numTypes:I

    aput-byte v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/InvalidObjectException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract rectCrossings(DDDD)I
.end method

.method public final declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Ljava/awt/geom/Path2D;->numCoords:I

    iput v0, p0, Ljava/awt/geom/Path2D;->numTypes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setWindingRule(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "winding rule must be WIND_EVEN_ODD or WIND_NON_ZERO"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Ljava/awt/geom/Path2D;->windingRule:I

    return-void
.end method

.method public abstract transform(Ljava/awt/geom/AffineTransform;)V
.end method

.method public final writeObject(Ljava/io/ObjectOutputStream;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/awt/geom/Path2D$Double;

    iget-object v1, v1, Ljava/awt/geom/Path2D$Double;->doubleCoords:[D

    goto :goto_0

    :cond_0
    move-object v1, p0

    check-cast v1, Ljava/awt/geom/Path2D$Float;

    iget-object v1, v1, Ljava/awt/geom/Path2D$Float;->floatCoords:[F

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_0
    iget v2, p0, Ljava/awt/geom/Path2D;->numTypes:I

    if-eqz p2, :cond_1

    const/16 v3, 0x31

    goto :goto_1

    :cond_1
    const/16 v3, 0x30

    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v3, p0, Ljava/awt/geom/Path2D;->numCoords:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v3, p0, Ljava/awt/geom/Path2D;->windingRule:I

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_2
    if-ge v4, v2, :cond_d

    iget-object v6, p0, Ljava/awt/geom/Path2D;->pointTypes:[B

    aget-byte v6, v6, v4

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    if-eq v6, v7, :cond_7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    const/16 v6, 0x60

    move v7, v3

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "unrecognized path type"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz p2, :cond_4

    const/16 v6, 0x53

    goto :goto_3

    :cond_4
    const/16 v6, 0x43

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_6

    const/16 v6, 0x52

    goto :goto_3

    :cond_6
    const/16 v6, 0x42

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    const/16 v6, 0x51

    goto :goto_3

    :cond_8
    const/16 v6, 0x41

    goto :goto_3

    :cond_9
    if-eqz p2, :cond_a

    const/16 v6, 0x50

    goto :goto_3

    :cond_a
    const/16 v6, 0x40

    :goto_3
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    :goto_4
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_c

    if-eqz p2, :cond_b

    add-int/lit8 v6, v5, 0x1

    aget-wide v8, v1, v5

    invoke-virtual {p1, v8, v9}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    add-int/lit8 v5, v6, 0x1

    aget-wide v8, v1, v6

    invoke-virtual {p1, v8, v9}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    goto :goto_4

    :cond_b
    add-int/lit8 v6, v5, 0x1

    aget v5, v0, v5

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    add-int/lit8 v5, v6, 0x1

    aget v6, v0, v6

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    goto :goto_4

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_d
    const/16 p0, 0x61

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    return-void
.end method
