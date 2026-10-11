.class public Ljava/awt/image/LookupOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/BufferedImageOp;
.implements Ljava/awt/image/RasterOp;


# instance fields
.field hints:Ljava/awt/RenderingHints;

.field private ltable:Ljava/awt/image/LookupTable;

.field private numComponents:I


# direct methods
.method public constructor <init>(Ljava/awt/image/LookupTable;Ljava/awt/RenderingHints;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/awt/image/LookupOp;->ltable:Ljava/awt/image/LookupTable;

    iput-object p2, p0, Ljava/awt/image/LookupOp;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {p1}, Ljava/awt/image/LookupTable;->getNumComponents()I

    move-result p1

    iput p1, p0, Ljava/awt/image/LookupOp;->numComponents:I

    return-void
.end method

.method private final byteFilter(Ljava/awt/image/ByteLookupTable;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;III)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/ByteLookupTable;->getTable()[[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/LookupTable;->getOffset()I

    move-result v1

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v4, v3

    :cond_0
    aget-object v2, v0, v3

    array-length v2, v2

    const/4 v5, 0x0

    move/from16 v6, p5

    move v14, v3

    :goto_0
    if-ge v14, v6, :cond_4

    move v15, v3

    move/from16 v16, v15

    move-object v13, v5

    move/from16 v5, p6

    :goto_1
    if-ge v15, v5, :cond_3

    const/4 v8, 0x0

    const/4 v11, 0x1

    move-object/from16 v7, p2

    move v9, v14

    move/from16 v10, p4

    move v12, v15

    invoke-virtual/range {v7 .. v13}, Ljava/awt/image/Raster;->getSamples(IIIII[I)[I

    move-result-object v17

    move/from16 v13, p4

    move v7, v3

    :goto_2
    if-ge v7, v13, :cond_2

    aget v8, v17, v7

    sub-int/2addr v8, v1

    if-ltz v8, :cond_1

    if-gt v8, v2, :cond_1

    aget-object v9, v0, v16

    aget-byte v8, v9, v8

    aput v8, v17, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "(out of range:  srcPix["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v17, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v8, 0x0

    const/4 v11, 0x1

    move-object/from16 v7, p3

    move v9, v14

    move/from16 v10, p4

    move v12, v15

    move-object/from16 v13, v17

    invoke-virtual/range {v7 .. v13}, Ljava/awt/image/WritableRaster;->setSamples(IIIII[I)V

    add-int/lit8 v15, v15, 0x1

    add-int v16, v16, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v14, v14, 0x1

    move-object v5, v13

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final shortFilter(Ljava/awt/image/ShortLookupTable;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;III)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/ShortLookupTable;->getTable()[[S

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/LookupTable;->getOffset()I

    move-result v1

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v4, v3

    :cond_0
    const/4 v2, 0x0

    move/from16 v5, p5

    move v13, v3

    :goto_0
    if-ge v13, v5, :cond_4

    move-object v12, v2

    move v14, v3

    move v15, v14

    move/from16 v2, p6

    :goto_1
    if-ge v14, v2, :cond_3

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v6, p2

    move v8, v13

    move/from16 v9, p4

    move v11, v14

    invoke-virtual/range {v6 .. v12}, Ljava/awt/image/Raster;->getSamples(IIIII[I)[I

    move-result-object v16

    move/from16 v12, p4

    move v6, v3

    :goto_2
    if-ge v6, v12, :cond_2

    aget v7, v16, v6

    sub-int/2addr v7, v1

    if-ltz v7, :cond_1

    const v8, 0xffff

    if-gt v7, v8, :cond_1

    aget-object v8, v0, v15

    aget-short v7, v8, v7

    aput v7, v16, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index out of range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "srcPix[x]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v16, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v6, p3

    move v8, v13

    move/from16 v9, p4

    move v11, v14

    move-object/from16 v12, v16

    invoke-virtual/range {v6 .. v12}, Ljava/awt/image/WritableRaster;->setSamples(IIIII[I)V

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v15, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move-object v2, v12

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 10

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-nez p2, :cond_8

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    instance-of v3, p2, Ljava/awt/image/ComponentColorModel;

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v6

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v7

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v8

    iget-object p0, p0, Ljava/awt/image/LookupOp;->ltable:Ljava/awt/image/LookupTable;

    instance-of v3, p0, Ljava/awt/image/ByteLookupTable;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result p0

    if-ne p0, v5, :cond_6

    const/16 p0, 0x8

    if-eqz v6, :cond_1

    new-array p1, v4, [I

    if-ne v8, v4, :cond_0

    aput v5, p1, v5

    goto :goto_0

    :cond_0
    aput p0, p1, v5

    goto :goto_0

    :cond_1
    new-array p1, v5, [I

    :goto_0
    aput p0, p1, v9

    :goto_1
    move-object v5, p1

    goto :goto_3

    :cond_2
    instance-of p0, p0, Ljava/awt/image/ShortLookupTable;

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result p0

    if-nez p0, :cond_5

    const/16 p0, 0x10

    if-eqz v6, :cond_4

    new-array p1, v4, [I

    if-ne v8, v4, :cond_3

    aput v5, p1, v5

    goto :goto_2

    :cond_3
    aput p0, p1, v5

    goto :goto_2

    :cond_4
    new-array p1, v5, [I

    :goto_2
    aput p0, p1, v9

    move v9, v5

    goto :goto_1

    :cond_5
    move v9, v5

    :cond_6
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_7

    new-instance p0, Ljava/awt/image/ComponentColorModel;

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v4

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    move-object p2, p0

    :cond_7
    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p2, v0, v1}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v0

    invoke-direct {p0, p2, p1, v0, v2}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p2, v0, v1}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v0

    invoke-direct {p0, p2, p1, v0, v2}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    :goto_4
    return-object p0
.end method

.method public createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;
    .locals 0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public final filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->getNumColorComponents()I

    move-result v3

    .line 3
    instance-of v4, v2, Ljava/awt/image/IndexColorModel;

    if-nez v4, :cond_e

    .line 4
    iget-object v4, v0, Ljava/awt/image/LookupOp;->ltable:Ljava/awt/image/LookupTable;

    invoke-virtual {v4}, Ljava/awt/image/LookupTable;->getNumComponents()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v6

    if-eq v4, v6, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->getNumColorComponents()I

    move-result v6

    if-ne v4, v6, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of arrays in the  lookup table ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not compatible with the  src image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez p2, :cond_2

    .line 10
    invoke-virtual {v0, v1, v8}, Ljava/awt/image/LookupOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v6

    move-object v7, v2

    move v8, v9

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v10

    const-string v11, ")"

    if-ne v6, v10, :cond_d

    .line 12
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    if-ne v7, v6, :cond_c

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v6

    .line 14
    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v7

    invoke-virtual {v7}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v7

    .line 15
    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v10

    invoke-virtual {v10}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v10

    if-eq v7, v10, :cond_3

    .line 16
    invoke-virtual {v0, v1, v8}, Ljava/awt/image/LookupOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v7

    move v8, v5

    move-object/from16 v20, v7

    move-object v7, v6

    move-object/from16 v6, v20

    goto :goto_1

    :cond_3
    move-object v7, v6

    move v8, v9

    move-object/from16 v6, p2

    .line 17
    :goto_1
    invoke-static {v0, v1, v6}, Lsun/awt/image/ImagingLib;->filter(Ljava/awt/image/BufferedImageOp;Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v10

    if-nez v10, :cond_a

    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v11

    .line 19
    invoke-virtual {v6}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    .line 20
    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v3, -0x1

    if-eq v2, v4, :cond_4

    if-ne v4, v5, :cond_6

    .line 21
    :cond_4
    invoke-virtual {v11}, Ljava/awt/image/Raster;->getMinX()I

    move-result v16

    .line 22
    invoke-virtual {v11}, Ljava/awt/image/Raster;->getMinY()I

    move-result v17

    .line 23
    new-array v10, v2, [I

    move v12, v9

    :goto_2
    if-ge v12, v2, :cond_5

    .line 24
    aput v12, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual {v11}, Ljava/awt/image/Raster;->getWidth()I

    move-result v14

    .line 26
    invoke-virtual {v11}, Ljava/awt/image/Raster;->getHeight()I

    move-result v15

    move/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v18, v10

    .line 27
    invoke-virtual/range {v11 .. v18}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v11

    .line 28
    :cond_6
    invoke-virtual {v7}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 29
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v2

    sub-int/2addr v2, v5

    if-eq v2, v4, :cond_7

    if-ne v4, v5, :cond_9

    .line 30
    :cond_7
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v17

    .line 31
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v18

    sub-int/2addr v3, v5

    .line 32
    new-array v2, v3, [I

    :goto_3
    if-ge v9, v3, :cond_8

    .line 33
    aput v9, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 34
    :cond_8
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v15

    .line 35
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v16

    move-object v12, v1

    move/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v19, v2

    .line 36
    invoke-virtual/range {v12 .. v19}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v1

    .line 37
    :cond_9
    invoke-virtual {v0, v11, v1}, Ljava/awt/image/LookupOp;->filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    :cond_a
    if-eqz v8, :cond_b

    .line 38
    new-instance v1, Ljava/awt/image/ColorConvertOp;

    iget-object v0, v0, Ljava/awt/image/LookupOp;->hints:Ljava/awt/RenderingHints;

    invoke-direct {v1, v0}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/RenderingHints;)V

    .line 39
    invoke-virtual {v1, v6, v6}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    :cond_b
    return-object v6

    .line 40
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Src height ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") not equal to dst height ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Src width ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") not equal to dst width ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LookupOp cannot be performed on an indexed image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    .line 45
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v6

    .line 46
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getNumBands()I

    .line 47
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v5

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v4

    .line 49
    new-array v1, v6, [I

    .line 50
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getHeight()I

    move-result v3

    if-ne v5, v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getWidth()I

    move-result v3

    if-ne v4, v3, :cond_8

    .line 51
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v3

    if-ne v6, v3, :cond_7

    .line 52
    iget-object v3, v0, Ljava/awt/image/LookupOp;->ltable:Ljava/awt/image/LookupTable;

    invoke-virtual {v3}, Ljava/awt/image/LookupTable;->getNumComponents()I

    move-result v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_1

    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v9

    if-ne v3, v9, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of arrays in the  lookup table ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not compatible with the  src Raster: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p2}, Lsun/awt/image/ImagingLib;->filter(Ljava/awt/image/RasterOp;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v7

    .line 56
    :cond_2
    iget-object v3, v0, Ljava/awt/image/LookupOp;->ltable:Ljava/awt/image/LookupTable;

    instance-of v9, v3, Ljava/awt/image/ByteLookupTable;

    if-eqz v9, :cond_3

    .line 57
    move-object v1, v3

    check-cast v1, Ljava/awt/image/ByteLookupTable;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Ljava/awt/image/LookupOp;->byteFilter(Ljava/awt/image/ByteLookupTable;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;III)V

    goto :goto_3

    .line 58
    :cond_3
    instance-of v9, v3, Ljava/awt/image/ShortLookupTable;

    if-eqz v9, :cond_4

    .line 59
    move-object v1, v3

    check-cast v1, Ljava/awt/image/ShortLookupTable;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Ljava/awt/image/LookupOp;->shortFilter(Ljava/awt/image/ShortLookupTable;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;III)V

    goto :goto_3

    .line 60
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v3

    .line 61
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v6

    .line 62
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getMinX()I

    move-result v9

    .line 63
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getMinY()I

    move-result v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v5, :cond_6

    move v14, v3

    move v15, v9

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v4, :cond_5

    .line 64
    invoke-virtual {v2, v14, v6, v1}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    .line 65
    iget-object v11, v0, Ljava/awt/image/LookupOp;->ltable:Ljava/awt/image/LookupTable;

    invoke-virtual {v11, v1, v1}, Ljava/awt/image/LookupTable;->lookupPixel([I[I)[I

    .line 66
    invoke-virtual {v7, v15, v10, v1}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v14, v8

    add-int/2addr v15, v8

    goto :goto_2

    :cond_5
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    return-object v7

    .line 67
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of channels in the src ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") does not match number of channels in the destination ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width or height of Rasters do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/awt/image/LookupOp;->getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public final getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
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

    iget-object p0, p0, Ljava/awt/image/LookupOp;->hints:Ljava/awt/RenderingHints;

    return-object p0
.end method

.method public final getTable()Ljava/awt/image/LookupTable;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/LookupOp;->ltable:Ljava/awt/image/LookupTable;

    return-object p0
.end method
