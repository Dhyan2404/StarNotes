.class public Lsun/java2d/cmm/lcms/LCMSTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/cmm/ColorTransform;


# instance fields
.field ID:J

.field private disposerReferent:Ljava/lang/Object;

.field private inFormatter:I

.field private isInIntPacked:Z

.field private isOutIntPacked:Z

.field lcmsProfiles:[Lsun/java2d/cmm/lcms/LCMSProfile;

.field private numInComponents:I

.field private numOutComponents:I

.field private outFormatter:I

.field profiles:[Ljava/awt/color/ICC_Profile;

.field renderType:I

.field transformType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lsun/java2d/cmm/ProfileDeferralMgr;->deferring:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lsun/java2d/cmm/ProfileDeferralMgr;->activateProfiles()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/awt/color/ICC_Profile;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->inFormatter:I

    .line 3
    iput-boolean v0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->isInIntPacked:Z

    .line 4
    iput v0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->outFormatter:I

    .line 5
    iput-boolean v0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->isOutIntPacked:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->numInComponents:I

    .line 7
    iput v1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->numOutComponents:I

    .line 8
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->disposerReferent:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/awt/color/ICC_Profile;

    .line 9
    iput-object v3, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->profiles:[Ljava/awt/color/ICC_Profile;

    aput-object p1, v3, v0

    new-array v3, v2, [Lsun/java2d/cmm/lcms/LCMSProfile;

    .line 10
    iput-object v3, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->lcmsProfiles:[Lsun/java2d/cmm/lcms/LCMSProfile;

    .line 11
    invoke-static {p1}, Lsun/java2d/cmm/lcms/LCMS;->getProfileID(Ljava/awt/color/ICC_Profile;)Lsun/java2d/cmm/lcms/LCMSProfile;

    move-result-object p1

    aput-object p1, v3, v0

    if-ne p2, v1, :cond_0

    move p2, v0

    .line 12
    :cond_0
    iput p2, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->renderType:I

    .line 13
    iput p3, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->transformType:I

    .line 14
    iget-object p1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->profiles:[Ljava/awt/color/ICC_Profile;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result p1

    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->numInComponents:I

    .line 15
    iget-object p1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->profiles:[Ljava/awt/color/ICC_Profile;

    array-length p2, p1

    sub-int/2addr p2, v2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result p1

    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->numOutComponents:I

    return-void
.end method

.method public constructor <init>([Lsun/java2d/cmm/ColorTransform;)V
    .locals 7

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->inFormatter:I

    .line 18
    iput-boolean v0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->isInIntPacked:Z

    .line 19
    iput v0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->outFormatter:I

    .line 20
    iput-boolean v0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->isOutIntPacked:Z

    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->numInComponents:I

    .line 22
    iput v1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->numOutComponents:I

    .line 23
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->disposerReferent:Ljava/lang/Object;

    move v1, v0

    move v2, v1

    .line 24
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 25
    aget-object v3, p1, v1

    check-cast v3, Lsun/java2d/cmm/lcms/LCMSTransform;

    iget-object v3, v3, Lsun/java2d/cmm/lcms/LCMSTransform;->profiles:[Ljava/awt/color/ICC_Profile;

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_0
    new-array v1, v2, [Ljava/awt/color/ICC_Profile;

    iput-object v1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->profiles:[Ljava/awt/color/ICC_Profile;

    .line 27
    new-array v1, v2, [Lsun/java2d/cmm/lcms/LCMSProfile;

    iput-object v1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->lcmsProfiles:[Lsun/java2d/cmm/lcms/LCMSProfile;

    move v1, v0

    move v2, v1

    .line 28
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 29
    aget-object v3, p1, v1

    check-cast v3, Lsun/java2d/cmm/lcms/LCMSTransform;

    .line 30
    iget-object v4, v3, Lsun/java2d/cmm/lcms/LCMSTransform;->profiles:[Ljava/awt/color/ICC_Profile;

    iget-object v5, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->profiles:[Ljava/awt/color/ICC_Profile;

    array-length v6, v4

    invoke-static {v4, v0, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v4, v3, Lsun/java2d/cmm/lcms/LCMSTransform;->lcmsProfiles:[Lsun/java2d/cmm/lcms/LCMSProfile;

    iget-object v5, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->lcmsProfiles:[Lsun/java2d/cmm/lcms/LCMSProfile;

    array-length v6, v4

    invoke-static {v4, v0, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v3, v3, Lsun/java2d/cmm/lcms/LCMSTransform;->profiles:[Ljava/awt/color/ICC_Profile;

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 33
    :cond_1
    aget-object p1, p1, v0

    check-cast p1, Lsun/java2d/cmm/lcms/LCMSTransform;

    iget p1, p1, Lsun/java2d/cmm/lcms/LCMSTransform;->renderType:I

    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->renderType:I

    .line 34
    iget-object p1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->profiles:[Ljava/awt/color/ICC_Profile;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result p1

    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->numInComponents:I

    .line 35
    iget-object p1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->profiles:[Ljava/awt/color/ICC_Profile;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result p1

    iput p1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->numOutComponents:I

    return-void
.end method

.method private declared-synchronized doTransform(Lsun/java2d/cmm/lcms/LCMSImageLayout;Lsun/java2d/cmm/lcms/LCMSImageLayout;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->ID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v4, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->inFormatter:I

    iget v5, p1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->isInIntPacked:Z

    iget-boolean v5, p1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->isIntPacked:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->outFormatter:I

    iget v5, p2, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->isOutIntPacked:Z

    iget-boolean v5, p2, Lsun/java2d/cmm/lcms/LCMSImageLayout;->isIntPacked:Z

    if-eq v4, v5, :cond_2

    :cond_0
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->disposerReferent:Ljava/lang/Object;

    :cond_1
    iget v2, p1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    iput v2, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->inFormatter:I

    iget-boolean v3, p1, Lsun/java2d/cmm/lcms/LCMSImageLayout;->isIntPacked:Z

    iput-boolean v3, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->isInIntPacked:Z

    iget v4, p2, Lsun/java2d/cmm/lcms/LCMSImageLayout;->pixelType:I

    iput v4, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->outFormatter:I

    iget-boolean v5, p2, Lsun/java2d/cmm/lcms/LCMSImageLayout;->isIntPacked:Z

    iput-boolean v5, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->isOutIntPacked:Z

    iget-object v0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->lcmsProfiles:[Lsun/java2d/cmm/lcms/LCMSProfile;

    iget v1, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->renderType:I

    iget-object v6, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->disposerReferent:Ljava/lang/Object;

    invoke-static/range {v0 .. v6}, Lsun/java2d/cmm/lcms/LCMS;->createTransform([Lsun/java2d/cmm/lcms/LCMSProfile;IIZIZLjava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->ID:J

    :cond_2
    invoke-static {p0, p1, p2}, Lsun/java2d/cmm/lcms/LCMS;->colorConvert(Lsun/java2d/cmm/lcms/LCMSTransform;Lsun/java2d/cmm/lcms/LCMSImageLayout;Lsun/java2d/cmm/lcms/LCMSImageLayout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public colorConvert(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)V
    .locals 32

    move-object/from16 v0, p0

    const-string v1, "Unable to convert images"

    .line 1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    invoke-static/range {p2 .. p2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->createImageLayout(Ljava/awt/image/BufferedImage;)Lsun/java2d/cmm/lcms/LCMSImageLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static/range {p1 .. p1}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->createImageLayout(Ljava/awt/image/BufferedImage;)Lsun/java2d/cmm/lcms/LCMSImageLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-direct {v0, v3, v2}, Lsun/java2d/cmm/lcms/LCMSTransform;->doTransform(Lsun/java2d/cmm/lcms/LCMSImageLayout;Lsun/java2d/cmm/lcms/LCMSImageLayout;)V
    :try_end_0
    .catch Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v3

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v4

    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v5

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    .line 11
    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->getNumColorComponents()I

    move-result v8

    .line 12
    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->getNumColorComponents()I

    move-result v9

    const/16 v10, 0x8

    const/high16 v12, 0x437f0000    # 255.0f

    move v14, v10

    const/4 v13, 0x0

    :goto_0
    const/16 v16, 0x10

    if-ge v13, v8, :cond_2

    .line 13
    invoke-virtual {v4, v13}, Ljava/awt/image/ColorModel;->getComponentSize(I)I

    move-result v15

    if-le v15, v10, :cond_1

    move/from16 v14, v16

    const v12, 0x477fff00    # 65535.0f

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_4

    .line 14
    invoke-virtual {v5, v13}, Ljava/awt/image/ColorModel;->getComponentSize(I)I

    move-result v15

    if-le v15, v10, :cond_3

    move/from16 v14, v16

    const v12, 0x477fff00    # 65535.0f

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 15
    :cond_4
    new-array v13, v8, [F

    .line 16
    new-array v15, v8, [F

    .line 17
    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v11

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_5

    .line 18
    invoke-virtual {v11, v10}, Ljava/awt/color/ColorSpace;->getMinValue(I)F

    move-result v16

    aput v16, v13, v10

    .line 19
    invoke-virtual {v11, v10}, Ljava/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v16

    aget v17, v13, v10

    sub-float v16, v16, v17

    div-float v16, v12, v16

    aput v16, v15, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v10

    .line 21
    new-array v11, v9, [F

    move-object/from16 v16, v1

    .line 22
    new-array v1, v9, [F

    move-object/from16 v17, v3

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v9, :cond_6

    .line 23
    invoke-virtual {v10, v3}, Ljava/awt/color/ColorSpace;->getMinValue(I)F

    move-result v18

    aput v18, v11, v3

    .line 24
    invoke-virtual {v10, v3}, Ljava/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v18

    aget v19, v11, v3

    sub-float v18, v18, v19

    div-float v18, v18, v12

    aput v18, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 25
    :cond_6
    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v3

    .line 26
    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v3, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    :goto_4
    if-eqz v3, :cond_8

    add-int/lit8 v12, v9, 0x1

    .line 27
    new-array v12, v12, [F

    goto :goto_5

    .line 28
    :cond_8
    new-array v12, v9, [F

    :goto_5
    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f000000    # 0.5f

    const/16 v21, 0x0

    move-object/from16 v22, v5

    const/16 v5, 0x8

    if-ne v14, v5, :cond_11

    mul-int v5, v6, v8

    .line 29
    new-array v14, v5, [B

    move/from16 p2, v3

    mul-int v3, v6, v9

    move-object/from16 v23, v12

    .line 30
    new-array v12, v3, [B

    move-object/from16 v24, v11

    if-eqz v10, :cond_9

    .line 31
    new-array v11, v6, [F

    move-object/from16 v25, v1

    goto :goto_6

    :cond_9
    move-object/from16 v25, v1

    move-object/from16 v11, v21

    .line 32
    :goto_6
    :try_start_1
    new-instance v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v26

    div-int v5, v5, v26

    .line 34
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v26

    invoke-static/range {v26 .. v26}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v26

    const/16 v18, 0x1

    .line 35
    invoke-static/range {v18 .. v18}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v27

    move/from16 v28, v9

    or-int v9, v26, v27

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v0

    invoke-direct {v1, v14, v5, v9, v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([BIII)V

    .line 36
    new-instance v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v5

    div-int/2addr v3, v5

    .line 38
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v5

    invoke-static {v5}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v5

    const/4 v9, 0x1

    .line 39
    invoke-static {v9}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v9

    or-int/2addr v5, v9

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v9

    invoke-direct {v0, v12, v3, v5, v9}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([BIII)V
    :try_end_1
    .catch Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v7, :cond_1a

    move/from16 v18, v7

    move-object/from16 v7, v21

    move-object v9, v7

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_8
    if-ge v5, v6, :cond_c

    .line 40
    invoke-virtual {v2, v5, v3, v9}, Ljava/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v26, v2

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v4, v9, v7, v2}, Ljava/awt/image/ColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v7

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v8, :cond_a

    add-int/lit8 v27, v16, 0x1

    .line 42
    aget v29, v7, v2

    aget v30, v13, v2

    sub-float v29, v29, v30

    aget v30, v15, v2

    mul-float v29, v29, v30

    move-object/from16 v30, v9

    add-float v9, v29, v20

    float-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v14, v16

    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v27

    move-object/from16 v9, v30

    goto :goto_9

    :cond_a
    move-object/from16 v30, v9

    if-eqz v10, :cond_b

    .line 43
    aget v2, v7, v8

    aput v2, v11, v5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v26

    move-object/from16 v9, v30

    goto :goto_8

    :cond_c
    move-object/from16 v26, v2

    move-object/from16 v2, p0

    .line 44
    invoke-direct {v2, v1, v0}, Lsun/java2d/cmm/lcms/LCMSTransform;->doTransform(Lsun/java2d/cmm/lcms/LCMSImageLayout;Lsun/java2d/cmm/lcms/LCMSImageLayout;)V

    move-object/from16 v9, v21

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_a
    if-ge v5, v6, :cond_10

    move-object/from16 v27, v0

    move/from16 v16, v7

    move/from16 v0, v28

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v0, :cond_d

    add-int/lit8 v28, v16, 0x1

    move-object/from16 v29, v1

    .line 45
    aget-byte v1, v12, v16

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    aget v16, v25, v7

    mul-float v1, v1, v16

    aget v16, v24, v7

    add-float v1, v1, v16

    aput v1, v23, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v28

    move-object/from16 v1, v29

    goto :goto_b

    :cond_d
    move-object/from16 v29, v1

    if-eqz v10, :cond_e

    .line 46
    aget v1, v11, v5

    aput v1, v23, v0

    goto :goto_c

    :cond_e
    if-eqz p2, :cond_f

    .line 47
    aput v19, v23, v0

    :cond_f
    :goto_c
    move-object/from16 v1, v22

    move-object/from16 v7, v23

    move-object/from16 v22, v11

    const/4 v11, 0x0

    .line 48
    invoke-virtual {v1, v7, v11, v9}, Ljava/awt/image/ColorModel;->getDataElements([FILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v11, v17

    .line 49
    invoke-virtual {v11, v5, v3, v9}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v28, v0

    move-object/from16 v23, v7

    move/from16 v7, v16

    move-object/from16 v11, v22

    move-object/from16 v0, v27

    move-object/from16 v22, v1

    move-object/from16 v1, v29

    goto :goto_a

    :cond_10
    move-object/from16 v27, v0

    move-object/from16 v29, v1

    move-object/from16 v1, v22

    move-object/from16 v7, v23

    move/from16 v0, v28

    move-object/from16 v22, v11

    move-object/from16 v11, v17

    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v18

    move-object/from16 v11, v22

    move-object/from16 v2, v26

    move-object/from16 v0, v27

    move-object/from16 v22, v1

    move-object/from16 v1, v29

    goto/16 :goto_7

    .line 50
    :catch_0
    new-instance v0, Ljava/awt/color/CMMException;

    move-object/from16 v3, v16

    invoke-direct {v0, v3}, Ljava/awt/color/CMMException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 p2, v3

    move/from16 v18, v7

    move-object/from16 v24, v11

    move-object v7, v12

    move-object/from16 v3, v16

    move-object/from16 v11, v17

    move-object/from16 v1, v22

    move-object v2, v0

    move v0, v9

    mul-int v5, v6, v8

    .line 51
    new-array v9, v5, [S

    mul-int v12, v6, v0

    .line 52
    new-array v14, v12, [S

    if-eqz v10, :cond_12

    .line 53
    new-array v3, v6, [F

    move-object/from16 v17, v11

    goto :goto_d

    :cond_12
    move-object/from16 v17, v11

    move-object/from16 v3, v21

    .line 54
    :goto_d
    :try_start_2
    new-instance v11, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    .line 55
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v22

    div-int v5, v5, v22

    .line 56
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v22

    const/16 v23, 0x2

    .line 57
    invoke-static/range {v23 .. v23}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v27

    move-object/from16 v28, v1

    or-int v1, v22, v27

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v22

    move-object/from16 v27, v7

    mul-int/lit8 v7, v22, 0x2

    invoke-direct {v11, v9, v5, v1, v7}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([SIII)V

    .line 58
    new-instance v1, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    .line 59
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v5

    div-int/2addr v12, v5

    .line 60
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v5

    invoke-static {v5}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v5

    .line 61
    invoke-static/range {v23 .. v23}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v1, v14, v12, v5, v7}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([SIII)V
    :try_end_2
    .catch Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v7, v18

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v7, :cond_1a

    move/from16 v18, v7

    move-object/from16 v22, v14

    move-object/from16 v7, v21

    move-object v14, v7

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_f
    if-ge v12, v6, :cond_15

    move/from16 v23, v0

    move-object/from16 v0, v26

    .line 62
    invoke-virtual {v0, v12, v5, v7}, Ljava/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v0, 0x0

    .line 63
    invoke-virtual {v4, v7, v14, v0}, Ljava/awt/image/ColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v14

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v8, :cond_13

    add-int/lit8 v29, v16, 0x1

    .line 64
    aget v30, v14, v0

    aget v31, v13, v0

    sub-float v30, v30, v31

    aget v31, v15, v0

    mul-float v30, v30, v31

    move-object/from16 v31, v4

    add-float v4, v30, v20

    float-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v9, v16

    add-int/lit8 v0, v0, 0x1

    move/from16 v16, v29

    move-object/from16 v4, v31

    goto :goto_10

    :cond_13
    move-object/from16 v31, v4

    if-eqz v10, :cond_14

    .line 65
    aget v0, v14, v8

    aput v0, v3, v12

    :cond_14
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v23

    move-object/from16 v4, v31

    goto :goto_f

    :cond_15
    move/from16 v23, v0

    move-object/from16 v31, v4

    .line 66
    invoke-direct {v2, v11, v1}, Lsun/java2d/cmm/lcms/LCMSTransform;->doTransform(Lsun/java2d/cmm/lcms/LCMSImageLayout;Lsun/java2d/cmm/lcms/LCMSImageLayout;)V

    move-object/from16 v7, v21

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_11
    if-ge v0, v6, :cond_19

    move v12, v4

    move/from16 v14, v23

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v14, :cond_16

    add-int/lit8 v16, v12, 0x1

    .line 67
    aget-short v12, v22, v12

    const v23, 0xffff

    and-int v12, v12, v23

    int-to-float v12, v12

    aget v23, v25, v4

    mul-float v12, v12, v23

    aget v23, v24, v4

    add-float v12, v12, v23

    aput v12, v27, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v16

    goto :goto_12

    :cond_16
    if-eqz v10, :cond_17

    .line 68
    aget v4, v3, v0

    aput v4, v27, v14

    goto :goto_13

    :cond_17
    if-eqz p2, :cond_18

    .line 69
    aput v19, v27, v14

    :cond_18
    :goto_13
    move-object/from16 p1, v1

    move-object/from16 v1, v27

    move-object/from16 v4, v28

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v4, v1, v2, v7}, Ljava/awt/image/ColorModel;->getDataElements([FILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v2, v17

    .line 71
    invoke-virtual {v2, v0, v5, v7}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v27, v1

    move-object/from16 v28, v4

    move v4, v12

    move/from16 v23, v14

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    goto :goto_11

    :cond_19
    move-object/from16 p1, v1

    move-object/from16 v2, v17

    move/from16 v14, v23

    move-object/from16 v1, v27

    move-object/from16 v4, v28

    add-int/lit8 v5, v5, 0x1

    move v0, v14

    move/from16 v7, v18

    move-object/from16 v14, v22

    move-object/from16 v4, v31

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    goto/16 :goto_e

    :cond_1a
    return-void

    .line 72
    :catch_1
    new-instance v0, Ljava/awt/color/CMMException;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/awt/color/CMMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :catch_2
    new-instance v0, Ljava/awt/color/CMMException;

    invoke-direct {v0, v1}, Ljava/awt/color/CMMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public colorConvert(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 116
    invoke-static/range {p2 .. p2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->createImageLayout(Ljava/awt/image/Raster;)Lsun/java2d/cmm/lcms/LCMSImageLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 117
    invoke-static/range {p1 .. p1}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->createImageLayout(Ljava/awt/image/Raster;)Lsun/java2d/cmm/lcms/LCMSImageLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 118
    invoke-direct {v0, v4, v3}, Lsun/java2d/cmm/lcms/LCMSTransform;->doTransform(Lsun/java2d/cmm/lcms/LCMSImageLayout;Lsun/java2d/cmm/lcms/LCMSImageLayout;)V

    return-void

    .line 119
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v3

    .line 120
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v4

    .line 121
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v5

    .line 122
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v6

    .line 123
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v7

    .line 124
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v8

    .line 125
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v9

    .line 126
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v10

    const/16 v11, 0x8

    const/high16 v13, 0x437f0000    # 255.0f

    move v15, v11

    const/4 v14, 0x0

    :goto_0
    const v16, 0x477fff00    # 65535.0f

    const/16 v17, 0x10

    if-ge v14, v9, :cond_2

    .line 127
    invoke-virtual {v3, v14}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v12

    if-le v12, v11, :cond_1

    move/from16 v13, v16

    move/from16 v15, v17

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_4

    .line 128
    invoke-virtual {v4, v12}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v14

    if-le v14, v11, :cond_3

    move/from16 v13, v16

    move/from16 v15, v17

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 129
    :cond_4
    new-array v12, v9, [F

    .line 130
    new-array v14, v10, [F

    const/4 v11, 0x0

    :goto_2
    const v17, 0x46fffe00    # 32767.0f

    const/4 v2, 0x2

    const/16 v18, 0x1

    if-ge v11, v9, :cond_6

    if-ne v5, v2, :cond_5

    div-float v2, v13, v17

    .line 131
    aput v2, v12, v11

    goto :goto_3

    .line 132
    :cond_5
    invoke-virtual {v3, v11}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v2

    shl-int v2, v18, v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v2, v13, v2

    aput v2, v12, v11

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v10, :cond_8

    if-ne v6, v2, :cond_7

    div-float v5, v17, v13

    .line 133
    aput v5, v14, v3

    goto :goto_5

    .line 134
    :cond_7
    invoke-virtual {v4, v3}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v5

    shl-int v5, v18, v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v5, v13

    aput v5, v14, v3

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 135
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v3

    .line 136
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getMinY()I

    move-result v4

    const-string v5, "Unable to convert rasters"

    const/16 v11, 0x8

    if-ne v15, v11, :cond_d

    mul-int v2, v7, v9

    .line 137
    new-array v11, v2, [B

    mul-int v13, v7, v10

    .line 138
    new-array v15, v13, [B

    .line 139
    :try_start_0
    new-instance v6, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    .line 140
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v17

    div-int v2, v2, v17

    .line 141
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v17

    .line 142
    invoke-static/range {v18 .. v18}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v19

    move/from16 v20, v3

    or-int v3, v17, v19

    move/from16 v17, v4

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v4

    invoke-direct {v6, v11, v2, v3, v4}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([BIII)V

    .line 143
    new-instance v2, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    .line 144
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v3

    div-int/2addr v13, v3

    .line 145
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v3

    invoke-static {v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v3

    .line 146
    invoke-static/range {v18 .. v18}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v4

    invoke-direct {v2, v15, v13, v3, v4}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([BIII)V
    :try_end_0
    .catch Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v4, v17

    move/from16 v3, v20

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v8, :cond_12

    .line 147
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v13

    move/from16 v18, v8

    const/4 v8, 0x0

    const/16 v17, 0x0

    :goto_7
    if-ge v8, v7, :cond_a

    move/from16 v19, v5

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v9, :cond_9

    move/from16 v21, v9

    .line 148
    invoke-virtual {v1, v13, v3, v5}, Ljava/awt/image/Raster;->getSample(III)I

    move-result v9

    add-int/lit8 v20, v17, 0x1

    int-to-float v9, v9

    .line 149
    aget v22, v12, v5

    mul-float v9, v9, v22

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v9, v9, v16

    float-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v11, v17

    add-int/lit8 v5, v5, 0x1

    move/from16 v17, v20

    move/from16 v9, v21

    goto :goto_8

    :cond_9
    move/from16 v21, v9

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v19

    goto :goto_7

    :cond_a
    move/from16 v19, v5

    move/from16 v21, v9

    .line 150
    invoke-direct {v0, v6, v2}, Lsun/java2d/cmm/lcms/LCMSTransform;->doTransform(Lsun/java2d/cmm/lcms/LCMSImageLayout;Lsun/java2d/cmm/lcms/LCMSImageLayout;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getMinX()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_9
    if-ge v8, v7, :cond_c

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v10, :cond_b

    add-int/lit8 v17, v9, 0x1

    .line 152
    aget-byte v9, v15, v9

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    aget v20, v14, v13

    mul-float v9, v9, v20

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v9, v9, v16

    float-to-int v9, v9

    move-object/from16 v22, v2

    move-object/from16 v2, p2

    .line 153
    invoke-virtual {v2, v5, v4, v13, v9}, Ljava/awt/image/WritableRaster;->setSample(IIII)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v17

    move-object/from16 v2, v22

    goto :goto_a

    :cond_b
    move-object/from16 v22, v2

    move-object/from16 v2, p2

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v22

    goto :goto_9

    :cond_c
    move-object/from16 v22, v2

    move-object/from16 v2, p2

    add-int/lit8 v5, v19, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v18

    move/from16 v9, v21

    move-object/from16 v2, v22

    goto/16 :goto_6

    .line 154
    :catch_0
    new-instance v0, Ljava/awt/color/CMMException;

    invoke-direct {v0, v5}, Ljava/awt/color/CMMException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move/from16 v20, v3

    move/from16 v17, v4

    move/from16 v18, v8

    move/from16 v21, v9

    move v3, v2

    move-object/from16 v2, p2

    mul-int v9, v7, v21

    .line 155
    new-array v4, v9, [S

    mul-int v6, v7, v10

    .line 156
    new-array v8, v6, [S

    .line 157
    :try_start_1
    new-instance v11, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    .line 158
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v13

    div-int/2addr v9, v13

    .line 159
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v13

    invoke-static {v13}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v13

    .line 160
    invoke-static {v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v15

    or-int/2addr v13, v15

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v15

    mul-int/2addr v15, v3

    invoke-direct {v11, v4, v9, v13, v15}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([SIII)V

    .line 161
    new-instance v9, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    .line 162
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v13

    div-int/2addr v6, v13

    .line 163
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v13

    invoke-static {v13}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v13

    .line 164
    invoke-static {v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v15

    or-int/2addr v13, v15

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v15

    mul-int/2addr v15, v3

    invoke-direct {v9, v8, v6, v13, v15}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([SIII)V
    :try_end_1
    .catch Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v3, v20

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v6, :cond_12

    .line 165
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v15

    move/from16 v18, v6

    const/4 v6, 0x0

    const/16 v17, 0x0

    :goto_c
    if-ge v6, v7, :cond_f

    move/from16 v19, v13

    move/from16 v13, v21

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v13, :cond_e

    move/from16 v21, v13

    .line 166
    invoke-virtual {v1, v15, v3, v2}, Ljava/awt/image/Raster;->getSample(III)I

    move-result v13

    add-int/lit8 v20, v17, 0x1

    int-to-float v13, v13

    .line 167
    aget v22, v12, v2

    mul-float v13, v13, v22

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v13, v13, v16

    float-to-int v13, v13

    int-to-short v13, v13

    aput-short v13, v4, v17

    add-int/lit8 v2, v2, 0x1

    move/from16 v17, v20

    move/from16 v13, v21

    goto :goto_d

    :cond_e
    move/from16 v21, v13

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move/from16 v13, v19

    goto :goto_c

    :cond_f
    move/from16 v19, v13

    .line 168
    invoke-direct {v0, v11, v9}, Lsun/java2d/cmm/lcms/LCMSTransform;->doTransform(Lsun/java2d/cmm/lcms/LCMSImageLayout;Lsun/java2d/cmm/lcms/LCMSImageLayout;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getMinX()I

    move-result v2

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_e
    if-ge v6, v7, :cond_11

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v10, :cond_10

    add-int/lit8 v17, v13, 0x1

    .line 170
    aget-short v13, v8, v13

    const v20, 0xffff

    and-int v13, v13, v20

    int-to-float v13, v13

    aget v20, v14, v15

    mul-float v13, v13, v20

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v13, v13, v16

    float-to-int v13, v13

    move-object/from16 v0, p2

    .line 171
    invoke-virtual {v0, v2, v5, v15, v13}, Ljava/awt/image/WritableRaster;->setSample(IIII)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v13, v17

    goto :goto_f

    :cond_10
    move-object/from16 v0, p2

    const/high16 v16, 0x3f000000    # 0.5f

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_e

    :cond_11
    move-object/from16 v0, p2

    const/high16 v16, 0x3f000000    # 0.5f

    add-int/lit8 v13, v19, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v2, v0

    move/from16 v6, v18

    move-object/from16 v0, p0

    goto/16 :goto_b

    :cond_12
    return-void

    .line 172
    :catch_1
    new-instance v0, Ljava/awt/color/CMMException;

    invoke-direct {v0, v5}, Ljava/awt/color/CMMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public colorConvert(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;[F[F[F[F)V
    .locals 23

    .line 74
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v0

    .line 75
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v1

    .line 76
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v2

    .line 77
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v3

    const/4 v4, 0x5

    const/4 v7, 0x4

    if-eq v2, v7, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-eq v3, v7, :cond_3

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 78
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v7

    .line 79
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v9

    .line 80
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v10

    .line 81
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getNumBands()I

    move-result v11

    .line 82
    new-array v12, v10, [F

    .line 83
    new-array v13, v11, [F

    .line 84
    new-array v14, v10, [F

    .line 85
    new-array v15, v11, [F

    const/4 v5, 0x0

    :goto_4
    const/16 v16, 0x0

    const v17, 0x477fff00    # 65535.0f

    const/4 v6, 0x2

    if-ge v5, v10, :cond_6

    if-eqz v8, :cond_4

    .line 86
    aget v6, p4, v5

    aget v16, p3, v5

    sub-float v6, v6, v16

    div-float v17, v17, v6

    aput v17, v12, v5

    .line 87
    aget v6, p3, v5

    aput v6, v14, v5

    goto :goto_6

    :cond_4
    if-ne v2, v6, :cond_5

    const v6, 0x40000080    # 2.0000305f

    .line 88
    aput v6, v12, v5

    goto :goto_5

    .line 89
    :cond_5
    invoke-virtual {v0, v5}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v6

    const/16 v18, 0x1

    shl-int v6, v18, v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float v17, v17, v6

    aput v17, v12, v5

    .line 90
    :goto_5
    aput v16, v14, v5

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v11, :cond_9

    if-eqz v4, :cond_7

    .line 91
    aget v2, p6, v0

    aget v5, p5, v0

    sub-float/2addr v2, v5

    div-float v2, v2, v17

    aput v2, v13, v0

    .line 92
    aget v2, p5, v0

    aput v2, v15, v0

    const/4 v5, 0x1

    goto :goto_9

    :cond_7
    if-ne v3, v6, :cond_8

    const v2, 0x3effff00    # 0.49999237f

    .line 93
    aput v2, v13, v0

    const/4 v5, 0x1

    goto :goto_8

    .line 94
    :cond_8
    invoke-virtual {v1, v0}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v2

    const/4 v5, 0x1

    shl-int v2, v5, v2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-float v2, v2, v17

    aput v2, v13, v0

    .line 95
    :goto_8
    aput v16, v15, v0

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 96
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v0

    .line 97
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getMinY()I

    move-result v1

    mul-int v2, v7, v10

    .line 98
    new-array v3, v2, [S

    mul-int v4, v7, v11

    .line 99
    new-array v5, v4, [S

    .line 100
    :try_start_0
    new-instance v8, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    .line 101
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v16

    div-int v2, v2, v16

    .line 102
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v16

    .line 103
    invoke-static {v6}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v17

    or-int v6, v16, v17

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v16

    move/from16 p3, v0

    const/16 v17, 0x2

    mul-int/lit8 v0, v16, 0x2

    invoke-direct {v8, v3, v2, v6, v0}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([SIII)V

    .line 104
    new-instance v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    .line 105
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v2

    div-int/2addr v4, v2

    .line 106
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v2

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v2

    const/4 v6, 0x2

    .line 107
    invoke-static {v6}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v16

    or-int v2, v2, v16

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v16

    mul-int/lit8 v6, v16, 0x2

    invoke-direct {v0, v5, v4, v2, v6}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([SIII)V
    :try_end_0
    .catch Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    const/4 v4, 0x0

    move/from16 v1, p3

    :goto_a
    if-ge v4, v9, :cond_e

    .line 108
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v6

    move/from16 v16, v9

    const/4 v9, 0x0

    const/16 v17, 0x0

    :goto_b
    if-ge v9, v7, :cond_b

    move/from16 v18, v4

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v10, :cond_a

    move/from16 v19, v10

    move-object/from16 v10, p1

    .line 109
    invoke-virtual {v10, v6, v1, v4}, Ljava/awt/image/Raster;->getSampleFloat(III)F

    move-result v20

    add-int/lit8 v21, v17, 0x1

    .line 110
    aget v22, v14, v4

    sub-float v20, v20, v22

    aget v22, v12, v4

    mul-float v20, v20, v22

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v10, v20, v22

    float-to-int v10, v10

    int-to-short v10, v10

    aput-short v10, v3, v17

    add-int/lit8 v4, v4, 0x1

    move/from16 v10, v19

    move/from16 v17, v21

    goto :goto_c

    :cond_a
    move/from16 v19, v10

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v18

    goto :goto_b

    :cond_b
    move/from16 v18, v4

    move/from16 v19, v10

    move-object/from16 v4, p0

    .line 111
    invoke-direct {v4, v8, v0}, Lsun/java2d/cmm/lcms/LCMSTransform;->doTransform(Lsun/java2d/cmm/lcms/LCMSImageLayout;Lsun/java2d/cmm/lcms/LCMSImageLayout;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getMinX()I

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_d
    if-ge v9, v7, :cond_d

    move-object/from16 p3, v0

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v11, :cond_c

    add-int/lit8 v17, v10, 0x1

    .line 113
    aget-short v10, v5, v10

    const v20, 0xffff

    and-int v10, v10, v20

    int-to-float v10, v10

    aget v20, v13, v0

    mul-float v10, v10, v20

    aget v20, v15, v0

    add-float v10, v10, v20

    move-object/from16 v20, v3

    move-object/from16 v3, p2

    .line 114
    invoke-virtual {v3, v6, v2, v0, v10}, Ljava/awt/image/WritableRaster;->setSample(IIIF)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v17

    move-object/from16 v3, v20

    goto :goto_e

    :cond_c
    move-object/from16 v20, v3

    move-object/from16 v3, p2

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v3, v20

    goto :goto_d

    :cond_d
    move-object/from16 p3, v0

    move-object/from16 v20, v3

    move-object/from16 v3, p2

    add-int/lit8 v0, v18, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    move v4, v0

    move/from16 v9, v16

    move/from16 v10, v19

    move-object/from16 v3, v20

    move-object/from16 v0, p3

    goto/16 :goto_a

    :cond_e
    return-void

    .line 115
    :catch_0
    new-instance v0, Ljava/awt/color/CMMException;

    const-string v1, "Unable to convert rasters"

    invoke-direct {v0, v1}, Ljava/awt/color/CMMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public colorConvert([B[B)[B
    .locals 5

    if-nez p2, :cond_0

    .line 184
    array-length p2, p1

    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v0

    div-int/2addr p2, v0

    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v0

    mul-int/2addr p2, v0

    new-array p2, p2, [B

    .line 185
    :cond_0
    :try_start_0
    new-instance v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    array-length v1, p1

    .line 186
    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v2

    div-int/2addr v1, v2

    .line 187
    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v2

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v2

    const/4 v3, 0x1

    .line 188
    invoke-static {v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v4

    invoke-direct {v0, p1, v1, v2, v4}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([BIII)V

    .line 189
    new-instance p1, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    array-length v1, p2

    .line 190
    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v2

    div-int/2addr v1, v2

    .line 191
    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v2

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v2

    .line 192
    invoke-static {v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v3

    invoke-direct {p1, p2, v1, v2, v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([BIII)V

    .line 193
    invoke-direct {p0, v0, p1}, Lsun/java2d/cmm/lcms/LCMSTransform;->doTransform(Lsun/java2d/cmm/lcms/LCMSImageLayout;Lsun/java2d/cmm/lcms/LCMSImageLayout;)V
    :try_end_0
    .catch Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 194
    :catch_0
    new-instance p0, Ljava/awt/color/CMMException;

    const-string p1, "Unable to convert data"

    invoke-direct {p0, p1}, Ljava/awt/color/CMMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public colorConvert([S[S)[S
    .locals 5

    if-nez p2, :cond_0

    .line 173
    array-length p2, p1

    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v0

    div-int/2addr p2, v0

    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v0

    mul-int/2addr p2, v0

    new-array p2, p2, [S

    .line 174
    :cond_0
    :try_start_0
    new-instance v0, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    array-length v1, p1

    .line 175
    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v2

    div-int/2addr v1, v2

    .line 176
    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v2

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v2

    const/4 v3, 0x2

    .line 177
    invoke-static {v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumInComponents()I

    move-result v4

    mul-int/2addr v4, v3

    invoke-direct {v0, p1, v1, v2, v4}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([SIII)V

    .line 178
    new-instance p1, Lsun/java2d/cmm/lcms/LCMSImageLayout;

    array-length v1, p2

    .line 179
    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v2

    div-int/2addr v1, v2

    .line 180
    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v2

    invoke-static {v2}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->CHANNELS_SH(I)I

    move-result v2

    .line 181
    invoke-static {v3}, Lsun/java2d/cmm/lcms/LCMSImageLayout;->BYTES_SH(I)I

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {p0}, Lsun/java2d/cmm/lcms/LCMSTransform;->getNumOutComponents()I

    move-result v4

    mul-int/2addr v4, v3

    invoke-direct {p1, p2, v1, v2, v4}, Lsun/java2d/cmm/lcms/LCMSImageLayout;-><init>([SIII)V

    .line 182
    invoke-direct {p0, v0, p1}, Lsun/java2d/cmm/lcms/LCMSTransform;->doTransform(Lsun/java2d/cmm/lcms/LCMSImageLayout;Lsun/java2d/cmm/lcms/LCMSImageLayout;)V
    :try_end_0
    .catch Lsun/java2d/cmm/lcms/LCMSImageLayout$ImageLayoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 183
    :catch_0
    new-instance p0, Ljava/awt/color/CMMException;

    const-string p1, "Unable to convert data"

    invoke-direct {p0, p1}, Ljava/awt/color/CMMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNumInComponents()I
    .locals 0

    iget p0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->numInComponents:I

    return p0
.end method

.method public getNumOutComponents()I
    .locals 0

    iget p0, p0, Lsun/java2d/cmm/lcms/LCMSTransform;->numOutComponents:I

    return p0
.end method
