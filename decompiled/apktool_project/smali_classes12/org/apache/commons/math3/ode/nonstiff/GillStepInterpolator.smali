.class Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "SourceFile"


# static fields
.field private static final ONE_MINUS_INV_SQRT_2:D

.field private static final ONE_PLUS_INV_SQRT_2:D

.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    sput-wide v2, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_MINUS_INV_SQRT_2:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v4

    sput-wide v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_PLUS_INV_SQRT_2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    return-void
.end method


# virtual methods
.method public computeInterpolatedStateAndDerivatives(DD)V
    .locals 36

    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v3, p1, v1

    mul-double v5, v3, v3

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    sub-double v7, v3, v7

    mul-double v7, v7, p1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    sub-double v11, v9, p1

    mul-double/2addr v11, v3

    sget-wide v13, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_MINUS_INV_SQRT_2:D

    mul-double v15, v11, v13

    sget-wide v17, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_PLUS_INV_SQRT_2:D

    mul-double v11, v11, v17

    sub-double v19, v3, v9

    mul-double v19, v19, p1

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    const/4 v10, 0x3

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v25, 0x0

    const-wide/high16 v26, 0x4018000000000000L    # 6.0

    if-eqz v9, :cond_0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    cmpg-double v9, p1, v28

    if-gtz v9, :cond_0

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v1, v1, p1

    div-double v1, v1, v26

    mul-double v3, p1, v26

    sub-double/2addr v3, v5

    mul-double/2addr v3, v1

    const-wide/high16 v21, 0x4022000000000000L    # 9.0

    mul-double v21, v21, p1

    sub-double v26, v26, v21

    add-double v26, v26, v5

    mul-double v26, v26, v1

    mul-double/2addr v13, v3

    mul-double v3, v3, v17

    const-wide/high16 v17, -0x3ff8000000000000L    # -3.0

    mul-double v17, v17, p1

    add-double v17, v17, v5

    mul-double v1, v1, v17

    move/from16 v5, v25

    :goto_0
    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v9, v6

    if-ge v5, v9, :cond_1

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v17, v9, v25

    aget-wide v17, v17, v5

    aget-object v21, v9, v24

    aget-wide v21, v21, v5

    aget-object v28, v9, v23

    aget-wide v28, v28, v5

    aget-object v9, v9, v10

    aget-wide v30, v9, v5

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    aget-wide v32, v9, v5

    mul-double v34, v26, v17

    add-double v32, v32, v34

    mul-double v34, v13, v21

    add-double v32, v32, v34

    mul-double v34, v3, v28

    add-double v32, v32, v34

    mul-double v34, v1, v30

    add-double v32, v32, v34

    aput-wide v32, v6, v5

    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    mul-double v17, v17, v7

    mul-double v21, v21, v15

    add-double v17, v17, v21

    mul-double v28, v28, v11

    add-double v17, v17, v28

    mul-double v30, v30, v19

    add-double v17, v17, v30

    aput-wide v17, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    div-double v26, p3, v26

    add-double/2addr v3, v1

    sub-double/2addr v3, v5

    mul-double v3, v3, v26

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    mul-double v1, v1, p1

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    sub-double v1, v21, v1

    add-double/2addr v1, v5

    mul-double v1, v1, v26

    mul-double/2addr v13, v3

    mul-double v3, v3, v17

    add-double v17, p1, v21

    add-double v17, v17, v5

    mul-double v26, v26, v17

    move/from16 v5, v25

    :goto_1
    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v9, v6

    if-ge v5, v9, :cond_1

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v17, v9, v25

    aget-wide v17, v17, v5

    aget-object v21, v9, v24

    aget-wide v21, v21, v5

    aget-object v28, v9, v23

    aget-wide v28, v28, v5

    aget-object v9, v9, v10

    aget-wide v30, v9, v5

    iget-object v9, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    aget-wide v32, v9, v5

    mul-double v34, v1, v17

    sub-double v32, v32, v34

    mul-double v34, v13, v21

    sub-double v32, v32, v34

    mul-double v34, v3, v28

    sub-double v32, v32, v34

    mul-double v34, v26, v30

    sub-double v32, v32, v34

    aput-wide v32, v6, v5

    iget-object v6, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    mul-double v17, v17, v7

    mul-double v21, v21, v15

    add-double v17, v17, v21

    mul-double v28, v28, v11

    add-double v17, v17, v28

    mul-double v30, v30, v19

    add-double v17, v17, v30

    aput-wide v17, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;)V

    return-object v0
.end method
