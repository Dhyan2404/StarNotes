.class public Lcom/twelvemonkeys/image/AreaAverageOp;
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
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->a:I

    iput p2, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->b:I

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
    .locals 5
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
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/twelvemonkeys/image/AreaAverageOp;

    const/16 v3, 0x1f4

    const/16 v4, 0x258

    invoke-direct {v2, v3, v4}, Lcom/twelvemonkeys/image/AreaAverageOp;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/twelvemonkeys/image/AreaAverageOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

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
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twelvemonkeys/image/AreaAverageOp;->c:Ljava/awt/Rectangle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget v12, v1, Ljava/awt/Rectangle;->x:I

    iget v13, v1, Ljava/awt/Rectangle;->y:I

    iget v14, v1, Ljava/awt/Rectangle;->width:I

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    move-object/from16 v15, p1

    move-object/from16 v4, p2

    if-ne v15, v4, :cond_0

    move/from16 v16, v2

    goto :goto_0

    :cond_0
    move/from16 v16, v3

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

    iget v4, v0, Lcom/twelvemonkeys/image/AreaAverageOp;->a:I

    add-int v5, v1, v4

    sub-int/2addr v5, v2

    div-int v11, v5, v4

    iget v5, v0, Lcom/twelvemonkeys/image/AreaAverageOp;->b:I

    add-int v6, v10, v5

    sub-int/2addr v6, v2

    div-int v12, v6, v5

    rem-int v4, v1, v4

    if-eqz v4, :cond_3

    move v13, v2

    goto :goto_3

    :cond_3
    move v13, v3

    :goto_3
    rem-int v4, v10, v5

    if-eqz v4, :cond_4

    move v14, v2

    goto :goto_4

    :cond_4
    move v14, v3

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

    if-ne v4, v2, :cond_6

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

    filled-new-array {v3}, [I

    move-result-object v4

    :goto_5
    move-object/from16 v18, v4

    move-object v7, v6

    goto :goto_6

    :cond_6
    move-object v7, v5

    move-object/from16 v18, v7

    :goto_6
    move v6, v3

    :goto_7
    iget v4, v0, Lcom/twelvemonkeys/image/AreaAverageOp;->b:I

    if-ge v6, v4, :cond_18

    if-eqz v14, :cond_8

    if-ge v6, v4, :cond_7

    goto :goto_8

    :cond_7
    mul-int v4, v6, v12

    sub-int v4, v10, v4

    move/from16 v19, v4

    goto :goto_9

    :cond_8
    :goto_8
    move/from16 v19, v12

    :goto_9
    move-object/from16 v20, v5

    move v5, v3

    :goto_a
    iget v4, v0, Lcom/twelvemonkeys/image/AreaAverageOp;->a:I

    if-ge v5, v4, :cond_17

    if-eqz v13, :cond_a

    if-ge v5, v4, :cond_9

    goto :goto_b

    :cond_9
    mul-int v4, v5, v11

    sub-int v4, v1, v4

    move/from16 v21, v4

    goto :goto_c

    :cond_a
    :goto_b
    move/from16 v21, v11

    :goto_c
    mul-int v4, v21, v19

    mul-int v3, v4, v16

    mul-int v23, v5, v11

    mul-int v24, v6, v12

    move/from16 v25, v4

    move-object v4, v15

    move/from16 v26, v5

    move/from16 v5, v23

    move/from16 v23, v6

    move/from16 v6, v24

    move-object/from16 v27, v7

    move/from16 v7, v21

    move v2, v8

    move/from16 v8, v19

    move v0, v9

    move-object/from16 v9, v20

    :try_start_0
    invoke-virtual/range {v4 .. v9}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    const/4 v7, 0x3

    if-eqz v2, :cond_12

    const/4 v8, 0x1

    if-eq v2, v8, :cond_c

    if-ne v2, v7, :cond_11

    move-object/from16 v6, v20

    check-cast v6, [I

    move-wide v7, v4

    move-wide/from16 v28, v7

    move-wide/from16 v30, v28

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v3, :cond_b

    move/from16 p1, v1

    aget v1, v6, v9

    const/high16 v24, -0x1000000

    and-int v24, v1, v24

    move/from16 p2, v10

    shr-int/lit8 v10, v24, 0x18

    move/from16 v24, v11

    int-to-double v10, v10

    add-double/2addr v4, v10

    const/high16 v10, 0xff0000

    and-int/2addr v10, v1

    shr-int/lit8 v10, v10, 0x10

    int-to-double v10, v10

    add-double/2addr v7, v10

    const v10, 0xff00

    and-int/2addr v10, v1

    shr-int/lit8 v10, v10, 0x8

    int-to-double v10, v10

    add-double v28, v28, v10

    and-int/lit16 v1, v1, 0xff

    int-to-double v10, v1

    add-double v30, v30, v10

    add-int v9, v9, v16

    move/from16 v1, p1

    move/from16 v10, p2

    move/from16 v11, v24

    goto :goto_d

    :cond_b
    move/from16 p1, v1

    move/from16 p2, v10

    move/from16 v24, v11

    move/from16 v1, v25

    int-to-double v9, v1

    div-double/2addr v4, v9

    div-double/2addr v7, v9

    move/from16 v25, v12

    div-double v11, v28, v9

    div-double v9, v30, v9

    double-to-int v1, v4

    invoke-static {v1}, Lcom/twelvemonkeys/image/AreaAverageOp;->a(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    const/16 v22, 0x0

    aput v1, v6, v22

    double-to-int v3, v7

    invoke-static {v3}, Lcom/twelvemonkeys/image/AreaAverageOp;->a(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aput v1, v6, v22

    double-to-int v3, v11

    invoke-static {v3}, Lcom/twelvemonkeys/image/AreaAverageOp;->a(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aput v1, v6, v22

    double-to-int v3, v9

    invoke-static {v3}, Lcom/twelvemonkeys/image/AreaAverageOp;->a(I)I

    move-result v3

    or-int/2addr v1, v3

    aput v1, v6, v22

    move/from16 v31, v13

    move/from16 v33, v14

    move-object/from16 v10, v27

    const/4 v1, 0x1

    move/from16 v27, v2

    move/from16 v2, v22

    goto/16 :goto_10

    :cond_c
    move/from16 p1, v1

    move/from16 p2, v10

    move/from16 v24, v11

    move/from16 v1, v25

    move-object/from16 v10, v27

    const/16 v22, 0x0

    move/from16 v25, v12

    if-eqz v10, :cond_11

    move-object/from16 v8, v20

    check-cast v8, [S

    move-wide v11, v4

    move-wide/from16 v27, v11

    move-wide/from16 v29, v27

    move/from16 v9, v22

    :goto_e
    if-ge v9, v3, :cond_e

    aget-short v31, v8, v9

    aget v32, v10, v22

    and-int v32, v31, v32

    aget v33, v18, v22

    shr-int v7, v32, v33

    int-to-double v6, v7

    add-double/2addr v4, v6

    array-length v6, v10

    const/4 v7, 0x1

    if-le v6, v7, :cond_d

    aget v6, v10, v7

    and-int v6, v31, v6

    aget v33, v18, v7

    shr-int v6, v6, v33

    int-to-double v6, v6

    add-double/2addr v11, v6

    const/4 v6, 0x2

    aget v7, v10, v6

    and-int v7, v31, v7

    aget v33, v18, v6

    shr-int v6, v7, v33

    int-to-double v6, v6

    add-double v27, v27, v6

    array-length v6, v10

    const/4 v7, 0x3

    if-le v6, v7, :cond_d

    aget v6, v10, v7

    and-int v6, v31, v6

    aget v31, v18, v7

    shr-int v6, v6, v31

    int-to-double v6, v6

    add-double v29, v29, v6

    :cond_d
    add-int v9, v9, v16

    const/4 v7, 0x3

    const/16 v22, 0x0

    goto :goto_e

    :cond_e
    int-to-double v6, v1

    div-double/2addr v4, v6

    div-double/2addr v11, v6

    move/from16 v31, v13

    move/from16 v33, v14

    div-double v13, v27, v6

    div-double v6, v29, v6

    double-to-int v1, v4

    const/4 v3, 0x0

    aget v4, v18, v3

    shl-int/2addr v1, v4

    aget v4, v10, v3

    and-int/2addr v1, v4

    int-to-short v1, v1

    aput-short v1, v8, v3

    array-length v4, v10

    const/4 v5, 0x1

    if-le v4, v5, :cond_10

    double-to-int v4, v11

    aget v9, v18, v5

    shl-int/2addr v4, v9

    aget v9, v10, v5

    and-int/2addr v4, v9

    int-to-short v4, v4

    or-int/2addr v1, v4

    int-to-short v1, v1

    aput-short v1, v8, v3

    double-to-int v4, v13

    const/4 v5, 0x2

    aget v9, v18, v5

    shl-int/2addr v4, v9

    aget v5, v10, v5

    and-int/2addr v4, v5

    int-to-short v4, v4

    or-int/2addr v1, v4

    int-to-short v1, v1

    aput-short v1, v8, v3

    array-length v4, v10

    const/4 v5, 0x3

    if-le v4, v5, :cond_f

    double-to-int v4, v6

    aget v6, v18, v5

    shl-int/2addr v4, v6

    aget v5, v10, v5

    and-int/2addr v4, v5

    int-to-short v4, v4

    or-int/2addr v1, v4

    int-to-short v1, v1

    aput-short v1, v8, v3

    :cond_f
    move/from16 v27, v2

    move v2, v3

    const/4 v1, 0x1

    goto/16 :goto_10

    :cond_10
    move/from16 v27, v2

    move v2, v3

    move v1, v5

    goto/16 :goto_10

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransferType not supported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move/from16 p1, v1

    move/from16 p2, v10

    move/from16 v24, v11

    move/from16 v31, v13

    move/from16 v33, v14

    move/from16 v1, v25

    move-object/from16 v10, v27

    move/from16 v25, v12

    move-object/from16 v6, v20

    check-cast v6, [B

    move-wide v7, v4

    move-wide v11, v7

    move-wide v13, v11

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v3, :cond_14

    move/from16 v27, v2

    aget-byte v2, v6, v9

    and-int/lit16 v2, v2, 0xff

    move/from16 v28, v3

    int-to-double v2, v2

    add-double/2addr v4, v2

    const/4 v2, 0x1

    if-le v0, v2, :cond_13

    add-int/lit8 v2, v9, 0x1

    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    add-double/2addr v7, v2

    add-int/lit8 v2, v9, 0x2

    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    add-double/2addr v11, v2

    const/4 v2, 0x3

    if-le v0, v2, :cond_13

    add-int/lit8 v2, v9, 0x3

    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    int-to-double v2, v2

    add-double/2addr v13, v2

    :cond_13
    add-int v9, v9, v16

    move/from16 v2, v27

    move/from16 v3, v28

    goto :goto_f

    :cond_14
    move/from16 v27, v2

    int-to-double v1, v1

    div-double/2addr v4, v1

    const/4 v3, 0x1

    if-le v0, v3, :cond_15

    div-double/2addr v7, v1

    div-double/2addr v11, v1

    const/4 v3, 0x3

    if-le v0, v3, :cond_15

    div-double/2addr v13, v1

    :cond_15
    double-to-int v1, v4

    invoke-static {v1}, Lcom/twelvemonkeys/image/AreaAverageOp;->a(I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v6, v2

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    double-to-int v3, v7

    invoke-static {v3}, Lcom/twelvemonkeys/image/AreaAverageOp;->a(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v6, v1

    double-to-int v3, v11

    invoke-static {v3}, Lcom/twelvemonkeys/image/AreaAverageOp;->a(I)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v6, v4

    const/4 v3, 0x3

    if-le v0, v3, :cond_16

    double-to-int v4, v13

    invoke-static {v4}, Lcom/twelvemonkeys/image/AreaAverageOp;->a(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v6, v3

    :cond_16
    :goto_10
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, v17

    move/from16 v5, v26

    move/from16 v6, v23

    move-object/from16 v9, v20

    invoke-virtual/range {v4 .. v9}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    goto :goto_11

    :catch_0
    move/from16 p1, v1

    move/from16 p2, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v31, v13

    move/from16 v33, v14

    move-object/from16 v10, v27

    const/4 v1, 0x1

    move/from16 v27, v2

    const/4 v2, 0x0

    :goto_11
    add-int/lit8 v5, v26, 0x1

    move v9, v0

    move v3, v2

    move-object v7, v10

    move/from16 v6, v23

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v8, v27

    move/from16 v13, v31

    move/from16 v14, v33

    move-object/from16 v0, p0

    move/from16 v10, p2

    move v2, v1

    move/from16 v1, p1

    goto/16 :goto_a

    :cond_17
    move/from16 p1, v1

    move v1, v2

    move v2, v3

    move/from16 v23, v6

    move/from16 v27, v8

    move v0, v9

    move/from16 p2, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v31, v13

    move/from16 v33, v14

    move-object v10, v7

    add-int/lit8 v6, v23, 0x1

    move-object/from16 v5, v20

    move-object/from16 v0, p0

    move/from16 v10, p2

    move v2, v1

    move/from16 v1, p1

    goto/16 :goto_7

    :cond_18
    return-object v17
.end method

.method public final c(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;Ljava/awt/geom/AffineTransform;)V
    .locals 1

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p0

    sget-object p2, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v0, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p3, p2}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/awt/Graphics2D;->dispose()V

    throw p1
.end method

.method public createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    :goto_0
    new-instance v0, Ljava/awt/image/BufferedImage;

    iget v1, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->a:I

    iget p0, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->b:I

    invoke-static {p1, p2, v1, p0}, Lcom/twelvemonkeys/image/ImageUtil;->i(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;II)Ljava/awt/image/WritableRaster;

    move-result-object p0

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, p1, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0
.end method

.method public createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;
    .locals 1

    iget v0, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->a:I

    iget p0, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->b:I

    invoke-virtual {p1, v0, p0}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/image/AreaAverageOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/twelvemonkeys/image/AreaAverageOp;->b(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object p2
.end method

.method public filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/image/AreaAverageOp;->createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;

    move-result-object p2

    .line 7
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/image/AreaAverageOp;->b(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 2
    new-instance p1, Ljava/awt/Rectangle;

    iget v0, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->a:I

    iget p0, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->b:I

    invoke-direct {p1, v0, p0}, Ljava/awt/Rectangle;-><init>(II)V

    return-object p1
.end method

.method public getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;
    .locals 1

    .line 1
    new-instance p1, Ljava/awt/Rectangle;

    iget v0, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->a:I

    iget p0, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->b:I

    invoke-direct {p1, v0, p0}, Ljava/awt/Rectangle;-><init>(II)V

    return-object p1
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

    iget-object v0, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->c:Ljava/awt/Rectangle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/awt/Rectangle;

    iget-object p0, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->c:Ljava/awt/Rectangle;

    invoke-direct {v0, p0}, Ljava/awt/Rectangle;-><init>(Ljava/awt/Rectangle;)V

    return-object v0
.end method

.method public setSourceRegion(Ljava/awt/Rectangle;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->c:Ljava/awt/Rectangle;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->c:Ljava/awt/Rectangle;

    if-nez v0, :cond_1

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1}, Ljava/awt/Rectangle;-><init>(Ljava/awt/Rectangle;)V

    iput-object v0, p0, Lcom/twelvemonkeys/image/AreaAverageOp;->c:Ljava/awt/Rectangle;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/awt/Rectangle;->setBounds(Ljava/awt/Rectangle;)V

    :goto_0
    return-void
.end method
