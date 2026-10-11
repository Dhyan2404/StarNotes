.class public Lsun/java2d/loops/ProcessPath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/loops/ProcessPath$FillProcessHandler;,
        Lsun/java2d/loops/ProcessPath$ActiveEdgeList;,
        Lsun/java2d/loops/ProcessPath$FillData;,
        Lsun/java2d/loops/ProcessPath$Edge;,
        Lsun/java2d/loops/ProcessPath$Point;,
        Lsun/java2d/loops/ProcessPath$DrawProcessHandler;,
        Lsun/java2d/loops/ProcessPath$ProcessHandler;,
        Lsun/java2d/loops/ProcessPath$EndSubPathHandler;,
        Lsun/java2d/loops/ProcessPath$DrawHandler;
    }
.end annotation


# static fields
.field private static final CALC_LBND:F = -1048576.0f

.field private static final CALC_UBND:F = 1048576.0f

.field private static final CRES_INVISIBLE:I = 0x4

.field private static final CRES_MAX_CLIPPED:I = 0x1

.field private static final CRES_MIN_CLIPPED:I = 0x0

.field private static final CRES_NOT_CLIPPED:I = 0x3

.field private static final CUB_A_MDP_MULT:I = 0x80

.field private static final CUB_A_SHIFT:I = 0x7

.field private static final CUB_B_MDP_MULT:I = 0x800

.field private static final CUB_B_SHIFT:I = 0xb

.field private static final CUB_C_MDP_MULT:I = 0x2000

.field private static final CUB_C_SHIFT:I = 0xd

.field private static final DF_CUB_COUNT:I = 0x8

.field private static final DF_CUB_DEC_BND:I = 0x40000

.field private static final DF_CUB_INC_BND:I = 0x8000

.field private static final DF_CUB_SHIFT:I = 0x6

.field private static final DF_CUB_STEPS:I = 0x3

.field private static final DF_MAX_POINT:I = 0x100

.field private static final DF_QUAD_COUNT:I = 0x4

.field private static final DF_QUAD_DEC_BND:I = 0x2000

.field private static final DF_QUAD_INC_BND:I = 0x400

.field private static final DF_QUAD_SHIFT:I = 0x1

.field private static final DF_QUAD_STEPS:I = 0x2

.field public static final EPSF:F = 9.765625E-4f

.field public static final EPSFX:I = 0x1

.field private static final FWD_PREC:I = 0x7

.field private static final LOWER_BND:F = -8.5070587E37f

.field private static final LOWER_OUT_BND:I = -0x100000

.field private static final MAX_CUB_SIZE:I = 0x100

.field private static final MAX_QUAD_SIZE:I = 0x400

.field private static final MDP_F_MASK:I = 0x3ff

.field private static final MDP_HALF_MULT:I = 0x200

.field private static final MDP_MULT:I = 0x400

.field private static final MDP_PREC:I = 0xa

.field private static final MDP_W_MASK:I = -0x400

.field public static final PH_MODE_DRAW_CLIP:I = 0x0

.field public static final PH_MODE_FILL_CLIP:I = 0x1

.field private static final QUAD_A_MDP_MULT:I = 0x80

.field private static final QUAD_A_SHIFT:I = 0x7

.field private static final QUAD_B_MDP_MULT:I = 0x200

.field private static final QUAD_B_SHIFT:I = 0x9

.field private static final UPPER_BND:F = 8.5070587E37f

.field private static final UPPER_OUT_BND:I = 0x100000

.field public static noopEndSubPathHandler:Lsun/java2d/loops/ProcessPath$EndSubPathHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/java2d/loops/ProcessPath$1;

    invoke-direct {v0}, Lsun/java2d/loops/ProcessPath$1;-><init>()V

    sput-object v0, Lsun/java2d/loops/ProcessPath;->noopEndSubPathHandler:Lsun/java2d/loops/ProcessPath$EndSubPathHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CLIP(FFFFD)F
    .locals 4

    .line 1
    float-to-double v0, p1

    float-to-double v2, p0

    sub-double/2addr p4, v2

    sub-float/2addr p3, p1

    float-to-double v2, p3

    mul-double/2addr p4, v2

    sub-float/2addr p2, p0

    float-to-double p0, p2

    div-double/2addr p4, p0

    add-double/2addr v0, p4

    double-to-float p0, v0

    return p0
.end method

.method private static CLIP(IIIID)I
    .locals 4

    .line 2
    int-to-double v0, p1

    int-to-double v2, p0

    sub-double/2addr p4, v2

    sub-int/2addr p3, p1

    int-to-double v2, p3

    mul-double/2addr p4, v2

    sub-int/2addr p2, p0

    int-to-double p0, p2

    div-double/2addr p4, p0

    add-double/2addr v0, p4

    double-to-int p0, v0

    return p0
.end method

.method private static CLIPCLAMP(FF[FIIIIII)I
    .locals 1

    .line 1
    aget v0, p2, p3

    aput v0, p2, p7

    .line 2
    aget v0, p2, p4

    aput v0, p2, p8

    .line 3
    invoke-static/range {p0 .. p6}, Lsun/java2d/loops/ProcessPath;->TESTANDCLIP(FF[FIIII)I

    move-result p4

    if-nez p4, :cond_0

    .line 4
    aget p0, p2, p3

    aput p0, p2, p7

    goto :goto_1

    :cond_0
    const/4 p6, 0x1

    if-ne p4, p6, :cond_1

    .line 5
    aget p0, p2, p3

    aput p0, p2, p7

    :goto_0
    move p4, p6

    goto :goto_1

    :cond_1
    const/4 p6, 0x4

    if-ne p4, p6, :cond_3

    .line 6
    aget p4, p2, p3

    cmpl-float p1, p4, p1

    if-lez p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    aput p0, p2, p3

    .line 8
    aput p0, p2, p5

    const/4 p4, 0x3

    :cond_3
    :goto_1
    return p4
.end method

.method private static CLIPCLAMP(II[IIIIIII)I
    .locals 1

    .line 9
    aget v0, p2, p3

    aput v0, p2, p7

    .line 10
    aget v0, p2, p4

    aput v0, p2, p8

    .line 11
    invoke-static/range {p0 .. p6}, Lsun/java2d/loops/ProcessPath;->TESTANDCLIP(II[IIIII)I

    move-result p4

    if-nez p4, :cond_0

    .line 12
    aget p0, p2, p3

    aput p0, p2, p7

    goto :goto_1

    :cond_0
    const/4 p6, 0x1

    if-ne p4, p6, :cond_1

    .line 13
    aget p0, p2, p3

    aput p0, p2, p7

    :goto_0
    move p4, p6

    goto :goto_1

    :cond_1
    const/4 p6, 0x4

    if-ne p4, p6, :cond_3

    .line 14
    aget p4, p2, p3

    if-le p4, p1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    aput p0, p2, p3

    .line 16
    aput p0, p2, p5

    const/4 p4, 0x3

    :cond_3
    :goto_1
    return p4
.end method

.method private static DrawMonotonicCubic(Lsun/java2d/loops/ProcessPath$ProcessHandler;[FZ[I)V
    .locals 30

    const/4 v0, 0x0

    aget v0, p1, v0

    const/high16 v1, 0x44800000    # 1024.0f

    mul-float v2, v0, v1

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v4, p1, v3

    mul-float v5, v4, v1

    float-to-int v5, v5

    const/4 v6, 0x6

    aget v7, p1, v6

    mul-float v8, v7, v1

    float-to-int v8, v8

    const/4 v9, 0x7

    aget v9, p1, v9

    mul-float/2addr v1, v9

    float-to-int v1, v1

    and-int/lit16 v10, v2, 0x3ff

    shl-int/2addr v10, v6

    and-int/lit16 v11, v5, 0x3ff

    shl-int/2addr v11, v6

    neg-float v12, v0

    const/4 v13, 0x2

    aget v13, p1, v13

    const/high16 v14, 0x40400000    # 3.0f

    mul-float v15, v13, v14

    add-float/2addr v12, v15

    const/4 v15, 0x4

    aget v15, p1, v15

    mul-float v16, v15, v14

    sub-float v12, v12, v16

    add-float/2addr v12, v7

    const/high16 v7, 0x43000000    # 128.0f

    mul-float/2addr v12, v7

    float-to-int v12, v12

    neg-float v6, v4

    const/16 v16, 0x3

    aget v16, p1, v16

    mul-float v18, v16, v14

    add-float v6, v6, v18

    const/16 v18, 0x5

    aget v18, p1, v18

    mul-float v19, v18, v14

    sub-float v6, v6, v19

    add-float/2addr v6, v9

    mul-float/2addr v6, v7

    float-to-int v6, v6

    mul-float v7, v0, v14

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float v19, v13, v9

    sub-float v7, v7, v19

    mul-float/2addr v15, v14

    add-float/2addr v7, v15

    const/high16 v15, 0x45000000    # 2048.0f

    mul-float/2addr v7, v15

    float-to-int v7, v7

    mul-float v19, v4, v14

    mul-float v9, v9, v16

    sub-float v19, v19, v9

    mul-float v18, v18, v14

    add-float v19, v19, v18

    mul-float v9, v19, v15

    float-to-int v9, v9

    const/high16 v15, -0x3fc00000    # -3.0f

    mul-float/2addr v0, v15

    mul-float/2addr v13, v14

    add-float/2addr v0, v13

    const/high16 v13, 0x46000000    # 8192.0f

    mul-float/2addr v0, v13

    float-to-int v0, v0

    mul-float/2addr v4, v15

    mul-float v16, v16, v14

    add-float v4, v4, v16

    mul-float/2addr v4, v13

    float-to-int v4, v4

    mul-int/lit8 v18, v12, 0x6

    mul-int/lit8 v19, v6, 0x6

    add-int v13, v18, v7

    add-int v14, v19, v9

    shr-int/2addr v7, v3

    add-int/2addr v12, v7

    add-int/2addr v12, v0

    shr-int/lit8 v0, v9, 0x1

    add-int/2addr v6, v0

    add-int/2addr v6, v4

    and-int/lit16 v0, v2, -0x400

    and-int/lit16 v4, v5, -0x400

    sub-int v7, v8, v2

    sub-int v20, v1, v5

    const v9, 0x8000

    const/high16 v15, 0x40000

    const/16 v16, 0x8

    move/from16 v22, v2

    move/from16 v23, v5

    const/4 v2, 0x6

    :goto_0
    if-lez v16, :cond_6

    :goto_1
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v15, :cond_5

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v15, :cond_0

    goto/16 :goto_3

    :cond_0
    move v5, v9

    move/from16 v21, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v29, v15

    :goto_2
    and-int/lit8 v9, v16, 0x1

    const/4 v15, 0x6

    if-nez v9, :cond_1

    if-le v2, v15, :cond_1

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v5, :cond_1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v5, :cond_1

    shr-int/lit8 v9, v25, 0x2

    shr-int/lit8 v10, v26, 0x3

    add-int v25, v9, v10

    shr-int/lit8 v6, v6, 0x2

    shr-int/lit8 v9, v27, 0x3

    add-int/2addr v6, v9

    add-int v26, v26, v18

    shr-int/lit8 v26, v26, 0x1

    add-int v27, v27, v19

    shr-int/lit8 v27, v27, 0x1

    shr-int/lit8 v16, v16, 0x1

    shr-int/lit8 v29, v29, 0x3

    shr-int/lit8 v5, v5, 0x3

    shr-int/lit8 v21, v21, 0x3

    shr-int/lit8 v24, v24, 0x3

    add-int/lit8 v2, v2, -0x3

    goto :goto_2

    :cond_1
    add-int/lit8 v17, v16, -0x1

    if-lez v17, :cond_4

    add-int v10, v21, v25

    add-int v11, v24, v6

    add-int v12, v25, v26

    add-int v6, v6, v27

    add-int v13, v26, v18

    add-int v14, v27, v19

    shr-int v9, v10, v2

    add-int/2addr v9, v0

    shr-int v16, v11, v2

    add-int v16, v4, v16

    sub-int v21, v8, v9

    xor-int v21, v21, v7

    if-gez v21, :cond_2

    move v9, v8

    :cond_2
    sub-int v21, v1, v16

    xor-int v21, v21, v20

    if-gez v21, :cond_3

    move/from16 v16, v1

    :cond_3
    const/16 v28, 0x0

    move-object/from16 v21, p0

    move/from16 v24, v9

    move/from16 v25, v16

    move-object/from16 v26, p3

    move/from16 v27, p2

    invoke-virtual/range {v21 .. v28}, Lsun/java2d/loops/ProcessPath$ProcessHandler;->processFixedLine(IIII[IZZ)V

    move/from16 v22, v9

    move/from16 v23, v16

    move/from16 v16, v17

    move/from16 v15, v29

    move v9, v5

    goto/16 :goto_0

    :cond_4
    const/16 v16, 0x0

    move-object/from16 v9, p0

    move/from16 v10, v22

    move/from16 v11, v23

    move v12, v8

    move v13, v1

    move-object/from16 v14, p3

    move/from16 v28, v15

    move/from16 v15, p2

    invoke-virtual/range {v9 .. v16}, Lsun/java2d/loops/ProcessPath$ProcessHandler;->processFixedLine(IIII[IZZ)V

    move v9, v5

    move/from16 v16, v17

    move/from16 v10, v21

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v15, v29

    goto/16 :goto_0

    :cond_5
    :goto_3
    const/16 v28, 0x6

    shl-int/lit8 v5, v13, 0x1

    sub-int v13, v5, v18

    shl-int/lit8 v5, v14, 0x1

    sub-int v14, v5, v19

    shl-int/lit8 v5, v12, 0x2

    shr-int/lit8 v12, v13, 0x1

    sub-int v12, v5, v12

    shl-int/lit8 v5, v6, 0x2

    shr-int/lit8 v6, v14, 0x1

    sub-int v6, v5, v6

    shl-int/lit8 v16, v16, 0x1

    shl-int/lit8 v15, v15, 0x3

    shl-int/lit8 v9, v9, 0x3

    shl-int/lit8 v10, v10, 0x3

    shl-int/lit8 v11, v11, 0x3

    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private static DrawMonotonicQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[FZ[I)V
    .locals 27

    const/4 v0, 0x0

    aget v0, p1, v0

    const/high16 v1, 0x44800000    # 1024.0f

    mul-float v2, v0, v1

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v4, p1, v3

    mul-float v5, v4, v1

    float-to-int v5, v5

    const/4 v6, 0x4

    aget v7, p1, v6

    mul-float v8, v7, v1

    float-to-int v12, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    mul-float/2addr v1, v8

    float-to-int v13, v1

    and-int/lit16 v1, v2, 0x3ff

    shl-int/2addr v1, v3

    and-int/lit16 v9, v5, 0x3ff

    shl-int/2addr v9, v3

    const/4 v10, 0x2

    aget v10, p1, v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v14, v10, v11

    sub-float v14, v0, v14

    add-float/2addr v14, v7

    const/high16 v7, 0x43000000    # 128.0f

    mul-float/2addr v14, v7

    float-to-int v14, v14

    const/4 v15, 0x3

    aget v15, p1, v15

    mul-float v16, v15, v11

    sub-float v16, v4, v16

    add-float v16, v16, v8

    mul-float v7, v7, v16

    float-to-int v7, v7

    const/high16 v8, -0x40000000    # -2.0f

    mul-float/2addr v0, v8

    mul-float/2addr v10, v11

    add-float/2addr v0, v10

    const/high16 v10, 0x44000000    # 512.0f

    mul-float/2addr v0, v10

    float-to-int v0, v0

    mul-float/2addr v4, v8

    mul-float/2addr v15, v11

    add-float/2addr v4, v15

    mul-float/2addr v4, v10

    float-to-int v4, v4

    mul-int/lit8 v8, v14, 0x2

    mul-int/lit8 v10, v7, 0x2

    add-int/2addr v0, v14

    add-int/2addr v4, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v15

    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    sub-int v15, v12, v2

    sub-int v16, v13, v5

    and-int/lit16 v6, v2, -0x400

    and-int/lit16 v3, v5, -0x400

    move/from16 v19, v2

    const/16 v17, 0x4

    const/16 v18, 0x1

    :goto_0
    const/16 v2, 0x2000

    if-le v11, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v14

    shl-int/lit8 v2, v4, 0x1

    sub-int v4, v2, v7

    shl-int/lit8 v17, v17, 0x1

    shr-int/lit8 v11, v11, 0x2

    shl-int/lit8 v1, v1, 0x2

    shl-int/lit8 v9, v9, 0x2

    add-int/lit8 v18, v18, 0x2

    goto :goto_0

    :cond_0
    move/from16 v21, v5

    move/from16 v2, v17

    move/from16 v20, v19

    :goto_1
    add-int/lit8 v17, v2, -0x1

    const/4 v5, 0x1

    if-le v2, v5, :cond_3

    add-int/2addr v1, v0

    add-int/2addr v9, v4

    add-int/2addr v0, v8

    add-int/2addr v4, v10

    shr-int v2, v1, v18

    add-int/2addr v2, v6

    shr-int v7, v9, v18

    add-int/2addr v7, v3

    sub-int v11, v12, v2

    xor-int/2addr v11, v15

    if-gez v11, :cond_1

    move v2, v12

    :cond_1
    sub-int v11, v13, v7

    xor-int v11, v11, v16

    if-gez v11, :cond_2

    move v7, v13

    :cond_2
    const/16 v26, 0x0

    move-object/from16 v19, p0

    move/from16 v22, v2

    move/from16 v23, v7

    move-object/from16 v24, p3

    move/from16 v25, p2

    invoke-virtual/range {v19 .. v26}, Lsun/java2d/loops/ProcessPath$ProcessHandler;->processFixedLine(IIII[IZZ)V

    move/from16 v20, v2

    move/from16 v21, v7

    move/from16 v2, v17

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    move-object/from16 v9, p0

    move/from16 v10, v20

    move/from16 v11, v21

    move-object/from16 v14, p3

    move/from16 v15, p2

    invoke-virtual/range {v9 .. v16}, Lsun/java2d/loops/ProcessPath$ProcessHandler;->processFixedLine(IIII[IZZ)V

    return-void
.end method

.method private static FillPolygon(Lsun/java2d/loops/ProcessPath$FillProcessHandler;I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v1, v1, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMax:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v3, v0, Lsun/java2d/loops/ProcessPath$FillProcessHandler;->fd:Lsun/java2d/loops/ProcessPath$FillData;

    iget v4, v3, Lsun/java2d/loops/ProcessPath$FillData;->plgYMin:I

    iget v5, v3, Lsun/java2d/loops/ProcessPath$FillData;->plgYMax:I

    sub-int v6, v5, v4

    shr-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x4

    sub-int/2addr v4, v2

    and-int/lit16 v4, v4, -0x400

    move/from16 v7, p1

    if-ne v7, v2, :cond_0

    const/4 v7, -0x1

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    iget-object v3, v3, Lsun/java2d/loops/ProcessPath$FillData;->plgPnts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v2, :cond_1

    return-void

    :cond_1
    new-array v9, v6, [Lsun/java2d/loops/ProcessPath$Point;

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lsun/java2d/loops/ProcessPath$Point;

    const/4 v12, 0x0

    iput-object v12, v11, Lsun/java2d/loops/ProcessPath$Point;->prev:Lsun/java2d/loops/ProcessPath$Point;

    move v11, v10

    :goto_1
    add-int/lit8 v13, v8, -0x1

    if-ge v11, v13, :cond_2

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lsun/java2d/loops/ProcessPath$Point;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lsun/java2d/loops/ProcessPath$Point;

    iget v15, v13, Lsun/java2d/loops/ProcessPath$Point;->y:I

    sub-int/2addr v15, v4

    sub-int/2addr v15, v2

    shr-int/lit8 v15, v15, 0xa

    aget-object v10, v9, v15

    iput-object v10, v13, Lsun/java2d/loops/ProcessPath$Point;->nextByY:Lsun/java2d/loops/ProcessPath$Point;

    aput-object v13, v9, v15

    iput-object v14, v13, Lsun/java2d/loops/ProcessPath$Point;->next:Lsun/java2d/loops/ProcessPath$Point;

    iput-object v13, v14, Lsun/java2d/loops/ProcessPath$Point;->prev:Lsun/java2d/loops/ProcessPath$Point;

    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/java2d/loops/ProcessPath$Point;

    iget v8, v3, Lsun/java2d/loops/ProcessPath$Point;->y:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v2

    shr-int/lit8 v8, v8, 0xa

    aget-object v10, v9, v8

    iput-object v10, v3, Lsun/java2d/loops/ProcessPath$Point;->nextByY:Lsun/java2d/loops/ProcessPath$Point;

    aput-object v3, v9, v8

    new-instance v3, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;

    invoke-direct {v3, v12}, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;-><init>(Lsun/java2d/loops/ProcessPath$1;)V

    add-int/lit16 v4, v4, 0x400

    const/4 v8, 0x0

    :goto_2
    if-gt v4, v5, :cond_e

    if-ge v8, v6, :cond_e

    aget-object v10, v9, v8

    :goto_3
    if-eqz v10, :cond_7

    iget-object v11, v10, Lsun/java2d/loops/ProcessPath$Point;->prev:Lsun/java2d/loops/ProcessPath$Point;

    if-eqz v11, :cond_4

    iget-boolean v13, v11, Lsun/java2d/loops/ProcessPath$Point;->lastPoint:Z

    if-nez v13, :cond_4

    iget-object v13, v11, Lsun/java2d/loops/ProcessPath$Point;->edge:Lsun/java2d/loops/ProcessPath$Edge;

    if-eqz v13, :cond_3

    iget v14, v11, Lsun/java2d/loops/ProcessPath$Point;->y:I

    if-gt v14, v4, :cond_3

    invoke-virtual {v3, v13}, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->delete(Lsun/java2d/loops/ProcessPath$Edge;)V

    iget-object v11, v10, Lsun/java2d/loops/ProcessPath$Point;->prev:Lsun/java2d/loops/ProcessPath$Point;

    iput-object v12, v11, Lsun/java2d/loops/ProcessPath$Point;->edge:Lsun/java2d/loops/ProcessPath$Edge;

    goto :goto_4

    :cond_3
    iget v13, v11, Lsun/java2d/loops/ProcessPath$Point;->y:I

    if-le v13, v4, :cond_4

    invoke-virtual {v3, v11, v4}, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->insert(Lsun/java2d/loops/ProcessPath$Point;I)V

    :cond_4
    :goto_4
    iget-boolean v11, v10, Lsun/java2d/loops/ProcessPath$Point;->lastPoint:Z

    if-nez v11, :cond_6

    iget-object v11, v10, Lsun/java2d/loops/ProcessPath$Point;->next:Lsun/java2d/loops/ProcessPath$Point;

    if-eqz v11, :cond_6

    iget-object v13, v10, Lsun/java2d/loops/ProcessPath$Point;->edge:Lsun/java2d/loops/ProcessPath$Edge;

    if-eqz v13, :cond_5

    iget v14, v11, Lsun/java2d/loops/ProcessPath$Point;->y:I

    if-gt v14, v4, :cond_5

    invoke-virtual {v3, v13}, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->delete(Lsun/java2d/loops/ProcessPath$Edge;)V

    iput-object v12, v10, Lsun/java2d/loops/ProcessPath$Point;->edge:Lsun/java2d/loops/ProcessPath$Edge;

    goto :goto_5

    :cond_5
    iget v11, v11, Lsun/java2d/loops/ProcessPath$Point;->y:I

    if-le v11, v4, :cond_6

    invoke-virtual {v3, v10, v4}, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->insert(Lsun/java2d/loops/ProcessPath$Point;I)V

    :cond_6
    :goto_5
    iget-object v10, v10, Lsun/java2d/loops/ProcessPath$Point;->nextByY:Lsun/java2d/loops/ProcessPath$Point;

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v3}, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->sort()V

    iget-object v10, v0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v10, v10, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMin:I

    iget-object v11, v3, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->head:Lsun/java2d/loops/ProcessPath$Edge;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_6
    if-eqz v11, :cond_c

    iget v15, v11, Lsun/java2d/loops/ProcessPath$Edge;->dir:I

    add-int/2addr v14, v15

    and-int v15, v14, v7

    if-eqz v15, :cond_9

    if-nez v13, :cond_9

    iget v10, v11, Lsun/java2d/loops/ProcessPath$Edge;->x:I

    add-int/lit16 v10, v10, 0x400

    sub-int/2addr v10, v2

    shr-int/lit8 v10, v10, 0xa

    move v13, v2

    :cond_9
    if-nez v15, :cond_b

    if-eqz v13, :cond_b

    iget v13, v11, Lsun/java2d/loops/ProcessPath$Edge;->x:I

    sub-int/2addr v13, v2

    shr-int/lit8 v13, v13, 0xa

    if-gt v10, v13, :cond_a

    iget-object v15, v0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    shr-int/lit8 v2, v4, 0xa

    invoke-virtual {v15, v10, v13, v2}, Lsun/java2d/loops/ProcessPath$DrawHandler;->drawScanline(III)V

    :cond_a
    const/4 v13, 0x0

    :cond_b
    iget v2, v11, Lsun/java2d/loops/ProcessPath$Edge;->x:I

    iget v15, v11, Lsun/java2d/loops/ProcessPath$Edge;->dx:I

    add-int/2addr v2, v15

    iput v2, v11, Lsun/java2d/loops/ProcessPath$Edge;->x:I

    iget-object v11, v11, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    const/4 v2, 0x1

    goto :goto_6

    :cond_c
    if-eqz v13, :cond_d

    if-gt v10, v1, :cond_d

    iget-object v2, v0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    shr-int/lit8 v11, v4, 0xa

    invoke-virtual {v2, v10, v1, v11}, Lsun/java2d/loops/ProcessPath$DrawHandler;->drawScanline(III)V

    :cond_d
    :goto_7
    add-int/lit16 v4, v4, 0x400

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_e
    return-void
.end method

.method private static IS_CLIPPED(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static ProcessCubic(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x4

    new-array v4, v3, [D

    const/4 v5, 0x3

    new-array v6, v5, [D

    const/4 v7, 0x2

    new-array v8, v7, [D

    const/4 v9, 0x0

    aget v10, v1, v9

    aget v11, v1, v7

    cmpl-float v12, v10, v11

    const-wide/16 v15, 0x0

    const/16 v17, 0x6

    const/high16 v18, 0x40000000    # 2.0f

    const/high16 v19, 0x40400000    # 3.0f

    const/16 v20, 0x1

    if-gtz v12, :cond_0

    aget v12, v1, v3

    cmpl-float v21, v11, v12

    if-gtz v21, :cond_0

    aget v21, v1, v17

    cmpl-float v12, v12, v21

    if-lez v12, :cond_1

    :cond_0
    cmpg-float v12, v10, v11

    if-ltz v12, :cond_2

    aget v12, v1, v3

    cmpg-float v21, v11, v12

    if-ltz v21, :cond_2

    aget v21, v1, v17

    cmpg-float v12, v12, v21

    if-gez v12, :cond_1

    goto :goto_0

    :cond_1
    move v11, v9

    goto :goto_2

    :cond_2
    :goto_0
    neg-float v12, v10

    mul-float v21, v11, v19

    add-float v12, v12, v21

    aget v3, v1, v3

    mul-float v21, v3, v19

    sub-float v12, v12, v21

    aget v17, v1, v17

    add-float v12, v12, v17

    float-to-double v13, v12

    aput-wide v13, v6, v7

    mul-float v12, v11, v18

    sub-float v12, v10, v12

    add-float/2addr v12, v3

    mul-float v12, v12, v18

    float-to-double v12, v12

    aput-wide v12, v6, v20

    neg-float v3, v10

    add-float/2addr v3, v11

    float-to-double v10, v3

    aput-wide v10, v6, v9

    invoke-static {v6, v8}, Ljava/awt/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v3

    move v10, v9

    move v11, v10

    :goto_1
    if-ge v10, v3, :cond_4

    aget-wide v12, v8, v10

    cmpl-double v14, v12, v15

    if-lez v14, :cond_3

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v12, v21

    if-gez v14, :cond_3

    add-int/lit8 v14, v11, 0x1

    aput-wide v12, v4, v11

    move v11, v14

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    aget v3, v1, v20

    aget v5, v1, v5

    cmpl-float v10, v3, v5

    const/4 v12, 0x7

    const/4 v13, 0x5

    if-gtz v10, :cond_5

    aget v10, v1, v13

    cmpl-float v14, v5, v10

    if-gtz v14, :cond_5

    aget v14, v1, v12

    cmpl-float v10, v10, v14

    if-lez v10, :cond_8

    :cond_5
    cmpg-float v10, v3, v5

    if-ltz v10, :cond_6

    aget v10, v1, v13

    cmpg-float v14, v5, v10

    if-ltz v14, :cond_6

    aget v14, v1, v12

    cmpg-float v10, v10, v14

    if-gez v10, :cond_8

    :cond_6
    neg-float v10, v3

    mul-float v14, v5, v19

    add-float/2addr v10, v14

    aget v13, v1, v13

    mul-float v19, v19, v13

    sub-float v10, v10, v19

    aget v12, v1, v12

    add-float/2addr v10, v12

    float-to-double v9, v10

    aput-wide v9, v6, v7

    mul-float v7, v5, v18

    sub-float v7, v3, v7

    add-float/2addr v7, v13

    mul-float v7, v7, v18

    float-to-double v9, v7

    aput-wide v9, v6, v20

    neg-float v3, v3

    add-float/2addr v3, v5

    float-to-double v9, v3

    const/4 v3, 0x0

    aput-wide v9, v6, v3

    invoke-static {v6, v8}, Ljava/awt/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_8

    aget-wide v6, v8, v5

    cmpl-double v9, v6, v15

    if-lez v9, :cond_7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, v6, v9

    if-gez v13, :cond_7

    add-int/lit8 v9, v11, 0x1

    aput-wide v6, v4, v11

    move v11, v9

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    if-lez v11, :cond_a

    const/4 v3, 0x0

    invoke-static {v4, v3, v11}, Ljava/util/Arrays;->sort([DII)V

    aget-wide v5, v4, v3

    double-to-float v3, v5

    invoke-static {v0, v1, v2, v3}, Lsun/java2d/loops/ProcessPath;->ProcessFirstMonotonicPartOfCubic(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[IF)V

    move/from16 v3, v20

    :goto_4
    if-ge v3, v11, :cond_a

    aget-wide v5, v4, v3

    add-int/lit8 v7, v3, -0x1

    aget-wide v7, v4, v7

    sub-double/2addr v5, v7

    cmpl-double v9, v5, v15

    if-lez v9, :cond_9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v13, v9, v7

    div-double/2addr v5, v13

    double-to-float v5, v5

    invoke-static {v0, v1, v2, v5}, Lsun/java2d/loops/ProcessPath;->ProcessFirstMonotonicPartOfCubic(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[IF)V

    goto :goto_5

    :cond_9
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    invoke-static/range {p0 .. p2}, Lsun/java2d/loops/ProcessPath;->ProcessMonotonicCubic(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V

    return-void
.end method

.method private static ProcessFirstMonotonicPartOfCubic(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[IF)V
    .locals 14

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    aput v3, v0, v2

    const/4 v3, 0x2

    aget v4, p1, v3

    const/4 v5, 0x4

    aget v6, p1, v5

    sub-float/2addr v6, v4

    mul-float v6, v6, p3

    add-float/2addr v6, v4

    const/4 v7, 0x3

    aget v8, p1, v7

    const/4 v9, 0x5

    aget v10, p1, v9

    sub-float/2addr v10, v8

    mul-float v10, v10, p3

    add-float/2addr v10, v8

    aget v11, p1, v1

    sub-float/2addr v4, v11

    mul-float v4, v4, p3

    add-float/2addr v11, v4

    aput v11, v0, v3

    aget v4, p1, v2

    sub-float/2addr v8, v4

    mul-float v8, v8, p3

    add-float/2addr v4, v8

    aput v4, v0, v7

    sub-float v8, v6, v11

    mul-float v8, v8, p3

    add-float/2addr v11, v8

    aput v11, v0, v5

    sub-float v8, v10, v4

    mul-float v8, v8, p3

    add-float/2addr v4, v8

    aput v4, v0, v9

    aget v4, p1, v5

    const/4 v8, 0x6

    aget v11, p1, v8

    sub-float/2addr v11, v4

    mul-float v11, v11, p3

    add-float/2addr v4, v11

    aput v4, p1, v5

    aget v11, p1, v9

    const/4 v12, 0x7

    aget v13, p1, v12

    sub-float/2addr v13, v11

    mul-float v13, v13, p3

    add-float/2addr v11, v13

    aput v11, p1, v9

    sub-float/2addr v4, v6

    mul-float v4, v4, p3

    add-float/2addr v6, v4

    aput v6, p1, v3

    sub-float/2addr v11, v10

    mul-float v3, p3, v11

    add-float/2addr v10, v3

    aput v10, p1, v7

    aget v3, v0, v5

    sub-float/2addr v6, v3

    mul-float v4, p3, v6

    add-float/2addr v3, v4

    aput v3, v0, v8

    aput v3, p1, v1

    aget v1, v0, v9

    sub-float/2addr v10, v1

    mul-float v3, p3, v10

    add-float/2addr v1, v3

    aput v1, v0, v12

    aput v1, p1, v2

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-static {p0, v0, v2}, Lsun/java2d/loops/ProcessPath;->ProcessMonotonicCubic(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V

    return-void
.end method

.method private static ProcessFirstMonotonicPartOfQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[IF)V
    .locals 10

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    aput v3, v0, v2

    aget v3, p1, v1

    const/4 v4, 0x2

    aget v5, p1, v4

    sub-float/2addr v5, v3

    mul-float/2addr v5, p3

    add-float/2addr v3, v5

    aput v3, v0, v4

    aget v3, p1, v2

    const/4 v5, 0x3

    aget v6, p1, v5

    sub-float/2addr v6, v3

    mul-float/2addr v6, p3

    add-float/2addr v3, v6

    aput v3, v0, v5

    aget v3, p1, v4

    const/4 v6, 0x4

    aget v7, p1, v6

    sub-float/2addr v7, v3

    mul-float/2addr v7, p3

    add-float/2addr v3, v7

    aput v3, p1, v4

    aget v7, p1, v5

    const/4 v8, 0x5

    aget v9, p1, v8

    sub-float/2addr v9, v7

    mul-float/2addr v9, p3

    add-float/2addr v7, v9

    aput v7, p1, v5

    aget v4, v0, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, p3

    add-float/2addr v4, v3

    aput v4, v0, v6

    aput v4, p1, v1

    aget v1, v0, v5

    sub-float/2addr v7, v1

    mul-float/2addr p3, v7

    add-float/2addr v1, p3

    aput v1, v0, v8

    aput v1, p1, v2

    invoke-static {p0, v0, p2}, Lsun/java2d/loops/ProcessPath;->ProcessMonotonicQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V

    return-void
.end method

.method private static ProcessLine(Lsun/java2d/loops/ProcessPath$ProcessHandler;FFFF[I)V
    .locals 27

    move-object/from16 v8, p0

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/16 v18, 0x0

    aput p1, v0, v18

    const/4 v15, 0x1

    aput p2, v0, v15

    const/16 v19, 0x2

    aput p3, v0, v19

    const/16 v20, 0x3

    aput p4, v0, v20

    const/4 v14, 0x4

    const/4 v1, 0x0

    aput v1, v0, v14

    const/16 v21, 0x5

    aput v1, v0, v21

    iget-object v1, v8, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v13, v1, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMinf:F

    iget v9, v1, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMinf:F

    iget v12, v1, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMaxf:F

    iget v10, v1, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMaxf:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    move v1, v9

    move v2, v10

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lsun/java2d/loops/ProcessPath;->TESTANDCLIP(FF[FIIII)I

    move-result v1

    if-ne v1, v14, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Lsun/java2d/loops/ProcessPath;->IS_CLIPPED(I)Z

    move-result v11

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v1, v9

    move v2, v10

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lsun/java2d/loops/ProcessPath;->TESTANDCLIP(FF[FIIII)I

    move-result v1

    if-ne v1, v14, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Lsun/java2d/loops/ProcessPath;->IS_CLIPPED(I)Z

    move-result v22

    if-nez v11, :cond_3

    if-eqz v22, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v9, v18

    goto :goto_1

    :cond_3
    :goto_0
    move v9, v15

    :goto_1
    iget v1, v8, Lsun/java2d/loops/ProcessPath$ProcessHandler;->clipMode:I

    const/high16 v23, 0x44800000    # 1024.0f

    if-nez v1, :cond_c

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    move v1, v13

    move v2, v12

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lsun/java2d/loops/ProcessPath;->TESTANDCLIP(FF[FIIII)I

    move-result v1

    if-ne v1, v14, :cond_4

    return-void

    :cond_4
    if-nez v9, :cond_6

    invoke-static {v1}, Lsun/java2d/loops/ProcessPath;->IS_CLIPPED(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v9, v18

    goto :goto_3

    :cond_6
    :goto_2
    move v9, v15

    :goto_3
    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v1, v13

    move v2, v12

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lsun/java2d/loops/ProcessPath;->TESTANDCLIP(FF[FIIII)I

    move-result v1

    if-ne v1, v14, :cond_7

    return-void

    :cond_7
    if-nez v22, :cond_9

    invoke-static {v1}, Lsun/java2d/loops/ProcessPath;->IS_CLIPPED(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v7, v18

    goto :goto_5

    :cond_9
    :goto_4
    move v7, v15

    :goto_5
    if-nez v9, :cond_b

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v6, v18

    goto :goto_7

    :cond_b
    :goto_6
    move v6, v15

    :goto_7
    aget v1, v0, v18

    mul-float v1, v1, v23

    float-to-int v1, v1

    aget v2, v0, v15

    mul-float v2, v2, v23

    float-to-int v2, v2

    aget v3, v0, v19

    mul-float v3, v3, v23

    float-to-int v3, v3

    aget v0, v0, v20

    mul-float v0, v0, v23

    float-to-int v4, v0

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Lsun/java2d/loops/ProcessPath$ProcessHandler;->processFixedLine(IIII[IZZ)V

    goto/16 :goto_9

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/16 v16, 0x4

    const/16 v17, 0x5

    move v9, v13

    move v10, v12

    move-object v11, v0

    move/from16 v24, v12

    move v12, v1

    move/from16 v25, v13

    move v13, v2

    move v7, v14

    move v14, v3

    move v6, v15

    move v15, v4

    invoke-static/range {v9 .. v17}, Lsun/java2d/loops/ProcessPath;->CLIPCLAMP(FF[FIIIIII)I

    move-result v1

    aget v2, v0, v18

    mul-float v2, v2, v23

    float-to-int v15, v2

    aget v2, v0, v6

    mul-float v2, v2, v23

    float-to-int v14, v2

    if-nez v1, :cond_d

    aget v1, v0, v7

    mul-float v1, v1, v23

    float-to-int v1, v1

    aget v2, v0, v21

    mul-float v2, v2, v23

    float-to-int v2, v2

    const/4 v9, 0x0

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move v3, v15

    move v4, v14

    move-object/from16 v5, p5

    move v13, v6

    move v6, v9

    move v12, v7

    move/from16 v7, v22

    invoke-virtual/range {v0 .. v7}, Lsun/java2d/loops/ProcessPath$ProcessHandler;->processFixedLine(IIII[IZZ)V

    goto :goto_8

    :cond_d
    move-object/from16 v26, v0

    move v13, v6

    move v12, v7

    if-ne v1, v12, :cond_e

    return-void

    :cond_e
    :goto_8
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x5

    move/from16 v9, v25

    move/from16 v10, v24

    move-object/from16 v11, v26

    move/from16 v24, v12

    move v12, v0

    move v0, v13

    move v13, v1

    move v4, v14

    move v14, v2

    move v1, v15

    move v15, v3

    invoke-static/range {v9 .. v17}, Lsun/java2d/loops/ProcessPath;->CLIPCLAMP(FF[FIIIIII)I

    move-result v9

    if-nez v22, :cond_f

    if-ne v9, v0, :cond_10

    :cond_f
    move/from16 v18, v0

    :cond_10
    aget v0, v26, v19

    mul-float v0, v0, v23

    float-to-int v10, v0

    aget v0, v26, v20

    mul-float v0, v0, v23

    float-to-int v11, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v2, v4

    move v3, v10

    move v4, v11

    move-object/from16 v5, p5

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lsun/java2d/loops/ProcessPath$ProcessHandler;->processFixedLine(IIII[IZZ)V

    if-nez v9, :cond_11

    aget v0, v26, v24

    mul-float v0, v0, v23

    float-to-int v3, v0

    aget v0, v26, v21

    mul-float v0, v0, v23

    float-to-int v4, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-object/from16 v5, p5

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lsun/java2d/loops/ProcessPath$ProcessHandler;->processFixedLine(IIII[IZZ)V

    :cond_11
    :goto_9
    return-void
.end method

.method private static ProcessMonotonicCubic(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v5, 0x0

    aget v6, v1, v5

    const/4 v7, 0x1

    aget v8, v1, v7

    const/4 v9, 0x2

    move v10, v8

    move v11, v10

    move v12, v9

    move v8, v6

    :goto_0
    if-ge v12, v3, :cond_4

    aget v13, v1, v12

    cmpl-float v14, v6, v13

    if-lez v14, :cond_0

    move v6, v13

    :cond_0
    cmpg-float v14, v8, v13

    if-gez v14, :cond_1

    move v8, v13

    :cond_1
    add-int/lit8 v13, v12, 0x1

    aget v13, v1, v13

    cmpl-float v14, v10, v13

    if-lez v14, :cond_2

    move v10, v13

    :cond_2
    cmpg-float v14, v11, v13

    if-gez v14, :cond_3

    move v11, v13

    :cond_3
    add-int/lit8 v12, v12, 0x2

    goto :goto_0

    :cond_4
    iget v3, v0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->clipMode:I

    const/4 v12, 0x6

    const/4 v13, 0x4

    if-nez v3, :cond_6

    iget-object v3, v0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v14, v3, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMaxf:F

    cmpg-float v14, v14, v6

    if-ltz v14, :cond_5

    iget v14, v3, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMinf:F

    cmpl-float v14, v14, v8

    if-gtz v14, :cond_5

    iget v14, v3, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMaxf:F

    cmpg-float v14, v14, v10

    if-ltz v14, :cond_5

    iget v3, v3, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMinf:F

    cmpl-float v3, v3, v11

    if-lez v3, :cond_8

    :cond_5
    return-void

    :cond_6
    iget-object v3, v0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v14, v3, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMaxf:F

    cmpg-float v14, v14, v10

    if-ltz v14, :cond_d

    iget v14, v3, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMinf:F

    cmpl-float v14, v14, v11

    if-gtz v14, :cond_d

    iget v14, v3, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMaxf:F

    cmpg-float v14, v14, v6

    if-gez v14, :cond_7

    goto/16 :goto_2

    :cond_7
    iget v3, v3, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMinf:F

    cmpl-float v14, v3, v8

    if-lez v14, :cond_8

    aput v3, v1, v12

    aput v3, v1, v13

    aput v3, v1, v9

    aput v3, v1, v5

    :cond_8
    sub-float v3, v8, v6

    const/high16 v14, 0x43800000    # 256.0f

    cmpl-float v3, v3, v14

    if-gtz v3, :cond_c

    sub-float v3, v11, v10

    cmpl-float v3, v3, v14

    if-lez v3, :cond_9

    goto :goto_1

    :cond_9
    iget-object v3, v0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v4, v3, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMinf:F

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_a

    iget v4, v3, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMaxf:F

    cmpg-float v4, v4, v8

    if-ltz v4, :cond_a

    iget v4, v3, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMinf:F

    cmpl-float v4, v4, v10

    if-gtz v4, :cond_a

    iget v3, v3, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMaxf:F

    cmpg-float v3, v3, v11

    if-gez v3, :cond_b

    :cond_a
    move v5, v7

    :cond_b
    invoke-static {v0, v1, v5, v2}, Lsun/java2d/loops/ProcessPath;->DrawMonotonicCubic(Lsun/java2d/loops/ProcessPath$ProcessHandler;[FZ[I)V

    goto :goto_2

    :cond_c
    :goto_1
    aget v3, v1, v12

    aput v3, v4, v12

    const/4 v3, 0x7

    aget v6, v1, v3

    aput v6, v4, v3

    aget v6, v1, v13

    aget v8, v1, v12

    add-float/2addr v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    aput v6, v4, v13

    const/4 v10, 0x5

    aget v11, v1, v10

    aget v14, v1, v3

    add-float/2addr v11, v14

    div-float/2addr v11, v8

    aput v11, v4, v10

    aget v14, v1, v9

    aget v15, v1, v13

    add-float/2addr v14, v15

    div-float/2addr v14, v8

    const/4 v15, 0x3

    aget v16, v1, v15

    aget v17, v1, v10

    add-float v16, v16, v17

    div-float v16, v16, v8

    add-float/2addr v6, v14

    div-float/2addr v6, v8

    aput v6, v4, v9

    add-float v11, v16, v11

    div-float/2addr v11, v8

    aput v11, v4, v15

    aget v6, v1, v5

    aget v11, v1, v9

    add-float/2addr v6, v11

    div-float/2addr v6, v8

    aput v6, v1, v9

    aget v11, v1, v7

    aget v17, v1, v15

    add-float v11, v11, v17

    div-float/2addr v11, v8

    aput v11, v1, v15

    add-float/2addr v6, v14

    div-float/2addr v6, v8

    aput v6, v1, v13

    add-float v11, v11, v16

    div-float/2addr v11, v8

    aput v11, v1, v10

    aget v9, v4, v9

    add-float/2addr v6, v9

    div-float/2addr v6, v8

    aput v6, v4, v5

    aput v6, v1, v12

    aget v5, v4, v15

    add-float/2addr v11, v5

    div-float/2addr v11, v8

    aput v11, v4, v7

    aput v11, v1, v3

    invoke-static/range {p0 .. p2}, Lsun/java2d/loops/ProcessPath;->ProcessMonotonicCubic(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V

    invoke-static {v0, v4, v2}, Lsun/java2d/loops/ProcessPath;->ProcessMonotonicCubic(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V

    :cond_d
    :goto_2
    return-void
.end method

.method private static ProcessMonotonicQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V
    .locals 12

    const/4 v0, 0x6

    new-array v1, v0, [F

    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v4, 0x1

    aget v5, p1, v4

    const/4 v6, 0x2

    move v7, v5

    move v8, v7

    move v9, v6

    move v5, v3

    :goto_0
    if-ge v9, v0, :cond_4

    aget v10, p1, v9

    cmpl-float v11, v3, v10

    if-lez v11, :cond_0

    move v3, v10

    :cond_0
    cmpg-float v11, v5, v10

    if-gez v11, :cond_1

    move v5, v10

    :cond_1
    add-int/lit8 v10, v9, 0x1

    aget v10, p1, v10

    cmpl-float v11, v7, v10

    if-lez v11, :cond_2

    move v7, v10

    :cond_2
    cmpg-float v11, v8, v10

    if-gez v11, :cond_3

    move v8, v10

    :cond_3
    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    :cond_4
    iget v0, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->clipMode:I

    const/4 v9, 0x4

    if-nez v0, :cond_6

    iget-object v0, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v10, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMaxf:F

    cmpg-float v10, v10, v3

    if-ltz v10, :cond_5

    iget v10, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMinf:F

    cmpl-float v10, v10, v5

    if-gtz v10, :cond_5

    iget v10, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMaxf:F

    cmpg-float v10, v10, v7

    if-ltz v10, :cond_5

    iget v0, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMinf:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_8

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v10, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMaxf:F

    cmpg-float v10, v10, v7

    if-ltz v10, :cond_d

    iget v10, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMinf:F

    cmpl-float v10, v10, v8

    if-gtz v10, :cond_d

    iget v10, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMaxf:F

    cmpg-float v10, v10, v3

    if-gez v10, :cond_7

    goto/16 :goto_2

    :cond_7
    iget v0, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMinf:F

    cmpl-float v10, v0, v5

    if-lez v10, :cond_8

    aput v0, p1, v9

    aput v0, p1, v6

    aput v0, p1, v2

    :cond_8
    sub-float v0, v5, v3

    const/high16 v10, 0x44800000    # 1024.0f

    cmpl-float v0, v0, v10

    if-gtz v0, :cond_c

    sub-float v0, v8, v7

    cmpl-float v0, v0, v10

    if-lez v0, :cond_9

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v1, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMinf:F

    cmpl-float v1, v1, v3

    if-gez v1, :cond_a

    iget v1, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->xMaxf:F

    cmpg-float v1, v1, v5

    if-lez v1, :cond_a

    iget v1, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMinf:F

    cmpl-float v1, v1, v7

    if-gez v1, :cond_a

    iget v0, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->yMaxf:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_b

    :cond_a
    move v2, v4

    :cond_b
    invoke-static {p0, p1, v2, p2}, Lsun/java2d/loops/ProcessPath;->DrawMonotonicQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[FZ[I)V

    goto :goto_2

    :cond_c
    :goto_1
    aget v0, p1, v9

    aput v0, v1, v9

    const/4 v0, 0x5

    aget v3, p1, v0

    aput v3, v1, v0

    aget v3, p1, v6

    aget v5, p1, v9

    add-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    aput v3, v1, v6

    const/4 v3, 0x3

    aget v7, p1, v3

    aget v8, p1, v0

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    aput v7, v1, v3

    aget v7, p1, v2

    aget v8, p1, v6

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    aput v7, p1, v6

    aget v8, p1, v4

    aget v10, p1, v3

    add-float/2addr v8, v10

    div-float/2addr v8, v5

    aput v8, p1, v3

    aget v6, v1, v6

    add-float/2addr v7, v6

    div-float/2addr v7, v5

    aput v7, v1, v2

    aput v7, p1, v9

    aget v2, v1, v3

    add-float/2addr v8, v2

    div-float/2addr v8, v5

    aput v8, v1, v4

    aput v8, p1, v0

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/ProcessPath;->ProcessMonotonicQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V

    invoke-static {p0, v1, p2}, Lsun/java2d/loops/ProcessPath;->ProcessMonotonicQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V

    :cond_d
    :goto_2
    return-void
.end method

.method private static ProcessQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    new-array v4, v3, [D

    const/4 v5, 0x0

    aget v6, v1, v5

    aget v7, v1, v3

    cmpl-float v8, v6, v7

    const/high16 v9, 0x40000000    # 2.0f

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x4

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    if-gtz v8, :cond_1

    aget v8, v1, v12

    cmpl-float v8, v7, v8

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v4

    goto :goto_1

    :cond_1
    :goto_0
    cmpg-float v8, v6, v7

    if-ltz v8, :cond_2

    aget v8, v1, v12

    cmpg-float v8, v7, v8

    if-gez v8, :cond_0

    :cond_2
    mul-float v8, v7, v9

    sub-float v8, v6, v8

    aget v12, v1, v12

    add-float/2addr v8, v12

    move-object/from16 v16, v4

    float-to-double v3, v8

    cmpl-double v8, v3, v13

    if-eqz v8, :cond_3

    sub-float/2addr v6, v7

    float-to-double v6, v6

    div-double/2addr v6, v3

    cmpg-double v3, v6, v10

    if-gez v3, :cond_3

    cmpl-double v3, v6, v13

    if-lez v3, :cond_3

    aput-wide v6, v16, v5

    move v3, v15

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v5

    :goto_2
    aget v4, v1, v15

    const/4 v6, 0x3

    aget v6, v1, v6

    cmpl-float v7, v4, v6

    const/4 v8, 0x5

    if-gtz v7, :cond_4

    aget v7, v1, v8

    cmpl-float v7, v6, v7

    if-lez v7, :cond_8

    :cond_4
    cmpg-float v7, v4, v6

    if-ltz v7, :cond_5

    aget v7, v1, v8

    cmpg-float v7, v6, v7

    if-gez v7, :cond_8

    :cond_5
    mul-float/2addr v9, v6

    sub-float v7, v4, v9

    aget v8, v1, v8

    add-float/2addr v7, v8

    float-to-double v7, v7

    cmpl-double v9, v7, v13

    if-eqz v9, :cond_8

    sub-float/2addr v4, v6

    float-to-double v5, v4

    div-double/2addr v5, v7

    cmpg-double v4, v5, v10

    if-gez v4, :cond_8

    cmpl-double v4, v5, v13

    if-lez v4, :cond_8

    if-lez v3, :cond_7

    const/4 v4, 0x0

    aget-wide v7, v16, v4

    cmpl-double v9, v7, v5

    if-lez v9, :cond_6

    add-int/lit8 v17, v3, 0x1

    aput-wide v7, v16, v3

    aput-wide v5, v16, v4

    move/from16 v3, v17

    goto :goto_4

    :cond_6
    cmpg-double v4, v7, v5

    if-gez v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    aput-wide v5, v16, v3

    goto :goto_3

    :cond_7
    add-int/lit8 v4, v3, 0x1

    aput-wide v5, v16, v3

    :goto_3
    move v3, v4

    :cond_8
    :goto_4
    if-eq v3, v15, :cond_a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    aget-wide v4, v16, v3

    double-to-float v4, v4

    invoke-static {v0, v1, v2, v4}, Lsun/java2d/loops/ProcessPath;->ProcessFirstMonotonicPartOfQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[IF)V

    aget-wide v4, v16, v15

    aget-wide v6, v16, v3

    sub-double/2addr v4, v6

    cmpl-double v3, v4, v13

    if-lez v3, :cond_b

    sub-double/2addr v10, v6

    div-double/2addr v4, v10

    double-to-float v3, v4

    invoke-static {v0, v1, v2, v3}, Lsun/java2d/loops/ProcessPath;->ProcessFirstMonotonicPartOfQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[IF)V

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    aget-wide v3, v16, v3

    double-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lsun/java2d/loops/ProcessPath;->ProcessFirstMonotonicPartOfQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[IF)V

    :cond_b
    :goto_5
    invoke-static/range {p0 .. p2}, Lsun/java2d/loops/ProcessPath;->ProcessMonotonicQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V

    return-void
.end method

.method private static TESTANDCLIP(FF[FIIII)I
    .locals 7

    .line 1
    aget v0, p2, p3

    cmpg-float v1, v0, p0

    if-ltz v1, :cond_1

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    goto :goto_2

    :cond_1
    :goto_0
    cmpg-float v1, v0, p0

    const/4 v2, 0x4

    if-gez v1, :cond_3

    .line 2
    aget p1, p2, p5

    cmpg-float p1, p1, p0

    if-gez p1, :cond_2

    return v2

    :cond_2
    float-to-double p0, p0

    const/4 v1, 0x0

    goto :goto_1

    .line 3
    :cond_3
    aget p0, p2, p5

    cmpl-float p0, p0, p1

    if-lez p0, :cond_4

    return v2

    :cond_4
    float-to-double p0, p1

    const/4 v1, 0x1

    :goto_1
    move v6, v1

    .line 4
    aget v1, p2, p4

    aget v2, p2, p5

    aget v3, p2, p6

    move-wide v4, p0

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/ProcessPath;->CLIP(FFFFD)F

    move-result p5

    aput p5, p2, p4

    double-to-float p0, p0

    .line 5
    aput p0, p2, p3

    move p0, v6

    :goto_2
    return p0
.end method

.method private static TESTANDCLIP(II[IIIII)I
    .locals 7

    .line 6
    aget v0, p2, p3

    if-lt v0, p0, :cond_1

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x4

    if-ge v0, p0, :cond_3

    .line 7
    aget p1, p2, p5

    if-ge p1, p0, :cond_2

    return v1

    :cond_2
    int-to-double p0, p0

    const/4 v1, 0x0

    goto :goto_1

    .line 8
    :cond_3
    aget p0, p2, p5

    if-le p0, p1, :cond_4

    return v1

    :cond_4
    int-to-double p0, p1

    const/4 v1, 0x1

    :goto_1
    move v6, v1

    .line 9
    aget v1, p2, p4

    aget v2, p2, p5

    aget v3, p2, p6

    move-wide v4, p0

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/ProcessPath;->CLIP(IIIID)I

    move-result p5

    aput p5, p2, p4

    double-to-int p0, p0

    .line 10
    aput p0, p2, p3

    move p0, v6

    :goto_2
    return p0
.end method

.method public static synthetic access$100(II[IIIII)I
    .locals 0

    invoke-static/range {p0 .. p6}, Lsun/java2d/loops/ProcessPath;->TESTANDCLIP(II[IIIII)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(I)Z
    .locals 0

    invoke-static {p0}, Lsun/java2d/loops/ProcessPath;->IS_CLIPPED(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(II[IIIIIII)I
    .locals 0

    invoke-static/range {p0 .. p8}, Lsun/java2d/loops/ProcessPath;->CLIPCLAMP(II[IIIIIII)I

    move-result p0

    return p0
.end method

.method private static doProcessPath(Lsun/java2d/loops/ProcessPath$ProcessHandler;Ljava/awt/geom/Path2D$Float;FF)Z
    .locals 24

    move-object/from16 v6, p0

    const/16 v0, 0x8

    new-array v7, v0, [F

    new-array v8, v0, [F

    const/4 v9, 0x2

    new-array v10, v9, [F

    fill-array-data v10, :array_0

    const/4 v11, 0x5

    new-array v12, v11, [I

    const/4 v13, 0x0

    aput v13, v12, v13

    iget-object v0, v6, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    const/high16 v1, -0x100000

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v1, v2, v2}, Lsun/java2d/loops/ProcessPath$DrawHandler;->adjustBounds(IIII)V

    iget-object v0, v6, Lsun/java2d/loops/ProcessPath$ProcessHandler;->dhnd:Lsun/java2d/loops/ProcessPath$DrawHandler;

    iget v0, v0, Lsun/java2d/loops/ProcessPath$DrawHandler;->strokeControl:I

    const/4 v14, 0x1

    if-ne v0, v9, :cond_0

    const/high16 v0, -0x41000000    # -0.5f

    aput v0, v10, v13

    aput v0, v10, v14

    move/from16 v0, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    double-to-float v0, v0

    move/from16 v1, p3

    float-to-double v4, v1

    sub-double/2addr v4, v2

    double-to-float v1, v4

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    move/from16 v1, p3

    :goto_0
    move v15, v0

    move/from16 v16, v1

    const/4 v0, 0x0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/awt/geom/Path2D$Float;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v5

    move/from16 v17, v13

    move/from16 v18, v17

    :goto_1
    invoke-interface {v5}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {v5, v7}, Ljava/awt/geom/PathIterator;->currentSegment([F)I

    move-result v0

    const v19, -0x1800001

    const v20, 0x7e7fffff

    if-eqz v0, :cond_d

    const/4 v1, 0x3

    if-eq v0, v14, :cond_b

    const/4 v2, 0x4

    if-eq v0, v9, :cond_8

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_2

    :cond_1
    move-object/from16 v21, v5

    goto/16 :goto_8

    :cond_2
    if-eqz v17, :cond_1

    if-nez v18, :cond_1

    aget v1, v8, v13

    aget v3, v10, v13

    cmpl-float v0, v1, v3

    if-nez v0, :cond_4

    aget v0, v8, v14

    aget v2, v10, v14

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v21, v5

    goto :goto_3

    :cond_4
    :goto_2
    aget v2, v8, v14

    aget v4, v10, v14

    move-object/from16 v0, p0

    move-object/from16 v21, v5

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/ProcessPath;->ProcessLine(Lsun/java2d/loops/ProcessPath$ProcessHandler;FFFF[I)V

    aget v0, v10, v13

    aput v0, v8, v13

    aget v0, v10, v14

    aput v0, v8, v14

    :goto_3
    invoke-interface/range {p0 .. p0}, Lsun/java2d/loops/ProcessPath$EndSubPathHandler;->processEndSubPath()V

    move/from16 v18, v13

    goto/16 :goto_8

    :cond_5
    move-object/from16 v21, v5

    aget v0, v7, v13

    add-float/2addr v0, v15

    aput v0, v8, v9

    aget v3, v7, v14

    add-float v3, v3, v16

    aput v3, v8, v1

    aget v4, v7, v9

    add-float/2addr v4, v15

    aput v4, v8, v2

    aget v1, v7, v1

    add-float v1, v1, v16

    aput v1, v8, v11

    aget v2, v7, v2

    add-float v22, v2, v15

    const/4 v2, 0x6

    aput v22, v8, v2

    aget v2, v7, v11

    add-float v23, v2, v16

    const/4 v2, 0x7

    aput v23, v8, v2

    cmpg-float v2, v22, v20

    if-gez v2, :cond_12

    cmpl-float v2, v22, v19

    if-lez v2, :cond_12

    cmpg-float v2, v23, v20

    if-gez v2, :cond_12

    cmpl-float v2, v23, v19

    if-lez v2, :cond_12

    if-eqz v18, :cond_6

    aput v22, v10, v13

    aput v22, v8, v13

    aput v23, v10, v14

    aput v23, v8, v14

    goto/16 :goto_6

    :cond_6
    cmpg-float v2, v0, v20

    if-gez v2, :cond_7

    cmpl-float v0, v0, v19

    if-lez v0, :cond_7

    cmpg-float v0, v3, v20

    if-gez v0, :cond_7

    cmpl-float v0, v3, v19

    if-lez v0, :cond_7

    cmpg-float v0, v4, v20

    if-gez v0, :cond_7

    cmpl-float v0, v4, v19

    if-lez v0, :cond_7

    cmpg-float v0, v1, v20

    if-gez v0, :cond_7

    cmpl-float v0, v1, v19

    if-lez v0, :cond_7

    invoke-static {v6, v8, v12}, Lsun/java2d/loops/ProcessPath;->ProcessCubic(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V

    goto :goto_4

    :cond_7
    aget v1, v8, v13

    aget v2, v8, v14

    move-object/from16 v0, p0

    move/from16 v3, v22

    move/from16 v4, v23

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/ProcessPath;->ProcessLine(Lsun/java2d/loops/ProcessPath$ProcessHandler;FFFF[I)V

    :goto_4
    aput v22, v8, v13

    aput v23, v8, v14

    goto/16 :goto_8

    :cond_8
    move-object/from16 v21, v5

    aget v0, v7, v13

    add-float/2addr v0, v15

    aput v0, v8, v9

    aget v3, v7, v14

    add-float v3, v3, v16

    aput v3, v8, v1

    aget v4, v7, v9

    add-float v22, v4, v15

    aput v22, v8, v2

    aget v1, v7, v1

    add-float v23, v1, v16

    aput v23, v8, v11

    cmpg-float v1, v22, v20

    if-gez v1, :cond_12

    cmpl-float v1, v22, v19

    if-lez v1, :cond_12

    cmpg-float v1, v23, v20

    if-gez v1, :cond_12

    cmpl-float v1, v23, v19

    if-lez v1, :cond_12

    if-eqz v18, :cond_9

    aput v22, v10, v13

    aput v22, v8, v13

    aput v23, v10, v14

    aput v23, v8, v14

    goto :goto_6

    :cond_9
    cmpg-float v1, v0, v20

    if-gez v1, :cond_a

    cmpl-float v0, v0, v19

    if-lez v0, :cond_a

    cmpg-float v0, v3, v20

    if-gez v0, :cond_a

    cmpl-float v0, v3, v19

    if-lez v0, :cond_a

    invoke-static {v6, v8, v12}, Lsun/java2d/loops/ProcessPath;->ProcessQuad(Lsun/java2d/loops/ProcessPath$ProcessHandler;[F[I)V

    goto :goto_5

    :cond_a
    aget v1, v8, v13

    aget v2, v8, v14

    move-object/from16 v0, p0

    move/from16 v3, v22

    move/from16 v4, v23

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/ProcessPath;->ProcessLine(Lsun/java2d/loops/ProcessPath$ProcessHandler;FFFF[I)V

    :goto_5
    aput v22, v8, v13

    aput v23, v8, v14

    goto/16 :goto_8

    :cond_b
    move-object/from16 v21, v5

    aget v0, v7, v13

    add-float v22, v0, v15

    aput v22, v8, v9

    aget v0, v7, v14

    add-float v23, v0, v16

    aput v23, v8, v1

    cmpg-float v0, v22, v20

    if-gez v0, :cond_12

    cmpl-float v0, v22, v19

    if-lez v0, :cond_12

    cmpg-float v0, v23, v20

    if-gez v0, :cond_12

    cmpl-float v0, v23, v19

    if-lez v0, :cond_12

    if-eqz v18, :cond_c

    aput v22, v10, v13

    aput v22, v8, v13

    aput v23, v10, v14

    aput v23, v8, v14

    :goto_6
    move/from16 v18, v13

    move/from16 v17, v14

    goto :goto_8

    :cond_c
    aget v1, v8, v13

    aget v2, v8, v14

    move-object/from16 v0, p0

    move/from16 v3, v22

    move/from16 v4, v23

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/ProcessPath;->ProcessLine(Lsun/java2d/loops/ProcessPath$ProcessHandler;FFFF[I)V

    aput v22, v8, v13

    aput v23, v8, v14

    goto :goto_8

    :cond_d
    move-object/from16 v21, v5

    if-eqz v17, :cond_10

    if-nez v18, :cond_10

    iget v0, v6, Lsun/java2d/loops/ProcessPath$ProcessHandler;->clipMode:I

    if-ne v0, v14, :cond_f

    aget v1, v8, v13

    aget v3, v10, v13

    cmpl-float v0, v1, v3

    if-nez v0, :cond_e

    aget v0, v8, v14

    aget v2, v10, v14

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_f

    :cond_e
    aget v2, v8, v14

    aget v4, v10, v14

    move-object/from16 v0, p0

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/ProcessPath;->ProcessLine(Lsun/java2d/loops/ProcessPath$ProcessHandler;FFFF[I)V

    :cond_f
    invoke-interface/range {p0 .. p0}, Lsun/java2d/loops/ProcessPath$EndSubPathHandler;->processEndSubPath()V

    :cond_10
    aget v0, v7, v13

    add-float/2addr v0, v15

    aput v0, v8, v13

    aget v1, v7, v14

    add-float v1, v1, v16

    aput v1, v8, v14

    cmpg-float v2, v0, v20

    if-gez v2, :cond_11

    cmpl-float v2, v0, v19

    if-lez v2, :cond_11

    cmpg-float v2, v1, v20

    if-gez v2, :cond_11

    cmpl-float v2, v1, v19

    if-lez v2, :cond_11

    aput v0, v10, v13

    aput v1, v10, v14

    move/from16 v18, v13

    move/from16 v17, v14

    goto :goto_7

    :cond_11
    move/from16 v18, v14

    :goto_7
    aput v13, v12, v13

    :cond_12
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/awt/geom/PathIterator;->next()V

    move-object/from16 v5, v21

    goto/16 :goto_1

    :cond_13
    xor-int/lit8 v0, v18, 0x1

    and-int v0, v17, v0

    if-eqz v0, :cond_16

    iget v0, v6, Lsun/java2d/loops/ProcessPath$ProcessHandler;->clipMode:I

    if-ne v0, v14, :cond_15

    aget v1, v8, v13

    aget v3, v10, v13

    cmpl-float v0, v1, v3

    if-nez v0, :cond_14

    aget v0, v8, v14

    aget v2, v10, v14

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_15

    :cond_14
    aget v2, v8, v14

    aget v4, v10, v14

    move-object/from16 v0, p0

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/ProcessPath;->ProcessLine(Lsun/java2d/loops/ProcessPath$ProcessHandler;FFFF[I)V

    :cond_15
    invoke-interface/range {p0 .. p0}, Lsun/java2d/loops/ProcessPath$EndSubPathHandler;->processEndSubPath()V

    :cond_16
    return v14

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static drawPath(Lsun/java2d/loops/ProcessPath$DrawHandler;Ljava/awt/geom/Path2D$Float;II)Z
    .locals 2

    .line 2
    new-instance v0, Lsun/java2d/loops/ProcessPath$DrawProcessHandler;

    sget-object v1, Lsun/java2d/loops/ProcessPath;->noopEndSubPathHandler:Lsun/java2d/loops/ProcessPath$EndSubPathHandler;

    invoke-direct {v0, p0, v1}, Lsun/java2d/loops/ProcessPath$DrawProcessHandler;-><init>(Lsun/java2d/loops/ProcessPath$DrawHandler;Lsun/java2d/loops/ProcessPath$EndSubPathHandler;)V

    int-to-float p0, p2

    int-to-float p2, p3

    invoke-static {v0, p1, p0, p2}, Lsun/java2d/loops/ProcessPath;->doProcessPath(Lsun/java2d/loops/ProcessPath$ProcessHandler;Ljava/awt/geom/Path2D$Float;FF)Z

    move-result p0

    return p0
.end method

.method public static drawPath(Lsun/java2d/loops/ProcessPath$DrawHandler;Lsun/java2d/loops/ProcessPath$EndSubPathHandler;Ljava/awt/geom/Path2D$Float;II)Z
    .locals 1

    .line 1
    new-instance v0, Lsun/java2d/loops/ProcessPath$DrawProcessHandler;

    invoke-direct {v0, p0, p1}, Lsun/java2d/loops/ProcessPath$DrawProcessHandler;-><init>(Lsun/java2d/loops/ProcessPath$DrawHandler;Lsun/java2d/loops/ProcessPath$EndSubPathHandler;)V

    int-to-float p0, p3

    int-to-float p1, p4

    invoke-static {v0, p2, p0, p1}, Lsun/java2d/loops/ProcessPath;->doProcessPath(Lsun/java2d/loops/ProcessPath$ProcessHandler;Ljava/awt/geom/Path2D$Float;FF)Z

    move-result p0

    return p0
.end method

.method public static fillPath(Lsun/java2d/loops/ProcessPath$DrawHandler;Ljava/awt/geom/Path2D$Float;II)Z
    .locals 1

    new-instance v0, Lsun/java2d/loops/ProcessPath$FillProcessHandler;

    invoke-direct {v0, p0}, Lsun/java2d/loops/ProcessPath$FillProcessHandler;-><init>(Lsun/java2d/loops/ProcessPath$DrawHandler;)V

    int-to-float p0, p2

    int-to-float p2, p3

    invoke-static {v0, p1, p0, p2}, Lsun/java2d/loops/ProcessPath;->doProcessPath(Lsun/java2d/loops/ProcessPath$ProcessHandler;Ljava/awt/geom/Path2D$Float;FF)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/geom/Path2D;->getWindingRule()I

    move-result p0

    invoke-static {v0, p0}, Lsun/java2d/loops/ProcessPath;->FillPolygon(Lsun/java2d/loops/ProcessPath$FillProcessHandler;I)V

    const/4 p0, 0x1

    return p0
.end method
