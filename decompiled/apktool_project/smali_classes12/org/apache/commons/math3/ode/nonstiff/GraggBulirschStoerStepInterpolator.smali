.class Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x132de50L


# instance fields
.field private currentDegree:I

.field private errfac:[D

.field private polynomials:[[D

.field private y0Dot:[D

.field private y1:[D

.field private y1Dot:[D

.field private yMidDots:[[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    .line 4
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    .line 5
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    const/4 v0, -0x1

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;)V
    .locals 5

    .line 13
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V

    .line 14
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v0, v0

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    .line 16
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    .line 17
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    .line 18
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    .line 19
    iget-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    if-nez v2, :cond_0

    .line 20
    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    goto :goto_1

    .line 22
    :cond_0
    iget v1, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 23
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 24
    new-array v4, v0, [D

    aput-object v4, v3, v2

    .line 25
    iget-object v3, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v3, v3, v2

    invoke-static {v3, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_1
    iget p1, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    :goto_1
    return-void
.end method

.method public constructor <init>([D[D[D[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p6, p7, p8}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 8
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    .line 9
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    .line 10
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    .line 11
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    .line 12
    array-length p1, p5

    add-int/lit8 p1, p1, 0x4

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    return-void
.end method

.method private resetTables(I)V
    .locals 10

    const/4 v0, 0x0

    if-gez p1, :cond_0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v2, v1, [[D

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    array-length v5, v3

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    array-length v3, v3

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v5, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v5, v5

    new-array v5, v5, [D

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v5, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v5, v5

    new-array v5, v5, [D

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    const/4 v1, 0x4

    if-gt p1, v1, :cond_3

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    goto :goto_4

    :cond_3
    sub-int/2addr p1, v1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    move p1, v4

    :goto_2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    array-length v1, v0

    if-ge p1, v1, :cond_5

    add-int/lit8 v1, p1, 0x5

    mul-int v2, v1, v1

    int-to-double v2, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v2

    aput-wide v5, v0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-double v2, v0

    int-to-double v5, v1

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v5

    move v3, v4

    :goto_3
    if-gt v3, p1, :cond_4

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    aget-wide v6, v5, p1

    add-int/lit8 v3, v3, 0x1

    int-to-double v8, v3

    div-double v8, v1, v8

    mul-double/2addr v6, v8

    aput-wide v6, v5, p1

    goto :goto_3

    :cond_4
    move p1, v0

    goto :goto_2

    :cond_5
    :goto_4
    iput v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    :goto_5
    return-void
.end method


# virtual methods
.method public computeCoefficients(ID)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    if-eqz v2, :cond_0

    array-length v2, v2

    add-int/lit8 v3, v1, 0x4

    if-gt v2, v3, :cond_1

    :cond_0
    add-int/lit8 v2, v1, 0x4

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    :cond_1
    add-int/lit8 v2, v1, 0x4

    iput v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v5, v4

    if-ge v3, v5, :cond_4

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    aget-wide v5, v5, v3

    mul-double v5, v5, p2

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    aget-wide v7, v7, v3

    mul-double v7, v7, p2

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    aget-wide v10, v9, v3

    aget-wide v12, v4, v3

    sub-double/2addr v10, v12

    sub-double v14, v10, v7

    sub-double v16, v5, v10

    move-wide/from16 v18, v5

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v6, v5, v2

    aput-wide v12, v6, v3

    const/4 v6, 0x1

    aget-object v12, v5, v6

    aput-wide v10, v12, v3

    const/4 v12, 0x2

    aget-object v13, v5, v12

    aput-wide v14, v13, v3

    const/4 v13, 0x3

    aget-object v20, v5, v13

    aput-wide v16, v20, v3

    if-gez v1, :cond_2

    return-void

    :cond_2
    aget-wide v20, v4, v3

    aget-wide v22, v9, v3

    add-double v20, v20, v22

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v20, v20, v22

    const-wide/high16 v24, 0x3fc0000000000000L    # 0.125

    add-double v26, v14, v16

    mul-double v26, v26, v24

    add-double v20, v20, v26

    const/4 v4, 0x4

    aget-object v9, v5, v4

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    aget-object v25, v4, v2

    aget-wide v25, v25, v3

    sub-double v25, v25, v20

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    mul-double v25, v25, v20

    aput-wide v25, v9, v3

    if-lez v1, :cond_3

    const-wide/high16 v25, 0x3fd0000000000000L    # 0.25

    sub-double v27, v14, v16

    mul-double v27, v27, v25

    add-double v10, v10, v27

    const/16 v25, 0x5

    aget-object v25, v5, v25

    aget-object v26, v4, v6

    aget-wide v26, v26, v3

    sub-double v26, v26, v10

    mul-double v26, v26, v20

    aput-wide v26, v25, v3

    if-le v1, v6, :cond_3

    sub-double v7, v7, v18

    const/4 v6, 0x6

    aget-object v6, v5, v6

    aget-object v10, v4, v12

    aget-wide v10, v10, v3

    sub-double/2addr v10, v7

    aget-wide v7, v9, v3

    add-double/2addr v10, v7

    mul-double v10, v10, v20

    aput-wide v10, v6, v3

    if-le v1, v12, :cond_3

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    sub-double v16, v16, v14

    mul-double v16, v16, v6

    const/4 v6, 0x7

    aget-object v5, v5, v6

    aget-object v4, v4, v13

    aget-wide v6, v4, v3

    sub-double v6, v6, v16

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    aget-wide v10, v25, v3

    mul-double/2addr v10, v8

    add-double/2addr v6, v10

    mul-double v6, v6, v20

    aput-wide v6, v5, v3

    const/4 v4, 0x4

    :goto_1
    if-gt v4, v1, :cond_3

    int-to-double v5, v4

    mul-double v5, v5, v22

    add-int/lit8 v7, v4, -0x1

    int-to-double v7, v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v5

    add-int/lit8 v9, v4, -0x2

    int-to-double v9, v9

    mul-double/2addr v7, v9

    add-int/lit8 v9, v4, -0x3

    int-to-double v9, v9

    mul-double/2addr v7, v9

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    add-int/lit8 v10, v4, 0x4

    aget-object v10, v9, v10

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    aget-object v11, v11, v4

    aget-wide v11, v11, v3

    add-int/lit8 v13, v4, 0x2

    aget-object v13, v9, v13

    aget-wide v13, v13, v3

    mul-double/2addr v5, v13

    add-double/2addr v11, v5

    aget-object v5, v9, v4

    aget-wide v5, v5, v3

    mul-double/2addr v7, v5

    sub-double/2addr v11, v7

    mul-double v11, v11, v20

    aput-wide v11, v10, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public computeInterpolatedStateAndDerivatives(DD)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    array-length v1, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double v6, p1, v6

    mul-double v8, p1, v4

    mul-double v10, v8, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v12

    mul-double v14, p1, v12

    sub-double v14, v2, v14

    mul-double/2addr v8, v14

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    div-double v16, v2, v14

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    mul-double v18, v18, p1

    sub-double v12, v12, v18

    mul-double v12, v12, p1

    div-double/2addr v12, v14

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    sub-double v18, v18, v20

    mul-double v18, v18, p1

    add-double v18, v18, v2

    div-double v18, v18, v14

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    if-ge v15, v1, :cond_2

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v3, v2, v14

    aget-wide v23, v3, v15

    aget-object v3, v2, v22

    aget-wide v25, v3, v15

    const/4 v3, 0x2

    aget-object v3, v2, v3

    aget-wide v27, v3, v15

    const/4 v3, 0x3

    aget-object v22, v2, v3

    aget-wide v29, v22, v15

    iget-object v14, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    mul-double v31, v27, p1

    mul-double v33, v29, v4

    add-double v31, v31, v33

    mul-double v31, v31, v4

    add-double v31, v25, v31

    mul-double v31, v31, p1

    add-double v23, v23, v31

    aput-wide v23, v14, v15

    iget-object v14, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    mul-double v25, v25, v16

    mul-double v27, v27, v12

    add-double v25, v25, v27

    mul-double v29, v29, v18

    add-double v25, v25, v29

    aput-wide v25, v14, v15

    iget v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    if-le v14, v3, :cond_1

    aget-object v2, v2, v14

    aget-wide v22, v2, v15

    add-int/lit8 v14, v14, -0x1

    :goto_1
    if-le v14, v3, :cond_0

    add-int/lit8 v2, v14, -0x3

    move-wide/from16 v24, v4

    int-to-double v3, v2

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v2, v26, v3

    mul-double v20, v20, v6

    add-double v20, v20, v22

    mul-double v20, v20, v2

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v4, v4, v14

    aget-wide v28, v4, v15

    mul-double v22, v22, v2

    mul-double v22, v22, v6

    add-double v22, v28, v22

    add-int/lit8 v14, v14, -0x1

    move-wide/from16 v4, v24

    const/4 v3, 0x3

    goto :goto_1

    :cond_0
    move-wide/from16 v24, v4

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    aget-wide v3, v2, v15

    mul-double v28, v10, v22

    add-double v3, v3, v28

    aput-wide v3, v2, v15

    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    aget-wide v3, v2, v15

    mul-double v20, v20, v10

    mul-double v22, v22, v8

    add-double v20, v20, v22

    move-wide/from16 p3, v6

    iget-wide v5, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    div-double v20, v20, v5

    add-double v3, v3, v20

    aput-wide v3, v2, v15

    goto :goto_2

    :cond_1
    move-wide/from16 v24, v4

    move-wide/from16 p3, v6

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v6, p3

    move-wide/from16 v4, v24

    move-wide/from16 v2, v26

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_2
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    cmpl-double v2, v2, v20

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    aget-object v2, v2, v22

    iget-object v0, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-void
.end method

.method public doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;)V

    return-object v0
.end method

.method public estimateError([D)D
    .locals 8

    iget v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    iget v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    aget-object v4, v4, v5

    aget-wide v4, v4, v0

    aget-wide v6, p1, v0

    div-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p1

    int-to-double v4, p1

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    iget p0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    sub-int/2addr p0, v3

    aget-wide p0, p1, p0

    mul-double v1, v0, p0

    :cond_1
    return-wide v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->readBaseExternal(Ljava/io/ObjectInput;)D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    array-length v2, v2

    :goto_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    iput v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    if-gt v4, v5, :cond_2

    move v5, v3

    :goto_2
    if-ge v5, v2, :cond_1

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v6, v6, v4

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->setInterpolatedTime(D)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->writeBaseExternal(Ljava/io/ObjectOutput;)V

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    if-gt v2, v3, :cond_2

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v3

    invoke-interface {p1, v4, v5}, Ljava/io/DataOutput;->writeDouble(D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
