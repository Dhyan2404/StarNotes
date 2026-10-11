.class public Ljava/awt/image/AreaAveragingScaleFilter;
.super Ljava/awt/image/ReplicateScaleFilter;
.source "SourceFile"


# static fields
.field private static final neededHints:I = 0x6

.field private static final rgbmodel:Ljava/awt/image/ColorModel;


# instance fields
.field private alphas:[F

.field private blues:[F

.field private greens:[F

.field private passthrough:Z

.field private reds:[F

.field private savedy:I

.field private savedyrem:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v0

    sput-object v0, Ljava/awt/image/AreaAveragingScaleFilter;->rgbmodel:Ljava/awt/image/ColorModel;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/awt/image/ReplicateScaleFilter;-><init>(II)V

    return-void
.end method

.method private accumPixels(IIIILjava/awt/image/ColorModel;Ljava/lang/Object;II)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    iget-object v2, v0, Ljava/awt/image/AreaAveragingScaleFilter;->reds:[F

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Ljava/awt/image/AreaAveragingScaleFilter;->makeAccumBuffers()V

    :cond_0
    iget v2, v0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    if-nez p2, :cond_1

    move/from16 v7, p2

    move v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    iget v4, v0, Ljava/awt/image/AreaAveragingScaleFilter;->savedy:I

    iget v5, v0, Ljava/awt/image/AreaAveragingScaleFilter;->savedyrem:I

    move/from16 v7, p2

    move v6, v5

    move v5, v4

    move v4, v2

    :goto_0
    move/from16 v2, p7

    :goto_1
    add-int v8, p2, p4

    if-ge v7, v8, :cond_10

    const/4 v8, 0x0

    if-nez v6, :cond_3

    const/4 v6, 0x0

    :goto_2
    iget v9, v0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    if-ge v6, v9, :cond_2

    iget-object v9, v0, Ljava/awt/image/AreaAveragingScaleFilter;->alphas:[F

    iget-object v10, v0, Ljava/awt/image/AreaAveragingScaleFilter;->reds:[F

    iget-object v11, v0, Ljava/awt/image/AreaAveragingScaleFilter;->greens:[F

    iget-object v12, v0, Ljava/awt/image/AreaAveragingScaleFilter;->blues:[F

    aput v8, v12, v6

    aput v8, v11, v6

    aput v8, v10, v6

    aput v8, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    iget v6, v0, Ljava/awt/image/ReplicateScaleFilter;->srcHeight:I

    :cond_3
    if-ge v4, v6, :cond_4

    move v9, v4

    goto :goto_3

    :cond_4
    move v9, v6

    :goto_3
    iget v10, v0, Ljava/awt/image/ReplicateScaleFilter;->srcWidth:I

    move/from16 v14, p3

    move v11, v8

    move v12, v11

    move v13, v10

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v10, v12

    :goto_4
    if-ge v15, v14, :cond_b

    if-nez v16, :cond_7

    iget v8, v0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    instance-of v10, v1, [B

    if-eqz v10, :cond_5

    move-object v10, v1

    check-cast v10, [B

    add-int v11, v2, v15

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    goto :goto_5

    :cond_5
    move-object v10, v1

    check-cast v10, [I

    add-int v11, v2, v15

    aget v10, v10, v11

    :goto_5
    move-object/from16 v11, p5

    invoke-virtual {v11, v10}, Ljava/awt/image/ColorModel;->getRGB(I)I

    move-result v10

    ushr-int/lit8 v12, v10, 0x18

    int-to-float v12, v12

    shr-int/lit8 v3, v10, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    shr-int/lit8 v1, v10, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    const/high16 v16, 0x437f0000    # 255.0f

    cmpl-float v18, v12, v16

    if-eqz v18, :cond_6

    div-float v16, v12, v16

    mul-float v3, v3, v16

    mul-float v1, v1, v16

    mul-float v10, v10, v16

    :cond_6
    move v11, v1

    move v1, v8

    move v8, v12

    move v12, v10

    move v10, v3

    goto :goto_6

    :cond_7
    move/from16 v1, v16

    :goto_6
    if-ge v1, v13, :cond_8

    move v3, v1

    goto :goto_7

    :cond_8
    move v3, v13

    :goto_7
    int-to-float v14, v3

    move/from16 v16, v5

    int-to-float v5, v9

    mul-float/2addr v14, v5

    iget-object v5, v0, Ljava/awt/image/AreaAveragingScaleFilter;->alphas:[F

    aget v18, v5, v17

    mul-float v19, v14, v8

    add-float v18, v18, v19

    aput v18, v5, v17

    iget-object v5, v0, Ljava/awt/image/AreaAveragingScaleFilter;->reds:[F

    aget v18, v5, v17

    mul-float v19, v14, v10

    add-float v18, v18, v19

    aput v18, v5, v17

    iget-object v5, v0, Ljava/awt/image/AreaAveragingScaleFilter;->greens:[F

    aget v18, v5, v17

    mul-float v19, v14, v11

    add-float v18, v18, v19

    aput v18, v5, v17

    iget-object v5, v0, Ljava/awt/image/AreaAveragingScaleFilter;->blues:[F

    aget v18, v5, v17

    mul-float/2addr v14, v12

    add-float v18, v18, v14

    aput v18, v5, v17

    sub-int/2addr v1, v3

    if-nez v1, :cond_9

    add-int/lit8 v15, v15, 0x1

    :cond_9
    sub-int/2addr v13, v3

    if-nez v13, :cond_a

    add-int/lit8 v17, v17, 0x1

    iget v3, v0, Ljava/awt/image/ReplicateScaleFilter;->srcWidth:I

    move v13, v3

    :cond_a
    move/from16 v14, p3

    move/from16 v5, v16

    move/from16 v16, v1

    move-object/from16 v1, p6

    goto/16 :goto_4

    :cond_b
    move/from16 v16, v5

    sub-int/2addr v6, v9

    if-nez v6, :cond_d

    invoke-direct/range {p0 .. p0}, Ljava/awt/image/AreaAveragingScaleFilter;->calcRow()[I

    move-result-object v1

    move/from16 v5, v16

    :cond_c
    iget-object v3, v0, Ljava/awt/image/ImageFilter;->consumer:Ljava/awt/image/ImageConsumer;

    const/16 v18, 0x0

    iget v8, v0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    const/16 v21, 0x1

    sget-object v22, Ljava/awt/image/AreaAveragingScaleFilter;->rgbmodel:Ljava/awt/image/ColorModel;

    const/16 v24, 0x0

    move-object/from16 v17, v3

    move/from16 v19, v5

    move/from16 v20, v8

    move-object/from16 v23, v1

    move/from16 v25, v8

    invoke-interface/range {v17 .. v25}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[III)V

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v9

    if-lt v4, v9, :cond_e

    iget v3, v0, Ljava/awt/image/ReplicateScaleFilter;->srcHeight:I

    if-eq v9, v3, :cond_c

    goto :goto_8

    :cond_d
    sub-int/2addr v4, v9

    move/from16 v5, v16

    :cond_e
    :goto_8
    if-nez v4, :cond_f

    iget v1, v0, Ljava/awt/image/ReplicateScaleFilter;->destHeight:I

    add-int/lit8 v7, v7, 0x1

    add-int v2, v2, p8

    move v4, v1

    :cond_f
    move-object/from16 v1, p6

    goto/16 :goto_1

    :cond_10
    move/from16 v16, v5

    iput v6, v0, Ljava/awt/image/AreaAveragingScaleFilter;->savedyrem:I

    move/from16 v3, v16

    iput v3, v0, Ljava/awt/image/AreaAveragingScaleFilter;->savedy:I

    return-void
.end method

.method private calcRow()[I
    .locals 10

    iget v0, p0, Ljava/awt/image/ReplicateScaleFilter;->srcWidth:I

    int-to-float v0, v0

    iget v1, p0, Ljava/awt/image/ReplicateScaleFilter;->srcHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Ljava/awt/image/ReplicateScaleFilter;->outpixbuf:Ljava/lang/Object;

    if-eqz v1, :cond_0

    instance-of v1, v1, [I

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    new-array v1, v1, [I

    iput-object v1, p0, Ljava/awt/image/ReplicateScaleFilter;->outpixbuf:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Ljava/awt/image/ReplicateScaleFilter;->outpixbuf:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    if-ge v3, v4, :cond_a

    iget-object v4, p0, Ljava/awt/image/AreaAveragingScaleFilter;->alphas:[F

    aget v4, v4, v3

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/16 v5, 0xff

    if-gtz v4, :cond_2

    move v6, v0

    move v4, v2

    goto :goto_1

    :cond_2
    if-lt v4, v5, :cond_3

    move v6, v0

    move v4, v5

    goto :goto_1

    :cond_3
    iget-object v6, p0, Ljava/awt/image/AreaAveragingScaleFilter;->alphas:[F

    aget v6, v6, v3

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    :goto_1
    iget-object v7, p0, Ljava/awt/image/AreaAveragingScaleFilter;->reds:[F

    aget v7, v7, v3

    div-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Ljava/awt/image/AreaAveragingScaleFilter;->greens:[F

    aget v8, v8, v3

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Ljava/awt/image/AreaAveragingScaleFilter;->blues:[F

    aget v9, v9, v3

    div-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-gez v7, :cond_4

    move v7, v2

    goto :goto_2

    :cond_4
    if-le v7, v5, :cond_5

    move v7, v5

    :cond_5
    :goto_2
    if-gez v8, :cond_6

    move v8, v2

    goto :goto_3

    :cond_6
    if-le v8, v5, :cond_7

    move v8, v5

    :cond_7
    :goto_3
    if-gez v6, :cond_8

    move v5, v2

    goto :goto_4

    :cond_8
    if-le v6, v5, :cond_9

    goto :goto_4

    :cond_9
    move v5, v6

    :goto_4
    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v6, v7, 0x10

    or-int/2addr v4, v6

    shl-int/lit8 v6, v8, 0x8

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    return-object v1
.end method

.method private makeAccumBuffers()V
    .locals 2

    iget v0, p0, Ljava/awt/image/ReplicateScaleFilter;->destWidth:I

    new-array v1, v0, [F

    iput-object v1, p0, Ljava/awt/image/AreaAveragingScaleFilter;->reds:[F

    new-array v1, v0, [F

    iput-object v1, p0, Ljava/awt/image/AreaAveragingScaleFilter;->greens:[F

    new-array v1, v0, [F

    iput-object v1, p0, Ljava/awt/image/AreaAveragingScaleFilter;->blues:[F

    new-array v0, v0, [F

    iput-object v0, p0, Ljava/awt/image/AreaAveragingScaleFilter;->alphas:[F

    return-void
.end method


# virtual methods
.method public setHints(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ljava/awt/image/AreaAveragingScaleFilter;->passthrough:Z

    invoke-super {p0, p1}, Ljava/awt/image/ImageFilter;->setHints(I)V

    return-void
.end method

.method public setPixels(IIIILjava/awt/image/ColorModel;[BII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljava/awt/image/AreaAveragingScaleFilter;->passthrough:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p8}, Ljava/awt/image/ReplicateScaleFilter;->setPixels(IIIILjava/awt/image/ColorModel;[BII)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct/range {p0 .. p8}, Ljava/awt/image/AreaAveragingScaleFilter;->accumPixels(IIIILjava/awt/image/ColorModel;Ljava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public setPixels(IIIILjava/awt/image/ColorModel;[III)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Ljava/awt/image/AreaAveragingScaleFilter;->passthrough:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-super/range {p0 .. p8}, Ljava/awt/image/ReplicateScaleFilter;->setPixels(IIIILjava/awt/image/ColorModel;[III)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct/range {p0 .. p8}, Ljava/awt/image/AreaAveragingScaleFilter;->accumPixels(IIIILjava/awt/image/ColorModel;Ljava/lang/Object;II)V

    :goto_0
    return-void
.end method
