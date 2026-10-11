.class public Ljava/awt/image/BandCombineOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/RasterOp;


# instance fields
.field hints:Ljava/awt/RenderingHints;

.field matrix:[[F

.field ncols:I

.field nrows:I


# direct methods
.method public constructor <init>([[FLjava/awt/RenderingHints;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/image/BandCombineOp;->nrows:I

    iput v0, p0, Ljava/awt/image/BandCombineOp;->ncols:I

    array-length v1, p1

    iput v1, p0, Ljava/awt/image/BandCombineOp;->nrows:I

    aget-object v2, p1, v0

    array-length v2, v2

    iput v2, p0, Ljava/awt/image/BandCombineOp;->ncols:I

    new-array v1, v1, [[F

    iput-object v1, p0, Ljava/awt/image/BandCombineOp;->matrix:[[F

    :goto_0
    iget v1, p0, Ljava/awt/image/BandCombineOp;->nrows:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Ljava/awt/image/BandCombineOp;->ncols:I

    aget-object v2, p1, v0

    array-length v3, v2

    if-gt v1, v3, :cond_0

    iget-object v3, p0, Ljava/awt/image/BandCombineOp;->matrix:[[F

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "row "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " too short"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-object p2, p0, Ljava/awt/image/BandCombineOp;->hints:Ljava/awt/RenderingHints;

    return-void
.end method


# virtual methods
.method public createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;
    .locals 3

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v0

    iget v1, p0, Ljava/awt/image/BandCombineOp;->ncols:I

    if-eq v1, v0, :cond_1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of columns in the matrix ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/BandCombineOp;->ncols:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") must be equal to the number of bands ([+1]) in src ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v0

    iget v1, p0, Ljava/awt/image/BandCombineOp;->nrows:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/awt/image/Raster;->createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to create a  compatible Raster with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/BandCombineOp;->nrows:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bands."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v2

    iget v3, v0, Ljava/awt/image/BandCombineOp;->ncols:I

    const-string v4, ")."

    if-eq v3, v2, :cond_1

    add-int/lit8 v5, v2, 0x1

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of columns in the matrix ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Ljava/awt/image/BandCombineOp;->ncols:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") must be equal to the number of bands ([+1]) in src ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    invoke-virtual/range {p0 .. p1}, Ljava/awt/image/BandCombineOp;->createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget v3, v0, Ljava/awt/image/BandCombineOp;->nrows:I

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v5

    if-ne v3, v5, :cond_c

    move-object/from16 v3, p2

    :goto_1
    invoke-static {v0, v1, v3}, Lsun/awt/image/ImagingLib;->filter(Ljava/awt/image/RasterOp;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v3}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v4

    new-array v4, v4, [I

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v6

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getMinX()I

    move-result v7

    invoke-virtual {v3}, Ljava/awt/image/Raster;->getMinY()I

    move-result v8

    iget v9, v0, Ljava/awt/image/BandCombineOp;->ncols:I

    const/4 v12, 0x0

    if-ne v9, v2, :cond_7

    const/4 v2, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v9

    if-ge v2, v9, :cond_b

    move v13, v5

    move v14, v7

    const/4 v9, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v15

    if-ge v9, v15, :cond_6

    invoke-virtual {v1, v13, v6, v12}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    move-result-object v12

    const/4 v15, 0x0

    :goto_4
    iget v10, v0, Ljava/awt/image/BandCombineOp;->nrows:I

    if-ge v15, v10, :cond_5

    move/from16 v16, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5
    iget v5, v0, Ljava/awt/image/BandCombineOp;->ncols:I

    if-ge v10, v5, :cond_4

    iget-object v5, v0, Ljava/awt/image/BandCombineOp;->matrix:[[F

    aget-object v5, v5, v15

    aget v5, v5, v10

    move/from16 v17, v7

    aget v7, v12, v10

    int-to-float v7, v7

    mul-float/2addr v5, v7

    add-float/2addr v11, v5

    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v17

    goto :goto_5

    :cond_4
    move/from16 v17, v7

    float-to-int v5, v11

    aput v5, v4, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v16

    goto :goto_4

    :cond_5
    move/from16 v16, v5

    move/from16 v17, v7

    invoke-virtual {v3, v14, v8, v4}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_6
    move/from16 v16, v5

    move/from16 v17, v7

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    move/from16 v16, v5

    move/from16 v17, v7

    const/4 v5, 0x0

    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_b

    move/from16 v9, v16

    move/from16 v10, v17

    const/4 v7, 0x0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v11

    if-ge v7, v11, :cond_a

    invoke-virtual {v1, v9, v6, v12}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    move-result-object v12

    const/4 v11, 0x0

    :goto_8
    iget v13, v0, Ljava/awt/image/BandCombineOp;->nrows:I

    if-ge v11, v13, :cond_9

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_9
    if-ge v13, v2, :cond_8

    iget-object v15, v0, Ljava/awt/image/BandCombineOp;->matrix:[[F

    aget-object v15, v15, v11

    aget v15, v15, v13

    aget v1, v12, v13

    int-to-float v1, v1

    mul-float/2addr v15, v1

    add-float/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_9

    :cond_8
    iget-object v1, v0, Ljava/awt/image/BandCombineOp;->matrix:[[F

    aget-object v1, v1, v11

    aget v1, v1, v2

    add-float/2addr v14, v1

    float-to-int v1, v14

    aput v1, v4, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto :goto_8

    :cond_9
    invoke-virtual {v3, v10, v8, v4}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto :goto_7

    :cond_a
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    goto :goto_6

    :cond_b
    return-object v3

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of rows in the matrix ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Ljava/awt/image/BandCombineOp;->nrows:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") must be equal to the number of bands ([+1]) in dst ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public final getMatrix()[[F
    .locals 4

    iget v0, p0, Ljava/awt/image/BandCombineOp;->nrows:I

    new-array v0, v0, [[F

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljava/awt/image/BandCombineOp;->nrows:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ljava/awt/image/BandCombineOp;->matrix:[[F

    aget-object v2, v2, v1

    iget v3, p0, Ljava/awt/image/BandCombineOp;->ncols:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Float;-><init>()V

    :cond_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p0

    invoke-virtual {p2, v0, v1, p0, p1}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2
.end method

.method public final getRenderingHints()Ljava/awt/RenderingHints;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/BandCombineOp;->hints:Ljava/awt/RenderingHints;

    return-object p0
.end method
