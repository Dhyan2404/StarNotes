.class public abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractIntegrator;
.source "SourceFile"


# instance fields
.field public final f:[D

.field public final g:[[D

.field public final h:[D

.field public final i:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

.field public final j:D


# direct methods
.method public constructor <init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->f:[D

    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->g:[[D

    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->h:[D

    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->i:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-static {p6, p7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->j:D

    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lez v0, :cond_0

    move v11, v9

    goto :goto_0

    :cond_0
    move v11, v10

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v12

    invoke-virtual {v12}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [D

    iget-object v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->f:[D

    array-length v0, v0

    add-int/lit8 v14, v0, 0x1

    new-array v15, v14, [[D

    move v0, v10

    :goto_1
    if-ge v0, v14, :cond_1

    array-length v1, v12

    new-array v1, v1, [D

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [D

    array-length v0, v12

    new-array v5, v0, [D

    iget-object v0, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->i:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v17

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v15

    move-object v9, v4

    move v4, v11

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v19, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    if-eqz v11, :cond_3

    iget-wide v2, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->j:D

    add-double v4, v0, v2

    cmpl-double v4, v4, p2

    if-ltz v4, :cond_2

    sub-double v0, p2, v0

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    goto :goto_2

    :cond_2
    iput-wide v2, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    goto :goto_2

    :cond_3
    iget-wide v2, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->j:D

    sub-double v4, v0, v2

    cmpg-double v4, v4, p2

    if-gtz v4, :cond_4

    sub-double v0, p2, v0

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    goto :goto_2

    :cond_4
    neg-double v0, v2

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-object v3, v12

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->initIntegration(D[DD)V

    iput-boolean v10, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    :goto_3
    invoke-virtual {v9}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->shift()V

    iget-wide v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    aget-object v2, v15, v10

    invoke-virtual {v7, v0, v1, v13, v2}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    const/4 v0, 0x1

    :goto_4
    if-ge v0, v14, :cond_7

    move v1, v10

    :goto_5
    array-length v2, v12

    if-ge v1, v2, :cond_6

    iget-object v2, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->g:[[D

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aget-wide v4, v2, v10

    aget-object v2, v15, v10

    aget-wide v16, v2, v1

    mul-double v4, v4, v16

    const/4 v2, 0x1

    :goto_6
    if-ge v2, v0, :cond_5

    iget-object v6, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->g:[[D

    aget-object v6, v6, v3

    aget-wide v16, v6, v2

    aget-object v6, v15, v2

    aget-wide v20, v6, v1

    mul-double v16, v16, v20

    add-double v4, v4, v16

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    aget-wide v2, v13, v1

    move/from16 v16, v11

    iget-wide v10, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v10, v4

    add-double/2addr v2, v10

    move-object/from16 v10, v19

    aput-wide v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v11, v16

    const/4 v10, 0x0

    goto :goto_5

    :cond_6
    move/from16 v16, v11

    move-object/from16 v10, v19

    iget-wide v1, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-object v3, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->f:[D

    add-int/lit8 v4, v0, -0x1

    aget-wide v3, v3, v4

    iget-wide v5, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aget-object v3, v15, v0

    invoke-virtual {v7, v1, v2, v10, v3}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    move/from16 v16, v11

    move-object/from16 v10, v19

    const/4 v0, 0x0

    :goto_7
    array-length v1, v12

    if-ge v0, v1, :cond_9

    iget-object v1, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->h:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aget-object v1, v15, v2

    aget-wide v1, v1, v0

    mul-double/2addr v3, v1

    const/4 v1, 0x1

    :goto_8
    if-ge v1, v14, :cond_8

    iget-object v2, v7, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->h:[D

    aget-wide v19, v2, v1

    aget-object v2, v15, v1

    aget-wide v21, v2, v0

    mul-double v19, v19, v21

    add-double v3, v3, v19

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    aget-wide v1, v13, v0

    iget-wide v5, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v5, v3

    add-double/2addr v1, v5

    aput-wide v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    iget-wide v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v2, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v0, v2

    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    array-length v0, v12

    const/4 v11, 0x0

    invoke-static {v10, v11, v13, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v14, -0x1

    aget-object v0, v15, v0

    array-length v1, v12

    move-object/from16 v6, v18

    invoke-static {v0, v11, v6, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v13

    move-object v3, v6

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v0

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-boolean v2, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v2, :cond_c

    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    iget-wide v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v2, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v2, v0

    if-eqz v16, :cond_a

    cmpl-double v2, v2, p2

    if-ltz v2, :cond_b

    goto :goto_9

    :cond_a
    cmpg-double v2, v2, p2

    if-gtz v2, :cond_b

    :goto_9
    const/4 v2, 0x1

    goto :goto_a

    :cond_b
    move v2, v11

    :goto_a
    if-eqz v2, :cond_c

    sub-double v0, p2, v0

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    :cond_c
    iget-boolean v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v0, :cond_d

    iget-wide v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v8, v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    invoke-virtual {v8, v13}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iput-wide v0, v7, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    return-void

    :cond_d
    move-object/from16 v18, v6

    move-object/from16 v19, v10

    move v10, v11

    move/from16 v11, v16

    goto/16 :goto_3
.end method

.method public singleStep(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD)[D
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    invoke-virtual/range {p4 .. p4}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->f:[D

    array-length v6, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    new-array v8, v6, [[D

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v6, :cond_0

    array-length v11, v4

    new-array v11, v11, [D

    aput-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p4 .. p4}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    sub-double v11, p5, v2

    aget-object v13, v8, v9

    invoke-interface {v1, v2, v3, v5, v13}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    move v13, v7

    :goto_1
    if-ge v13, v6, :cond_3

    move v14, v9

    :goto_2
    array-length v15, v4

    if-ge v14, v15, :cond_2

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->g:[[D

    add-int/lit8 v16, v13, -0x1

    aget-object v15, v15, v16

    aget-wide v17, v15, v9

    aget-object v15, v8, v9

    aget-wide v19, v15, v14

    mul-double v17, v17, v19

    move v15, v7

    :goto_3
    if-ge v15, v13, :cond_1

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->g:[[D

    aget-object v7, v7, v16

    aget-wide v20, v7, v15

    aget-object v7, v8, v15

    aget-wide v22, v7, v14

    mul-double v20, v20, v22

    add-double v17, v17, v20

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_1
    aget-wide v15, v5, v14

    mul-double v17, v17, v11

    add-double v15, v15, v17

    aput-wide v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->f:[D

    add-int/lit8 v14, v13, -0x1

    aget-wide v14, v7, v14

    mul-double/2addr v14, v11

    add-double/2addr v14, v2

    aget-object v7, v8, v13

    invoke-interface {v1, v14, v15, v10, v7}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    move v1, v9

    :goto_4
    array-length v2, v4

    if-ge v1, v2, :cond_5

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->h:[D

    aget-wide v2, v2, v9

    aget-object v7, v8, v9

    aget-wide v13, v7, v1

    mul-double/2addr v2, v13

    const/4 v7, 0x1

    :goto_5
    if-ge v7, v6, :cond_4

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->h:[D

    aget-wide v13, v10, v7

    aget-object v10, v8, v7

    aget-wide v15, v10, v1

    mul-double/2addr v13, v15

    add-double/2addr v2, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    aget-wide v13, v5, v1

    mul-double/2addr v2, v11

    add-double/2addr v13, v2

    aput-wide v13, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-object v5
.end method
