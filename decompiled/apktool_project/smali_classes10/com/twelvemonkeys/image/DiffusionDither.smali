.class public Lcom/twelvemonkeys/image/DiffusionDither;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/BufferedImageOp;
.implements Ljava/awt/image/RasterOp;


# static fields
.field public static final b:I = 0x100

.field public static final c:Ljava/util/Random;


# instance fields
.field public a:Z

.field protected final indexColorModel:Ljava/awt/image/IndexColorModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/image/DiffusionDither;->c:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/twelvemonkeys/image/DiffusionDither;-><init>(Ljava/awt/image/IndexColorModel;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/IndexColorModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/twelvemonkeys/image/DiffusionDither;->a:Z

    .line 3
    iput-object p1, p0, Lcom/twelvemonkeys/image/DiffusionDither;->indexColorModel:Ljava/awt/image/IndexColorModel;

    return-void
.end method

.method public static d([I)I
    .locals 2

    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget p0, p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static e(I[I)[I
    .locals 2

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    aput v0, p1, v1

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aput v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x2

    aput p0, p1, v0

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/awt/image/Raster;)Ljava/awt/image/IndexColorModel;
    .locals 3

    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/awt/image/BufferedImage;->setData(Ljava/awt/image/Raster;)V

    const/16 p1, 0x100

    const/high16 v0, 0x20000

    invoke-static {p0, p1, v0}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/awt/image/BufferedImage;)Ljava/awt/image/IndexColorModel;
    .locals 1

    iget-object p0, p0, Lcom/twelvemonkeys/image/DiffusionDither;->indexColorModel:Ljava/awt/image/IndexColorModel;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x100

    const/high16 v0, 0x20000

    invoke-static {p1, p0, v0}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final c(Ljava/awt/image/Raster;)Ljava/awt/image/IndexColorModel;
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/image/DiffusionDither;->indexColorModel:Ljava/awt/image/IndexColorModel;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/DiffusionDither;->a(Ljava/awt/image/Raster;)Ljava/awt/image/IndexColorModel;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 3

    const/16 v0, 0xd

    if-nez p2, :cond_0

    new-instance p2, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/DiffusionDither;->b(Ljava/awt/image/BufferedImage;)Ljava/awt/image/IndexColorModel;

    move-result-object p0

    invoke-direct {p2, v1, v2, v0, p0}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    return-object p2

    :cond_0
    instance-of p0, p2, Ljava/awt/image/IndexColorModel;

    if-eqz p0, :cond_1

    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    check-cast p2, Ljava/awt/image/IndexColorModel;

    invoke-direct {p0, v1, p1, v0, p2}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/twelvemonkeys/image/ImageFilterException;

    const-string p1, "Only IndexColorModel allowed."

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/image/ImageFilterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/DiffusionDither;->c(Ljava/awt/image/Raster;)Ljava/awt/image/IndexColorModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/image/DiffusionDither;->createCompatibleDestRaster(Ljava/awt/image/Raster;Ljava/awt/image/IndexColorModel;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public final createCompatibleDestRaster(Ljava/awt/image/Raster;Ljava/awt/image/IndexColorModel;)Ljava/awt/image/WritableRaster;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/awt/image/IndexColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public final filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/DiffusionDither;->b(Ljava/awt/image/BufferedImage;)Ljava/awt/image/IndexColorModel;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/image/DiffusionDither;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    instance-of v0, v0, Ljava/awt/image/IndexColorModel;

    if-eqz v0, :cond_1

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    check-cast v1, Ljava/awt/image/IndexColorModel;

    invoke-virtual {p0, p1, v0, v1}, Lcom/twelvemonkeys/image/DiffusionDither;->filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;Ljava/awt/image/IndexColorModel;)Ljava/awt/image/WritableRaster;

    return-object p2

    .line 4
    :cond_1
    new-instance p0, Lcom/twelvemonkeys/image/ImageFilterException;

    const-string p1, "Only IndexColorModel allowed."

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/image/ImageFilterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 1

    .line 5
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/DiffusionDither;->c(Ljava/awt/image/Raster;)Ljava/awt/image/IndexColorModel;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twelvemonkeys/image/DiffusionDither;->filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;Ljava/awt/image/IndexColorModel;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public final filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;Ljava/awt/image/IndexColorModel;)Ljava/awt/image/WritableRaster;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v3

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v4

    if-nez p2, :cond_0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/twelvemonkeys/image/DiffusionDither;->createCompatibleDestRaster(Ljava/awt/image/Raster;Ljava/awt/image/IndexColorModel;)Ljava/awt/image/WritableRaster;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    add-int/lit8 v6, v3, 0x2

    const/4 v7, 0x3

    .line 9
    filled-new-array {v6, v7}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    .line 10
    filled-new-array {v6, v7}, [I

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    const/4 v10, 0x0

    move v11, v10

    :goto_1
    const/4 v13, 0x1

    if-ge v11, v6, :cond_1

    .line 11
    aget-object v14, v8, v11

    sget-object v15, Lcom/twelvemonkeys/image/DiffusionDither;->c:Ljava/util/Random;

    const/16 v7, 0x200

    invoke-virtual {v15, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/lit16 v12, v12, -0x100

    aput v12, v14, v10

    .line 12
    aget-object v12, v8, v11

    invoke-virtual {v15, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/lit16 v14, v14, -0x100

    aput v14, v12, v13

    .line 13
    aget-object v12, v8, v11

    invoke-virtual {v15, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit16 v7, v7, -0x100

    const/4 v13, 0x2

    aput v7, v12, v13

    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    new-array v6, v7, [I

    const/4 v7, 0x4

    new-array v11, v7, [I

    new-array v12, v7, [I

    const/4 v14, 0x0

    move v15, v10

    move/from16 v17, v13

    :goto_2
    move-object/from16 v25, v9

    move-object v9, v8

    move-object/from16 v8, v25

    if-ge v15, v4, :cond_b

    .line 14
    array-length v7, v8

    :goto_3
    const/16 v19, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    .line 15
    aget-object v19, v8, v7

    aput v10, v19, v10

    .line 16
    aput v10, v19, v13

    const/16 v16, 0x2

    .line 17
    aput v10, v19, v16

    goto :goto_3

    :cond_2
    if-eqz v17, :cond_3

    move/from16 v20, v3

    move v7, v10

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v3, -0x1

    move/from16 v20, v19

    .line 18
    :goto_4
    invoke-virtual {v1, v7, v15, v11}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    move v13, v10

    :goto_5
    const/4 v10, 0x3

    if-ge v13, v10, :cond_6

    .line 19
    aget v10, v11, v13

    const/16 v18, 0x4

    shl-int/lit8 v10, v10, 0x4

    add-int/lit8 v22, v7, 0x1

    aget-object v22, v9, v22

    aget v22, v22, v13

    add-int v10, v10, v22

    add-int/lit8 v10, v10, 0x8

    shr-int/lit8 v10, v10, 0x4

    aput v10, v11, v13

    const/16 v1, 0xff

    if-le v10, v1, :cond_4

    .line 20
    aput v1, v11, v13

    const/4 v1, 0x0

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    if-gez v10, :cond_5

    .line 21
    aput v1, v11, v13

    :cond_5
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    const/16 v18, 0x4

    .line 22
    invoke-static {v11}, Lcom/twelvemonkeys/image/DiffusionDither;->d([I)I

    move-result v10

    invoke-virtual {v2, v10, v14}, Ljava/awt/image/IndexColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 23
    invoke-virtual {v5, v7, v15, v14}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    .line 24
    invoke-virtual {v5, v7, v15, v12}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    aget v10, v12, v1

    .line 25
    invoke-virtual {v2, v10}, Ljava/awt/image/IndexColorModel;->getRGB(I)I

    move-result v10

    invoke-static {v10, v12}, Lcom/twelvemonkeys/image/DiffusionDither;->e(I[I)[I

    aget v10, v11, v1

    aget v13, v12, v1

    sub-int/2addr v10, v13

    aput v10, v6, v1

    const/4 v1, 0x1

    aget v13, v11, v1

    aget v19, v12, v1

    sub-int v13, v13, v19

    aput v13, v6, v1

    const/4 v1, 0x2

    aget v16, v11, v1

    aget v22, v12, v1

    sub-int v22, v16, v22

    aput v22, v6, v1

    if-eqz v17, :cond_8

    add-int/lit8 v1, v7, 0x2

    .line 26
    aget-object v23, v9, v1

    const/16 v21, 0x0

    aget v24, v23, v21

    mul-int/lit8 v10, v10, 0x7

    add-int v24, v24, v10

    aput v24, v23, v21

    const/4 v10, 0x1

    .line 27
    aget v19, v23, v10

    mul-int/lit8 v13, v13, 0x7

    add-int v19, v19, v13

    aput v19, v23, v10

    const/4 v10, 0x2

    .line 28
    aget v13, v23, v10

    mul-int/lit8 v22, v22, 0x7

    add-int v13, v13, v22

    aput v13, v23, v10

    .line 29
    aget-object v10, v8, v7

    const/4 v13, 0x0

    aget v21, v10, v13

    aget v22, v6, v13

    const/16 v23, 0x3

    mul-int/lit8 v22, v22, 0x3

    add-int v21, v21, v22

    aput v21, v10, v13

    const/4 v13, 0x1

    .line 30
    aget v19, v10, v13

    aget v22, v6, v13

    mul-int/lit8 v22, v22, 0x3

    add-int v19, v19, v22

    aput v19, v10, v13

    const/4 v13, 0x2

    .line 31
    aget v16, v10, v13

    aget v22, v6, v13

    mul-int/lit8 v22, v22, 0x3

    add-int v16, v16, v22

    aput v16, v10, v13

    add-int/lit8 v7, v7, 0x1

    .line 32
    aget-object v10, v8, v7

    const/4 v13, 0x0

    aget v21, v10, v13

    aget v22, v6, v13

    mul-int/lit8 v22, v22, 0x5

    add-int v21, v21, v22

    aput v21, v10, v13

    const/4 v13, 0x1

    .line 33
    aget v19, v10, v13

    aget v22, v6, v13

    mul-int/lit8 v22, v22, 0x5

    add-int v19, v19, v22

    aput v19, v10, v13

    const/16 v16, 0x2

    .line 34
    aget v19, v10, v16

    aget v22, v6, v16

    mul-int/lit8 v22, v22, 0x5

    add-int v19, v19, v22

    aput v19, v10, v16

    .line 35
    aget-object v1, v8, v1

    const/4 v10, 0x0

    aget v19, v1, v10

    aget v21, v6, v10

    add-int v19, v19, v21

    aput v19, v1, v10

    .line 36
    aget v10, v1, v13

    aget v19, v6, v13

    add-int v10, v10, v19

    aput v10, v1, v13

    .line 37
    aget v10, v1, v16

    aget v13, v6, v16

    add-int/2addr v10, v13

    aput v10, v1, v16

    move/from16 v1, v20

    if-lt v7, v1, :cond_7

    const/4 v13, 0x1

    const/16 v16, 0x2

    const/16 v19, 0x0

    const/16 v22, 0x3

    goto/16 :goto_7

    :cond_7
    move/from16 v20, v1

    const/4 v10, 0x0

    const/4 v13, 0x1

    goto/16 :goto_8

    :cond_8
    move/from16 v1, v20

    .line 38
    aget-object v20, v9, v7

    const/16 v21, 0x0

    aget v23, v20, v21

    mul-int/lit8 v10, v10, 0x7

    add-int v23, v23, v10

    aput v23, v20, v21

    const/4 v10, 0x1

    .line 39
    aget v19, v20, v10

    mul-int/lit8 v13, v13, 0x7

    add-int v19, v19, v13

    aput v19, v20, v10

    const/4 v10, 0x2

    .line 40
    aget v13, v20, v10

    mul-int/lit8 v22, v22, 0x7

    add-int v13, v13, v22

    aput v13, v20, v10

    add-int/lit8 v10, v7, 0x2

    .line 41
    aget-object v10, v8, v10

    const/4 v13, 0x0

    aget v20, v10, v13

    aget v21, v6, v13

    const/16 v22, 0x3

    mul-int/lit8 v21, v21, 0x3

    add-int v20, v20, v21

    aput v20, v10, v13

    const/4 v13, 0x1

    .line 42
    aget v19, v10, v13

    aget v20, v6, v13

    mul-int/lit8 v20, v20, 0x3

    add-int v19, v19, v20

    aput v19, v10, v13

    const/4 v13, 0x2

    .line 43
    aget v16, v10, v13

    aget v20, v6, v13

    mul-int/lit8 v20, v20, 0x3

    add-int v16, v16, v20

    aput v16, v10, v13

    add-int/lit8 v10, v7, 0x1

    .line 44
    aget-object v10, v8, v10

    const/4 v13, 0x0

    aget v20, v10, v13

    aget v21, v6, v13

    mul-int/lit8 v21, v21, 0x5

    add-int v20, v20, v21

    aput v20, v10, v13

    const/4 v13, 0x1

    .line 45
    aget v19, v10, v13

    aget v20, v6, v13

    mul-int/lit8 v20, v20, 0x5

    add-int v19, v19, v20

    aput v19, v10, v13

    const/16 v16, 0x2

    .line 46
    aget v19, v10, v16

    aget v20, v6, v16

    mul-int/lit8 v20, v20, 0x5

    add-int v19, v19, v20

    aput v19, v10, v16

    .line 47
    aget-object v10, v8, v7

    const/16 v19, 0x0

    aget v20, v10, v19

    aget v21, v6, v19

    add-int v20, v20, v21

    aput v20, v10, v19

    .line 48
    aget v20, v10, v13

    aget v21, v6, v13

    add-int v20, v20, v21

    aput v20, v10, v13

    .line 49
    aget v20, v10, v16

    aget v21, v6, v16

    add-int v20, v20, v21

    aput v20, v10, v16

    add-int/lit8 v7, v7, -0x1

    if-gt v7, v1, :cond_a

    .line 50
    :goto_7
    iget-boolean v1, v0, Lcom/twelvemonkeys/image/DiffusionDither;->a:Z

    if-eqz v1, :cond_9

    xor-int/lit8 v17, v17, 0x1

    :cond_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v7, v18

    move/from16 v10, v19

    goto/16 :goto_2

    :cond_a
    move/from16 v20, v1

    move/from16 v10, v19

    :goto_8
    move-object/from16 v1, p1

    goto/16 :goto_4

    :cond_b
    return-object v5
.end method

.method public final getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/DiffusionDither;->getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public setAlternateScans(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/twelvemonkeys/image/DiffusionDither;->a:Z

    return-void
.end method
