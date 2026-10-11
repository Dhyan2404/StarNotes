.class Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    return-void
.end method


# virtual methods
.method public computeInterpolatedStateAndDerivatives(DD)V
    .locals 32

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v5, v3, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v9, v1, v7

    sub-double v11, v3, v9

    mul-double v13, v5, v11

    mul-double/2addr v9, v5

    neg-double v5, v1

    mul-double/2addr v5, v11

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    const/4 v12, 0x3

    const/4 v15, 0x2

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-wide/high16 v20, 0x4018000000000000L    # 6.0

    if-eqz v11, :cond_0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    cmpg-double v11, v1, v22

    if-gtz v11, :cond_0

    mul-double v3, v1, v16

    mul-double/2addr v3, v1

    iget-wide v7, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double/2addr v7, v1

    div-double v7, v7, v20

    const-wide/high16 v16, 0x4022000000000000L    # 9.0

    mul-double v16, v16, v1

    sub-double v16, v20, v16

    add-double v16, v16, v3

    mul-double v16, v16, v7

    mul-double v20, v20, v1

    sub-double v20, v20, v3

    mul-double v20, v20, v7

    const-wide/high16 v22, -0x3ff8000000000000L    # -3.0

    mul-double v1, v1, v22

    add-double/2addr v1, v3

    mul-double/2addr v7, v1

    move/from16 v1, v19

    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v4, v3, v19

    aget-wide v22, v4, v1

    aget-object v4, v3, v18

    aget-wide v24, v4, v1

    aget-object v4, v3, v15

    aget-wide v26, v4, v1

    add-double v24, v24, v26

    aget-object v3, v3, v12

    aget-wide v3, v3, v1

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    aget-wide v26, v11, v1

    mul-double v28, v16, v22

    add-double v26, v26, v28

    mul-double v28, v20, v24

    add-double v26, v26, v28

    mul-double v28, v7, v3

    add-double v26, v26, v28

    aput-wide v26, v2, v1

    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    mul-double v22, v22, v13

    mul-double v24, v24, v9

    add-double v22, v22, v24

    mul-double/2addr v3, v5

    add-double v22, v22, v3

    aput-wide v22, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-wide/from16 v22, v13

    mul-double v12, v1, v16

    div-double v16, p3, v20

    neg-double v7, v12

    const-wide/high16 v24, 0x4014000000000000L    # 5.0

    add-double v24, v7, v24

    mul-double v24, v24, v1

    sub-double v24, v24, v3

    mul-double v24, v24, v16

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    sub-double v12, v12, v20

    mul-double/2addr v12, v1

    sub-double v12, v12, v20

    mul-double v12, v12, v16

    sub-double/2addr v7, v3

    mul-double/2addr v7, v1

    sub-double/2addr v7, v3

    mul-double v16, v16, v7

    move/from16 v1, v19

    :goto_1
    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v4, v3, v19

    aget-wide v7, v4, v1

    aget-object v4, v3, v18

    aget-wide v20, v4, v1

    aget-object v4, v3, v15

    aget-wide v26, v4, v1

    add-double v20, v20, v26

    const/4 v4, 0x3

    aget-object v3, v3, v4

    aget-wide v26, v3, v1

    iget-object v3, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    aget-wide v28, v3, v1

    mul-double v30, v24, v7

    add-double v28, v28, v30

    mul-double v30, v12, v20

    add-double v28, v28, v30

    mul-double v30, v16, v26

    add-double v28, v28, v30

    aput-wide v28, v2, v1

    iget-object v2, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    mul-double v7, v7, v22

    mul-double v20, v20, v9

    add-double v7, v7, v20

    mul-double v26, v26, v5

    add-double v7, v7, v26

    aput-wide v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;)V

    return-object v0
.end method
