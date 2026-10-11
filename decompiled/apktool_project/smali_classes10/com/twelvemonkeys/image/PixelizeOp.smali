.class public Lcom/twelvemonkeys/image/PixelizeOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/BufferedImageOp;
.implements Ljava/awt/image/RasterOp;


# instance fields
.field public final a:I

.field public final b:I

.field public c:Ljava/awt/Rectangle;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/twelvemonkeys/image/PixelizeOp;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/twelvemonkeys/image/PixelizeOp;->a:I

    .line 4
    iput p2, p0, Lcom/twelvemonkeys/image/PixelizeOp;->b:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/16 v0, 0xff

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/io/File;

    const-string v0, "2006-Lamborghini-Gallardo-Spyder-Y-T-1600x1200.png"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljavax/imageio/ImageIO;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x9

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    new-instance v4, Lcom/twelvemonkeys/image/ResampleOp;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    div-int/2addr v6, v3

    invoke-direct {v4, v5, v6, v2}, Lcom/twelvemonkeys/image/ResampleOp;-><init>(III)V

    invoke-virtual {v4, p0, v1}, Lcom/twelvemonkeys/image/ResampleOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Lcom/twelvemonkeys/image/ResampleOp;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    invoke-direct {v0, v5, v6, v2}, Lcom/twelvemonkeys/image/ResampleOp;-><init>(III)V

    invoke-virtual {v0, p0, v1}, Lcom/twelvemonkeys/image/ResampleOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljavax/swing/JFrame;

    const-string v1, "Test"

    invoke-direct {v0, v1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setDefaultCloseOperation(I)V

    new-instance v1, Ljavax/swing/JScrollPane;

    new-instance v2, Ljavax/swing/JLabel;

    new-instance v3, Lcom/twelvemonkeys/image/BufferedImageIcon;

    invoke-direct {v3, p0}, Lcom/twelvemonkeys/image/BufferedImageIcon;-><init>(Ljava/awt/image/BufferedImage;)V

    invoke-direct {v2, v3}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    invoke-direct {v1, v2}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setContentPane(Ljava/awt/Container;)V

    invoke-virtual {v0}, Ljavax/swing/JFrame;->pack()V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljavax/swing/JFrame;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 36

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twelvemonkeys/image/PixelizeOp;->c:Ljava/awt/Rectangle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget v12, v1, Ljava/awt/Rectangle;->x:I

    iget v13, v1, Ljava/awt/Rectangle;->y:I

    iget v14, v1, Ljava/awt/Rectangle;->width:I

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    move-object/from16 v15, p1

    move-object/from16 v4, p2

    if-ne v15, v4, :cond_0

    move/from16 v16, v3

    goto :goto_0

    :cond_0
    move/from16 v16, v2

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p2

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v1

    invoke-virtual/range {v4 .. v11}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v17

    if-eqz v16, :cond_1

    move-object/from16 v1, v17

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v1

    invoke-virtual/range {v4 .. v11}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v1

    :goto_1
    move-object v15, v1

    goto :goto_2

    :cond_2
    move-object/from16 v15, p1

    move-object/from16 v4, p2

    move-object/from16 v17, v4

    :goto_2
    invoke-virtual {v15}, Ljava/awt/image/Raster;->getWidth()I

    move-result v1

    invoke-virtual {v15}, Ljava/awt/image/Raster;->getHeight()I

    move-result v10

    iget v4, v0, Lcom/twelvemonkeys/image/PixelizeOp;->a:I

    add-int v5, v1, v4

    sub-int/2addr v5, v3

    div-int v11, v5, v4

    iget v4, v0, Lcom/twelvemonkeys/image/PixelizeOp;->b:I

    add-int v5, v10, v4

    sub-int/2addr v5, v3

    div-int v12, v5, v4

    rem-int v4, v1, v11

    if-eqz v4, :cond_3

    move v13, v3

    goto :goto_3

    :cond_3
    move v13, v2

    :goto_3
    rem-int v4, v10, v12

    if-eqz v4, :cond_4

    move v14, v3

    goto :goto_4

    :cond_4
    move v14, v2

    :goto_4
    invoke-virtual {v15}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result v16

    invoke-virtual {v15}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v9

    invoke-virtual {v15}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v8

    invoke-virtual {v15}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_6

    invoke-virtual {v15}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v4

    instance-of v4, v4, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v4, :cond_5

    invoke-virtual {v15}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v4

    check-cast v4, Ljava/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v4}, Ljava/awt/image/SinglePixelPackedSampleModel;->getBitMasks()[I

    move-result-object v6

    invoke-virtual {v4}, Ljava/awt/image/SinglePixelPackedSampleModel;->getBitOffsets()[I

    move-result-object v4

    goto :goto_5

    :cond_5
    const v4, 0xffff

    filled-new-array {v4}, [I

    move-result-object v6

    filled-new-array {v2}, [I

    move-result-object v4

    :goto_5
    move-object/from16 v18, v4

    move-object v7, v6

    goto :goto_6

    :cond_6
    move-object v7, v5

    move-object/from16 v18, v7

    :goto_6
    move v6, v2

    :goto_7
    if-ge v6, v12, :cond_1c

    if-eqz v14, :cond_8

    add-int/lit8 v4, v6, 0x1

    if-ge v4, v12, :cond_7

    goto :goto_8

    :cond_7
    iget v4, v0, Lcom/twelvemonkeys/image/PixelizeOp;->b:I

    mul-int/2addr v4, v6

    sub-int v4, v10, v4

    goto :goto_9

    :cond_8
    :goto_8
    iget v4, v0, Lcom/twelvemonkeys/image/PixelizeOp;->b:I

    :goto_9
    move/from16 v19, v4

    move-object/from16 v20, v5

    move v5, v2

    :goto_a
    if-ge v5, v11, :cond_1b

    if-eqz v13, :cond_a

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_9

    goto :goto_b

    :cond_9
    iget v4, v0, Lcom/twelvemonkeys/image/PixelizeOp;->a:I

    mul-int/2addr v4, v5

    sub-int v4, v1, v4

    goto :goto_c

    :cond_a
    :goto_b
    iget v4, v0, Lcom/twelvemonkeys/image/PixelizeOp;->a:I

    :goto_c
    move/from16 v21, v4

    mul-int v4, v21, v19

    mul-int v2, v4, v16

    iget v3, v0, Lcom/twelvemonkeys/image/PixelizeOp;->a:I

    mul-int/2addr v3, v5

    move/from16 p1, v1

    iget v1, v0, Lcom/twelvemonkeys/image/PixelizeOp;->b:I

    mul-int/2addr v1, v6

    move/from16 p2, v10

    move v10, v4

    move-object v4, v15

    move/from16 v24, v5

    move v5, v3

    move v3, v6

    move v6, v1

    move-object v1, v7

    move/from16 v7, v21

    move/from16 v25, v11

    move v11, v8

    move/from16 v8, v19

    move/from16 v26, v12

    move v12, v9

    move-object/from16 v9, v20

    invoke-virtual/range {v4 .. v9}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    if-eqz v11, :cond_13

    const/4 v7, 0x1

    if-eq v11, v7, :cond_e

    if-ne v11, v6, :cond_d

    move-object/from16 v6, v20

    check-cast v6, [I

    move-wide v7, v4

    move-wide/from16 v27, v7

    move-wide/from16 v29, v27

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v2, :cond_b

    move/from16 v31, v13

    aget v13, v6, v9

    const/high16 v32, -0x1000000

    and-int v32, v13, v32

    move/from16 v33, v14

    shr-int/lit8 v14, v32, 0x18

    move-object/from16 v32, v15

    int-to-double v14, v14

    add-double/2addr v4, v14

    const/high16 v14, 0xff0000

    and-int/2addr v14, v13

    shr-int/lit8 v14, v14, 0x10

    int-to-double v14, v14

    add-double/2addr v7, v14

    const v14, 0xff00

    and-int/2addr v14, v13

    shr-int/lit8 v14, v14, 0x8

    int-to-double v14, v14

    add-double v27, v27, v14

    and-int/lit16 v13, v13, 0xff

    int-to-double v13, v13

    add-double v29, v29, v13

    add-int v9, v9, v16

    move/from16 v13, v31

    move-object/from16 v15, v32

    move/from16 v14, v33

    goto :goto_d

    :cond_b
    move/from16 v31, v13

    move/from16 v33, v14

    move-object/from16 v32, v15

    int-to-double v9, v10

    div-double/2addr v4, v9

    div-double/2addr v7, v9

    div-double v13, v27, v9

    div-double v9, v29, v9

    const/4 v15, 0x0

    :goto_e
    if-ge v15, v2, :cond_c

    move/from16 v27, v3

    double-to-int v3, v4

    invoke-static {v3}, Lcom/twelvemonkeys/image/PixelizeOp;->a(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    aput v3, v6, v15

    move-wide/from16 v28, v4

    double-to-int v4, v7

    invoke-static {v4}, Lcom/twelvemonkeys/image/PixelizeOp;->a(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aput v3, v6, v15

    double-to-int v4, v13

    invoke-static {v4}, Lcom/twelvemonkeys/image/PixelizeOp;->a(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aput v3, v6, v15

    double-to-int v4, v9

    invoke-static {v4}, Lcom/twelvemonkeys/image/PixelizeOp;->a(I)I

    move-result v4

    or-int/2addr v3, v4

    aput v3, v6, v15

    add-int v15, v15, v16

    move/from16 v3, v27

    move-wide/from16 v4, v28

    goto :goto_e

    :cond_c
    move/from16 v27, v3

    move-object/from16 v28, v1

    move/from16 v34, v11

    const/4 v3, 0x1

    const/16 v22, 0x0

    move-object v1, v0

    move v0, v12

    goto/16 :goto_16

    :cond_d
    move/from16 v34, v11

    goto/16 :goto_11

    :cond_e
    move/from16 v27, v3

    move/from16 v31, v13

    move/from16 v33, v14

    move-object/from16 v32, v15

    if-eqz v1, :cond_d

    move-object/from16 v3, v20

    check-cast v3, [S

    move-wide v7, v4

    move-wide v13, v7

    move-wide/from16 v28, v13

    const/4 v9, 0x0

    :goto_f
    const/4 v15, 0x2

    if-ge v9, v2, :cond_10

    aget-short v30, v3, v9

    const/16 v22, 0x0

    aget v34, v1, v22

    and-int v34, v30, v34

    aget v35, v18, v22

    shr-int v6, v34, v35

    move/from16 v34, v11

    move/from16 v35, v12

    int-to-double v11, v6

    add-double/2addr v4, v11

    array-length v6, v1

    const/4 v11, 0x1

    if-le v6, v11, :cond_f

    aget v6, v1, v11

    and-int v6, v30, v6

    aget v12, v18, v11

    shr-int/2addr v6, v12

    int-to-double v11, v6

    add-double/2addr v7, v11

    aget v6, v1, v15

    and-int v6, v30, v6

    aget v11, v18, v15

    shr-int/2addr v6, v11

    int-to-double v11, v6

    add-double/2addr v13, v11

    array-length v6, v1

    const/4 v11, 0x3

    if-le v6, v11, :cond_f

    aget v6, v1, v11

    and-int v6, v30, v6

    aget v12, v18, v11

    shr-int/2addr v6, v12

    int-to-double v11, v6

    add-double v28, v28, v11

    :cond_f
    add-int v9, v9, v16

    move/from16 v11, v34

    move/from16 v12, v35

    const/4 v6, 0x3

    goto :goto_f

    :cond_10
    move/from16 v34, v11

    move/from16 v35, v12

    int-to-double v9, v10

    div-double/2addr v4, v9

    div-double/2addr v7, v9

    div-double/2addr v13, v9

    div-double v9, v28, v9

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v2, :cond_12

    double-to-int v11, v4

    const/16 v22, 0x0

    aget v12, v18, v22

    shl-int/2addr v11, v12

    aget v12, v1, v22

    and-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, v3, v6

    array-length v12, v1

    const/4 v15, 0x1

    if-le v12, v15, :cond_11

    double-to-int v12, v7

    aget v23, v18, v15

    shl-int v12, v12, v23

    aget v29, v1, v15

    and-int v12, v12, v29

    int-to-short v12, v12

    or-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, v3, v6

    double-to-int v12, v13

    const/4 v15, 0x2

    aget v28, v18, v15

    shl-int v12, v12, v28

    aget v28, v1, v15

    and-int v12, v12, v28

    int-to-short v12, v12

    or-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, v3, v6

    array-length v12, v1

    const/4 v15, 0x3

    if-le v12, v15, :cond_11

    double-to-int v12, v9

    aget v29, v18, v15

    shl-int v12, v12, v29

    aget v29, v1, v15

    and-int v12, v12, v29

    int-to-short v12, v12

    or-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, v3, v6

    :cond_11
    add-int v6, v6, v16

    const/4 v15, 0x2

    goto :goto_10

    :cond_12
    const/16 v22, 0x0

    move-object/from16 v28, v1

    const/4 v3, 0x1

    move-object v1, v0

    move/from16 v0, v35

    goto/16 :goto_16

    :goto_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferType not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v34

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move/from16 v27, v3

    move v3, v11

    move/from16 v35, v12

    move/from16 v31, v13

    move/from16 v33, v14

    move-object/from16 v32, v15

    const/16 v22, 0x0

    move-object/from16 v6, v20

    check-cast v6, [B

    move-wide v7, v4

    move-wide v11, v7

    move-wide v13, v11

    move/from16 v9, v22

    :goto_12
    if-ge v9, v2, :cond_16

    aget-byte v15, v6, v9

    and-int/lit16 v15, v15, 0xff

    move-object/from16 v28, v1

    int-to-double v0, v15

    add-double/2addr v4, v0

    move/from16 v0, v35

    const/4 v1, 0x1

    if-le v0, v1, :cond_14

    add-int/lit8 v1, v9, 0x1

    aget-byte v1, v6, v1

    and-int/lit16 v1, v1, 0xff

    move/from16 v34, v3

    move-wide/from16 v29, v4

    int-to-double v3, v1

    add-double/2addr v7, v3

    add-int/lit8 v1, v9, 0x2

    aget-byte v1, v6, v1

    and-int/lit16 v1, v1, 0xff

    int-to-double v3, v1

    add-double/2addr v11, v3

    const/4 v1, 0x3

    if-le v0, v1, :cond_15

    add-int/lit8 v1, v9, 0x3

    aget-byte v1, v6, v1

    and-int/lit16 v1, v1, 0xff

    int-to-double v3, v1

    add-double/2addr v13, v3

    goto :goto_13

    :cond_14
    move/from16 v34, v3

    move-wide/from16 v29, v4

    :cond_15
    :goto_13
    add-int v9, v9, v16

    move/from16 v35, v0

    move-object/from16 v1, v28

    move-wide/from16 v4, v29

    move/from16 v3, v34

    move-object/from16 v0, p0

    goto :goto_12

    :cond_16
    move-object/from16 v28, v1

    move/from16 v34, v3

    move/from16 v0, v35

    int-to-double v9, v10

    div-double/2addr v4, v9

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    div-double/2addr v7, v9

    div-double/2addr v11, v9

    const/4 v1, 0x3

    if-le v0, v1, :cond_17

    div-double/2addr v13, v9

    :cond_17
    move/from16 v1, v22

    :goto_14
    if-ge v1, v2, :cond_1a

    double-to-int v3, v4

    invoke-static {v3}, Lcom/twelvemonkeys/image/PixelizeOp;->a(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v6, v1

    const/4 v3, 0x1

    if-le v0, v3, :cond_18

    add-int/lit8 v9, v1, 0x1

    double-to-int v10, v7

    invoke-static {v10}, Lcom/twelvemonkeys/image/PixelizeOp;->a(I)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    add-int/lit8 v9, v1, 0x2

    double-to-int v10, v11

    invoke-static {v10}, Lcom/twelvemonkeys/image/PixelizeOp;->a(I)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    const/4 v9, 0x3

    if-le v0, v9, :cond_19

    add-int/lit8 v10, v1, 0x3

    double-to-int v15, v13

    invoke-static {v15}, Lcom/twelvemonkeys/image/PixelizeOp;->a(I)I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v6, v10

    goto :goto_15

    :cond_18
    const/4 v9, 0x3

    :cond_19
    :goto_15
    add-int v1, v1, v16

    goto :goto_14

    :cond_1a
    const/4 v3, 0x1

    move-object/from16 v1, p0

    :goto_16
    iget v2, v1, Lcom/twelvemonkeys/image/PixelizeOp;->a:I

    mul-int v5, v24, v2

    iget v2, v1, Lcom/twelvemonkeys/image/PixelizeOp;->b:I

    mul-int v6, v27, v2

    move-object/from16 v4, v17

    move/from16 v7, v21

    move/from16 v8, v19

    move-object/from16 v9, v20

    invoke-virtual/range {v4 .. v9}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v5, v24, 0x1

    move/from16 v10, p2

    move v9, v0

    move-object v0, v1

    move/from16 v2, v22

    move/from16 v11, v25

    move/from16 v12, v26

    move/from16 v6, v27

    move-object/from16 v7, v28

    move/from16 v13, v31

    move-object/from16 v15, v32

    move/from16 v14, v33

    move/from16 v8, v34

    move/from16 v1, p1

    goto/16 :goto_a

    :cond_1b
    move/from16 p1, v1

    move/from16 v22, v2

    move/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v34, v8

    move/from16 p2, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v31, v13

    move/from16 v33, v14

    move-object/from16 v32, v15

    move-object v1, v0

    move v0, v9

    add-int/lit8 v6, v27, 0x1

    move-object v0, v1

    move-object/from16 v5, v20

    move/from16 v1, p1

    goto/16 :goto_7

    :cond_1c
    return-object v17
.end method

.method public createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    :goto_0
    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/twelvemonkeys/image/ImageUtil;->i(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object p0
.end method

.method public createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;
    .locals 0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/image/PixelizeOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twelvemonkeys/image/PixelizeOp;->b(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    return-object p2
.end method

.method public filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/PixelizeOp;->createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;

    move-result-object p2

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/image/PixelizeOp;->b(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 2
    new-instance p0, Ljava/awt/Rectangle;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Ljava/awt/Rectangle;-><init>(II)V

    return-object p0
.end method

.method public getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 1
    new-instance p0, Ljava/awt/Rectangle;

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Ljava/awt/Rectangle;-><init>(II)V

    return-object p0
.end method

.method public getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 0

    if-nez p2, :cond_1

    instance-of p0, p1, Ljava/awt/geom/Point2D$Double;

    if-eqz p0, :cond_0

    new-instance p2, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Double;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/awt/geom/Point2D$Float;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Float;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Ljava/awt/geom/Point2D;->setLocation(Ljava/awt/geom/Point2D;)V

    return-object p2
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSourceRegion()Ljava/awt/Rectangle;
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/image/PixelizeOp;->c:Ljava/awt/Rectangle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/awt/Rectangle;

    iget-object p0, p0, Lcom/twelvemonkeys/image/PixelizeOp;->c:Ljava/awt/Rectangle;

    invoke-direct {v0, p0}, Ljava/awt/Rectangle;-><init>(Ljava/awt/Rectangle;)V

    return-object v0
.end method

.method public setSourceRegion(Ljava/awt/Rectangle;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/twelvemonkeys/image/PixelizeOp;->c:Ljava/awt/Rectangle;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/image/PixelizeOp;->c:Ljava/awt/Rectangle;

    if-nez v0, :cond_1

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1}, Ljava/awt/Rectangle;-><init>(Ljava/awt/Rectangle;)V

    iput-object v0, p0, Lcom/twelvemonkeys/image/PixelizeOp;->c:Ljava/awt/Rectangle;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/awt/Rectangle;->setBounds(Ljava/awt/Rectangle;)V

    :goto_0
    return-void
.end method
