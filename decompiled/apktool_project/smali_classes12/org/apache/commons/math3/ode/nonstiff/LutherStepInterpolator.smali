.class Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "SourceFile"


# static fields
.field private static final Q:D

.field private static final serialVersionUID:J = 0x1335180L


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4035000000000000L    # 21.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    return-void
.end method


# virtual methods
.method public computeInterpolatedStateAndDerivatives(DD)V
    .locals 53

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4035000000000000L    # 21.0

    mul-double v1, v1, p1

    const-wide v3, -0x3fb8800000000000L    # -47.0

    add-double/2addr v3, v1

    mul-double v3, v3, p1

    const-wide/high16 v5, 0x4042000000000000L    # 36.0

    add-double/2addr v3, v5

    mul-double v3, v3, p1

    const-wide v5, -0x3fda666666666666L    # -10.8

    add-double/2addr v3, v5

    mul-double v3, v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    const-wide/high16 v7, 0x405c000000000000L    # 112.0

    mul-double v7, v7, p1

    const-wide v9, -0x3f96aaaaaaaaaaabL    # -202.66666666666666

    add-double/2addr v9, v7

    mul-double v9, v9, p1

    const-wide v11, 0x405aaaaaaaaaaaabL    # 106.66666666666667

    add-double/2addr v9, v11

    mul-double v9, v9, p1

    const-wide v11, -0x3fd4444444444444L    # -13.866666666666667

    add-double/2addr v9, v11

    mul-double v9, v9, p1

    const-wide v11, -0x3f7e480000000000L    # -567.0

    mul-double v11, v11, p1

    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    div-double v15, v11, v13

    const-wide v17, 0x40684ccccccccccdL    # 194.4

    add-double v15, v15, v17

    mul-double v15, v15, p1

    const-wide v17, -0x3fa7b33333333333L    # -97.2

    add-double v15, v15, v17

    mul-double v15, v15, p1

    const-wide v17, 0x4029eb851eb851ecL    # 12.96

    add-double v15, v15, v17

    mul-double v15, v15, p1

    sget-wide v17, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    const-wide v19, 0x4075700000000000L    # 343.0

    mul-double v21, v17, v19

    const-wide v23, 0x408a080000000000L    # 833.0

    add-double v21, v21, v23

    const-wide v25, 0x4062c00000000000L    # 150.0

    div-double v21, v21, v25

    const-wide v27, 0x4076500000000000L    # 357.0

    mul-double v29, v17, v27

    const-wide v31, -0x3f7c180000000000L    # -637.0

    sub-double v29, v31, v29

    const-wide/high16 v33, 0x403e000000000000L    # 30.0

    div-double v29, v29, v33

    const-wide v35, 0x4071f00000000000L    # 287.0

    mul-double v37, v17, v35

    const-wide v39, 0x4078800000000000L    # 392.0

    add-double v37, v37, v39

    const-wide/high16 v41, 0x402e000000000000L    # 15.0

    div-double v37, v37, v41

    const-wide v43, 0x4048800000000000L    # 49.0

    mul-double v45, v17, v43

    const-wide v47, -0x3fb7800000000000L    # -49.0

    sub-double v45, v47, v45

    mul-double v45, v45, p1

    div-double v45, v45, v13

    add-double v37, v37, v45

    mul-double v37, v37, p1

    add-double v29, v29, v37

    mul-double v29, v29, p1

    add-double v21, v21, v29

    mul-double v21, v21, p1

    mul-double v29, v17, v19

    sub-double v29, v23, v29

    div-double v29, v29, v25

    mul-double v25, v17, v27

    add-double v25, v25, v31

    div-double v25, v25, v33

    mul-double v33, v17, v35

    sub-double v33, v39, v33

    div-double v33, v33, v41

    mul-double v37, v17, v43

    add-double v37, v37, v47

    mul-double v37, v37, p1

    div-double v37, v37, v13

    add-double v33, v33, v37

    mul-double v33, v33, p1

    add-double v25, v25, v33

    mul-double v25, v25, p1

    add-double v29, v29, v25

    mul-double v25, p1, v29

    const-wide/high16 v29, 0x4008000000000000L    # 3.0

    mul-double v29, v29, p1

    const-wide/high16 v33, -0x3ff8000000000000L    # -3.0

    add-double v29, v29, v33

    mul-double v29, v29, p1

    const-wide v33, 0x3fe3333333333333L    # 0.6

    add-double v29, v29, v33

    mul-double v29, v29, p1

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    const-wide v37, 0x4019eb851eb851ecL    # 6.48

    const/16 v41, 0x0

    const-wide v45, 0x4072c00000000000L    # 300.0

    const-wide/high16 v49, 0x4039000000000000L    # 25.0

    if-eqz v5, :cond_0

    const-wide/high16 v51, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, p1, v51

    if-gtz v5, :cond_0

    const-wide v51, -0x3fd8800000000000L    # -11.75

    div-double/2addr v1, v13

    add-double v1, v1, v51

    mul-double v1, v1, p1

    const-wide/high16 v51, 0x4028000000000000L    # 12.0

    add-double v1, v1, v51

    mul-double v1, v1, p1

    const-wide v51, -0x3fea666666666666L    # -5.4

    add-double v1, v1, v51

    mul-double v1, v1, p1

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    add-double v1, v1, v33

    const-wide v33, -0x3fb6aaaaaaaaaaabL    # -50.666666666666664

    div-double/2addr v7, v13

    add-double v7, v7, v33

    mul-double v7, v7, p1

    const-wide v13, 0x4041c71c71c71c72L    # 35.55555555555556

    add-double/2addr v7, v13

    mul-double v7, v7, p1

    const-wide v13, -0x3fe4444444444444L    # -6.933333333333334

    add-double/2addr v7, v13

    mul-double v7, v7, p1

    const-wide v13, 0x40484ccccccccccdL    # 48.6

    div-double v11, v11, v49

    add-double/2addr v11, v13

    mul-double v11, v11, p1

    const-wide v13, -0x3fbfcccccccccccdL    # -32.4

    add-double/2addr v11, v13

    mul-double v11, v11, p1

    add-double v11, v11, v37

    mul-double v11, v11, p1

    mul-double v13, v17, v19

    add-double v13, v13, v23

    div-double v13, v13, v45

    mul-double v33, v17, v27

    sub-double v33, v31, v33

    const-wide v37, 0x4056800000000000L    # 90.0

    div-double v33, v33, v37

    mul-double v37, v17, v35

    add-double v37, v37, v39

    const-wide/high16 v51, 0x404e000000000000L    # 60.0

    div-double v37, v37, v51

    mul-double v51, v17, v43

    sub-double v51, v47, v51

    mul-double v51, v51, p1

    div-double v51, v51, v49

    add-double v37, v37, v51

    mul-double v37, v37, p1

    add-double v33, v33, v37

    mul-double v33, v33, p1

    add-double v13, v13, v33

    mul-double v13, v13, p1

    mul-double v19, v19, v17

    sub-double v23, v23, v19

    div-double v23, v23, v45

    mul-double v27, v27, v17

    add-double v27, v27, v31

    const-wide v19, 0x4056800000000000L    # 90.0

    div-double v27, v27, v19

    mul-double v35, v35, v17

    sub-double v39, v39, v35

    const-wide/high16 v19, 0x404e000000000000L    # 60.0

    div-double v39, v39, v19

    mul-double v17, v17, v43

    add-double v17, v17, v47

    mul-double v17, v17, p1

    div-double v17, v17, v49

    add-double v39, v39, v17

    mul-double v17, p1, v39

    add-double v27, v27, v17

    mul-double v17, p1, v27

    add-double v23, v23, v17

    mul-double v17, p1, v23

    const-wide/high16 v19, 0x3fe8000000000000L    # 0.75

    mul-double v19, v19, p1

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    add-double v19, v19, v23

    mul-double v19, v19, p1

    const-wide v23, 0x3fd3333333333333L    # 0.3

    add-double v19, v19, v23

    mul-double v19, v19, p1

    move/from16 v5, v41

    :goto_0
    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    move-wide/from16 v27, v15

    array-length v15, v6

    if-ge v5, v15, :cond_1

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v16, v15, v41

    aget-wide v31, v16, v5

    const/16 v16, 0x1

    aget-object v24, v15, v16

    aget-wide v33, v24, v5

    const/16 v16, 0x2

    aget-object v16, v15, v16

    aget-wide v35, v16, v5

    const/16 v16, 0x3

    aget-object v16, v15, v16

    aget-wide v37, v16, v5

    const/16 v16, 0x4

    aget-object v16, v15, v16

    aget-wide v39, v16, v5

    const/16 v16, 0x5

    aget-object v16, v15, v16

    aget-wide v42, v16, v5

    const/16 v16, 0x6

    aget-object v15, v15, v16

    aget-wide v15, v15, v5

    move-wide/from16 v47, v9

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    aget-wide v9, v9, v5

    move-wide/from16 v51, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v3, v3, p1

    mul-double v44, v1, v31

    const-wide/16 v49, 0x0

    mul-double v33, v33, v49

    add-double v44, v44, v33

    mul-double v49, v7, v35

    add-double v44, v44, v49

    mul-double v49, v11, v37

    add-double v44, v44, v49

    mul-double v49, v13, v39

    add-double v44, v44, v49

    mul-double v49, v17, v42

    add-double v44, v44, v49

    mul-double v49, v19, v15

    add-double v44, v44, v49

    mul-double v3, v3, v44

    add-double/2addr v9, v3

    aput-wide v9, v6, v5

    iget-object v3, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    mul-double v9, v51, v31

    add-double v9, v9, v33

    mul-double v31, v47, v35

    add-double v9, v9, v31

    mul-double v31, v27, v37

    add-double v9, v9, v31

    mul-double v39, v39, v21

    add-double v9, v9, v39

    mul-double v42, v42, v25

    add-double v9, v9, v42

    mul-double v15, v15, v29

    add-double/2addr v9, v15

    aput-wide v9, v3, v5

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v15, v27

    move-wide/from16 v9, v47

    move-wide/from16 v3, v51

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v51, v3

    move-wide/from16 v47, v9

    move-wide/from16 v27, v15

    const-wide/high16 v1, -0x3fcb000000000000L    # -21.0

    mul-double v1, v1, p1

    div-double/2addr v1, v13

    const-wide v3, 0x401e333333333333L    # 7.55

    add-double/2addr v1, v3

    mul-double v1, v1, p1

    const-wide v3, -0x3fee333333333333L    # -4.45

    add-double/2addr v1, v3

    mul-double v1, v1, p1

    const-wide v3, 0x3fee666666666666L    # 0.95

    add-double/2addr v1, v3

    mul-double v1, v1, p1

    const-wide v3, -0x4056666666666666L    # -0.05

    add-double/2addr v1, v3

    const-wide/high16 v5, -0x3fa4000000000000L    # -112.0

    mul-double v5, v5, p1

    div-double/2addr v5, v13

    const-wide v7, 0x403c444444444444L    # 28.266666666666666

    add-double/2addr v5, v7

    mul-double v5, v5, p1

    const-wide v7, -0x3fe2d82d82d82d83L    # -7.288888888888889

    add-double/2addr v5, v7

    mul-double v5, v5, p1

    const-wide v7, -0x40293e93e93e93e9L    # -0.35555555555555557

    add-double/2addr v5, v7

    mul-double v5, v5, p1

    add-double/2addr v5, v7

    const-wide v7, 0x4081b80000000000L    # 567.0

    mul-double v7, v7, p1

    div-double v7, v7, v49

    const-wide v9, -0x3fc6147ae147ae14L    # -25.92

    add-double/2addr v7, v9

    mul-double v7, v7, p1

    add-double v7, v7, v37

    mul-double v7, v7, p1

    mul-double v7, v7, p1

    const-wide v9, 0x4090140000000000L    # 1029.0

    mul-double v9, v9, v17

    const-wide v11, 0x40a19c0000000000L    # 2254.0

    add-double/2addr v9, v11

    const-wide v13, 0x408c200000000000L    # 900.0

    div-double/2addr v9, v13

    const-wide v13, 0x408a780000000000L    # 847.0

    mul-double v13, v13, v17

    const-wide v15, -0x3f6a900000000000L    # -1372.0

    sub-double/2addr v15, v13

    div-double v15, v15, v45

    mul-double v13, v17, v43

    add-double v13, v13, v43

    mul-double v13, v13, p1

    div-double v13, v13, v49

    add-double/2addr v15, v13

    mul-double v13, p1, v15

    add-double/2addr v9, v13

    mul-double v9, v9, p1

    const-wide v13, -0x402e93e93e93e93fL    # -0.2722222222222222

    add-double/2addr v9, v13

    mul-double v9, v9, p1

    add-double/2addr v9, v13

    const-wide v15, 0x4090140000000000L    # 1029.0

    mul-double v15, v15, v17

    sub-double/2addr v11, v15

    const-wide v15, 0x408c200000000000L    # 900.0

    div-double/2addr v11, v15

    const-wide v15, 0x408a780000000000L    # 847.0

    mul-double v15, v15, v17

    const-wide v19, -0x3f6a900000000000L    # -1372.0

    add-double v15, v15, v19

    div-double v15, v15, v45

    mul-double v17, v17, v43

    sub-double v43, v43, v17

    mul-double v17, p1, v43

    div-double v17, v17, v49

    add-double v15, v15, v17

    mul-double v15, v15, p1

    add-double/2addr v11, v15

    mul-double v11, v11, p1

    add-double/2addr v11, v13

    mul-double v11, v11, p1

    add-double/2addr v11, v13

    const-wide/high16 v13, -0x4018000000000000L    # -0.75

    mul-double v13, v13, p1

    const-wide/high16 v15, 0x3fd0000000000000L    # 0.25

    add-double/2addr v13, v15

    mul-double v13, v13, p1

    add-double/2addr v13, v3

    mul-double v13, v13, p1

    add-double/2addr v13, v3

    move/from16 v3, v41

    :goto_1
    iget-object v4, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v15, v4

    if-ge v3, v15, :cond_1

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v16, v15, v41

    aget-wide v16, v16, v3

    const/16 v18, 0x1

    aget-object v19, v15, v18

    aget-wide v19, v19, v3

    const/16 v23, 0x2

    aget-object v23, v15, v23

    aget-wide v23, v23, v3

    const/16 v31, 0x3

    aget-object v31, v15, v31

    aget-wide v31, v31, v3

    const/16 v33, 0x4

    aget-object v33, v15, v33

    aget-wide v33, v33, v3

    const/16 v35, 0x5

    aget-object v35, v15, v35

    aget-wide v35, v35, v3

    const/16 v37, 0x6

    aget-object v15, v15, v37

    aget-wide v37, v15, v3

    iget-object v15, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    aget-wide v39, v15, v3

    mul-double v42, v1, v16

    const-wide/16 v44, 0x0

    mul-double v19, v19, v44

    add-double v42, v42, v19

    mul-double v44, v5, v23

    add-double v42, v42, v44

    mul-double v44, v7, v31

    add-double v42, v42, v44

    mul-double v44, v9, v33

    add-double v42, v42, v44

    mul-double v44, v11, v35

    add-double v42, v42, v44

    mul-double v44, v13, v37

    add-double v42, v42, v44

    mul-double v42, v42, p3

    add-double v39, v39, v42

    aput-wide v39, v4, v3

    iget-object v4, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    mul-double v15, v51, v16

    add-double v15, v15, v19

    mul-double v19, v47, v23

    add-double v15, v15, v19

    mul-double v19, v27, v31

    add-double v15, v15, v19

    mul-double v33, v33, v21

    add-double v15, v15, v33

    mul-double v35, v35, v25

    add-double v15, v15, v35

    mul-double v37, v37, v29

    add-double v15, v15, v37

    aput-wide v15, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;)V

    return-object v0
.end method
