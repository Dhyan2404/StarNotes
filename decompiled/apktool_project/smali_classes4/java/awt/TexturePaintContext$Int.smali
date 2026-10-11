.class Ljava/awt/TexturePaintContext$Int;
.super Ljava/awt/TexturePaintContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/TexturePaintContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Int"
.end annotation


# instance fields
.field filter:Z

.field inData:[I

.field inOff:I

.field inSpan:I

.field outData:[I

.field outOff:I

.field outSpan:I

.field srcRas:Lsun/awt/image/IntegerInterleavedRaster;


# direct methods
.method public constructor <init>(Lsun/awt/image/IntegerInterleavedRaster;Ljava/awt/image/ColorModel;Ljava/awt/geom/AffineTransform;IZ)V
    .locals 6

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/awt/TexturePaintContext;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/geom/AffineTransform;III)V

    iput-object p1, p0, Ljava/awt/TexturePaintContext$Int;->srcRas:Lsun/awt/image/IntegerInterleavedRaster;

    invoke-virtual {p1}, Lsun/awt/image/IntegerInterleavedRaster;->getDataStorage()[I

    move-result-object p2

    iput-object p2, p0, Ljava/awt/TexturePaintContext$Int;->inData:[I

    invoke-virtual {p1}, Lsun/awt/image/IntegerInterleavedRaster;->getScanlineStride()I

    move-result p2

    iput p2, p0, Ljava/awt/TexturePaintContext$Int;->inSpan:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lsun/awt/image/IntegerInterleavedRaster;->getDataOffset(I)I

    move-result p1

    iput p1, p0, Ljava/awt/TexturePaintContext$Int;->inOff:I

    iput-boolean p5, p0, Ljava/awt/TexturePaintContext$Int;->filter:Z

    return-void
.end method


# virtual methods
.method public makeRaster(II)Ljava/awt/image/WritableRaster;
    .locals 2

    iget-object v0, p0, Ljava/awt/TexturePaintContext;->colorModel:Ljava/awt/image/ColorModel;

    iget-object v1, p0, Ljava/awt/TexturePaintContext$Int;->srcRas:Lsun/awt/image/IntegerInterleavedRaster;

    invoke-static {v0, v1, p1, p2}, Ljava/awt/TexturePaintContext;->makeRaster(Ljava/awt/image/ColorModel;Ljava/awt/image/Raster;II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lsun/awt/image/IntegerInterleavedRaster;

    invoke-virtual {p2}, Lsun/awt/image/IntegerInterleavedRaster;->getDataStorage()[I

    move-result-object v0

    iput-object v0, p0, Ljava/awt/TexturePaintContext$Int;->outData:[I

    invoke-virtual {p2}, Lsun/awt/image/IntegerInterleavedRaster;->getScanlineStride()I

    move-result v0

    iput v0, p0, Ljava/awt/TexturePaintContext$Int;->outSpan:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lsun/awt/image/IntegerInterleavedRaster;->getDataOffset(I)I

    move-result p2

    iput p2, p0, Ljava/awt/TexturePaintContext$Int;->outOff:I

    return-object p1
.end method

.method public setRaster(IIIIIIIIIIIIIIII)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    iget-object v5, v0, Ljava/awt/TexturePaintContext$Int;->inData:[I

    iget-object v6, v0, Ljava/awt/TexturePaintContext$Int;->outData:[I

    iget v7, v0, Ljava/awt/TexturePaintContext$Int;->outOff:I

    iget v8, v0, Ljava/awt/TexturePaintContext$Int;->inSpan:I

    iget v9, v0, Ljava/awt/TexturePaintContext$Int;->inOff:I

    iget v10, v0, Ljava/awt/TexturePaintContext$Int;->outSpan:I

    iget-boolean v0, v0, Ljava/awt/TexturePaintContext$Int;->filter:Z

    const/4 v12, 0x1

    if-ne v4, v12, :cond_0

    if-nez p10, :cond_0

    if-nez p11, :cond_0

    if-nez p12, :cond_0

    if-nez v0, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-eqz v13, :cond_1

    sub-int/2addr v10, v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v14, 0x4

    new-array v14, v14, [I

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v12, p6

    move/from16 v18, v7

    const/4 v11, 0x0

    move/from16 v7, p1

    :goto_2
    if-ge v11, v12, :cond_15

    const v20, 0x7fffffff

    if-eqz v13, :cond_8

    mul-int v21, v15, v8

    add-int v21, v9, v21

    add-int v21, v21, v2

    sub-int v22, v2, v7

    add-int v18, v18, v1

    const/16 v12, 0x20

    if-lt v2, v12, :cond_6

    move/from16 v23, v13

    move/from16 v12, v22

    move v13, v1

    :goto_3
    if-lez v13, :cond_5

    move/from16 v24, v10

    move/from16 p1, v11

    if-ge v13, v12, :cond_3

    move v11, v13

    goto :goto_4

    :cond_3
    move v11, v12

    :goto_4
    sub-int v10, v21, v12

    move/from16 p2, v15

    sub-int v15, v18, v13

    invoke-static {v5, v10, v6, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v13, v11

    sub-int/2addr v12, v11

    if-nez v12, :cond_4

    move v12, v2

    :cond_4
    move/from16 v11, p1

    move/from16 v15, p2

    move/from16 v10, v24

    goto :goto_3

    :cond_5
    move/from16 v24, v10

    move/from16 p1, v11

    move/from16 p2, v15

    goto/16 :goto_8

    :cond_6
    move/from16 v24, v10

    move/from16 p1, v11

    move/from16 v23, v13

    move/from16 p2, v15

    move v10, v1

    :goto_5
    if-lez v10, :cond_10

    sub-int v11, v18, v10

    sub-int v12, v21, v22

    aget v12, v5, v12

    aput v12, v6, v11

    add-int/lit8 v22, v22, -0x1

    if-nez v22, :cond_7

    move/from16 v22, v2

    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_8
    move/from16 v24, v10

    move/from16 p1, v11

    move/from16 v23, v13

    move/from16 p2, v15

    move/from16 v11, p2

    move v12, v7

    move/from16 v13, v16

    move/from16 v15, v17

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v1, :cond_10

    if-eqz v0, :cond_b

    move/from16 v21, v0

    add-int/lit8 v0, v12, 0x1

    if-lt v0, v2, :cond_9

    const/4 v0, 0x0

    :cond_9
    add-int/lit8 v1, v11, 0x1

    if-lt v1, v3, :cond_a

    const/4 v1, 0x0

    :cond_a
    mul-int v22, v11, v8

    add-int v22, v9, v22

    add-int v25, v22, v12

    aget v25, v5, v25

    const/16 v19, 0x0

    aput v25, v14, v19

    add-int v22, v22, v0

    aget v22, v5, v22

    const/16 v25, 0x1

    aput v22, v14, v25

    mul-int/2addr v1, v8

    add-int/2addr v1, v9

    add-int v22, v1, v12

    aget v22, v5, v22

    const/16 v26, 0x2

    aput v22, v14, v26

    add-int/2addr v1, v0

    aget v0, v5, v1

    const/4 v1, 0x3

    aput v0, v14, v1

    add-int v0, v18, v10

    invoke-static {v14, v13, v15}, Ljava/awt/TexturePaintContext;->blend([III)I

    move-result v1

    aput v1, v6, v0

    goto :goto_7

    :cond_b
    move/from16 v21, v0

    const/16 v19, 0x0

    const/16 v25, 0x1

    add-int v0, v18, v10

    mul-int v1, v11, v8

    add-int/2addr v1, v9

    add-int/2addr v1, v12

    aget v1, v5, v1

    aput v1, v6, v0

    :goto_7
    add-int v13, v13, p10

    if-gez v13, :cond_c

    and-int v0, v13, v20

    add-int/lit8 v12, v12, 0x1

    move v13, v0

    :cond_c
    add-int/2addr v12, v4

    if-lt v12, v2, :cond_d

    sub-int/2addr v12, v2

    :cond_d
    add-int v15, v15, p12

    if-gez v15, :cond_e

    and-int v0, v15, v20

    add-int/lit8 v11, v11, 0x1

    move v15, v0

    :cond_e
    add-int v11, v11, p11

    if-lt v11, v3, :cond_f

    sub-int/2addr v11, v3

    :cond_f
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p5

    move/from16 v0, v21

    goto :goto_6

    :cond_10
    :goto_8
    move/from16 v21, v0

    const/16 v19, 0x0

    const/16 v25, 0x1

    add-int v16, v16, p14

    if-gez v16, :cond_11

    and-int v0, v16, v20

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v0

    :cond_11
    add-int v7, v7, p13

    if-lt v7, v2, :cond_12

    sub-int/2addr v7, v2

    :cond_12
    add-int v17, v17, p16

    if-gez v17, :cond_13

    and-int v0, v17, v20

    add-int/lit8 v15, p2, 0x1

    move/from16 v17, v0

    goto :goto_9

    :cond_13
    move/from16 v15, p2

    :goto_9
    add-int v15, v15, p15

    if-lt v15, v3, :cond_14

    sub-int/2addr v15, v3

    :cond_14
    add-int v18, v18, v24

    add-int/lit8 v11, p1, 0x1

    move/from16 v1, p5

    move/from16 v12, p6

    move/from16 v0, v21

    move/from16 v13, v23

    move/from16 v10, v24

    goto/16 :goto_2

    :cond_15
    return-void
.end method
