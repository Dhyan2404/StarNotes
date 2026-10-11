.class Ljava/awt/geom/Path2D$Float$TxIterator;
.super Ljava/awt/geom/Path2D$Iterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/geom/Path2D$Float;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxIterator"
.end annotation


# instance fields
.field affine:Ljava/awt/geom/AffineTransform;

.field floatCoords:[F


# direct methods
.method public constructor <init>(Ljava/awt/geom/Path2D$Float;Ljava/awt/geom/AffineTransform;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/awt/geom/Path2D$Iterator;-><init>(Ljava/awt/geom/Path2D;)V

    iget-object p1, p1, Ljava/awt/geom/Path2D$Float;->floatCoords:[F

    iput-object p1, p0, Ljava/awt/geom/Path2D$Float$TxIterator;->floatCoords:[F

    iput-object p2, p0, Ljava/awt/geom/Path2D$Float$TxIterator;->affine:Ljava/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 8

    .line 4
    iget-object v0, p0, Ljava/awt/geom/Path2D$Iterator;->path:Ljava/awt/geom/Path2D;

    iget-object v0, v0, Ljava/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Ljava/awt/geom/Path2D$Iterator;->typeIdx:I

    aget-byte v0, v0, v1

    .line 5
    sget-object v1, Ljava/awt/geom/Path2D$Iterator;->curvecoords:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    .line 6
    iget-object v2, p0, Ljava/awt/geom/Path2D$Float$TxIterator;->affine:Ljava/awt/geom/AffineTransform;

    iget-object v3, p0, Ljava/awt/geom/Path2D$Float$TxIterator;->floatCoords:[F

    iget v4, p0, Ljava/awt/geom/Path2D$Iterator;->pointIdx:I

    const/4 v6, 0x0

    div-int/lit8 v7, v1, 0x2

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Ljava/awt/geom/AffineTransform;->transform([FI[DII)V

    :cond_0
    return v0
.end method

.method public currentSegment([F)I
    .locals 8

    .line 1
    iget-object v0, p0, Ljava/awt/geom/Path2D$Iterator;->path:Ljava/awt/geom/Path2D;

    iget-object v0, v0, Ljava/awt/geom/Path2D;->pointTypes:[B

    iget v1, p0, Ljava/awt/geom/Path2D$Iterator;->typeIdx:I

    aget-byte v0, v0, v1

    .line 2
    sget-object v1, Ljava/awt/geom/Path2D$Iterator;->curvecoords:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    .line 3
    iget-object v2, p0, Ljava/awt/geom/Path2D$Float$TxIterator;->affine:Ljava/awt/geom/AffineTransform;

    iget-object v3, p0, Ljava/awt/geom/Path2D$Float$TxIterator;->floatCoords:[F

    iget v4, p0, Ljava/awt/geom/Path2D$Iterator;->pointIdx:I

    const/4 v6, 0x0

    div-int/lit8 v7, v1, 0x2

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Ljava/awt/geom/AffineTransform;->transform([FI[FII)V

    :cond_0
    return v0
.end method
