.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.source "SourceFile"


# static fields
.field public static final p:Ljava/lang/String; = "Adams-Bashforth"


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    const-string v1, "Adams-Bashforth"

    move-object v0, p0

    move v2, p1

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 1
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    return-void
.end method

.method public constructor <init>(IDD[D[D)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v1, "Adams-Bashforth"

    move-object v0, p0

    move v2, p1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 2
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    return-void
.end method


# virtual methods
.method public final a([D[D[DLorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    iget v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-ge v3, v6, :cond_3

    aget-wide v6, p2, v3

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-nez v8, :cond_0

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    goto :goto_1

    :cond_0
    aget-wide v8, v8, v3

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v10, v10, v3

    :goto_1
    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    if-nez v6, :cond_1

    const/4 v6, -0x1

    goto :goto_2

    :cond_1
    move v6, v7

    :goto_2
    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v10

    sub-int/2addr v10, v7

    move-wide v11, v1

    :goto_3
    if-ltz v10, :cond_2

    int-to-double v13, v6

    move-object/from16 v7, p4

    invoke-interface {v7, v10, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    neg-int v6, v6

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_2
    move-object/from16 v7, p4

    aget-wide v13, p3, v3

    sub-double/2addr v11, v13

    aget-wide v13, p2, v3

    aget-wide v15, p1, v3

    sub-double/2addr v13, v15

    add-double/2addr v13, v11

    div-double/2addr v13, v8

    mul-double/2addr v13, v13

    add-double/2addr v4, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    int-to-double v0, v6

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    const/4 v9, 0x0

    if-lez v0, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v11

    array-length v0, v11

    new-array v12, v0, [D

    new-instance v14, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v14}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-virtual {v14, v11, v10, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-object v3, v11

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->initIntegration(D[DD)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->start(D[DD)V

    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v2, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    iget-object v4, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    iget-object v5, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object v13, v14

    move-object v8, v14

    move-wide v14, v0

    move-wide/from16 v16, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-virtual/range {v13 .. v19}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v8, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    invoke-virtual {v8, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    iput-boolean v9, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    :goto_1
    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->shift()V

    array-length v2, v11

    new-array v2, v2, [D

    array-length v3, v11

    new-array v4, v3, [D

    const/4 v5, 0x0

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    move-wide v14, v13

    :goto_2
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, v14, v16

    if-ltz v13, :cond_4

    iget-wide v13, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v13, v0

    invoke-virtual {v8, v13, v14}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v15

    invoke-virtual {v8}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedState()[D

    move-result-object v9

    invoke-virtual {v15, v9, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v5

    array-length v9, v5

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v9, :cond_1

    move/from16 v18, v9

    aget-object v9, v5, v15

    move-object/from16 v19, v5

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v5

    invoke-virtual {v9, v5, v2}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    const/4 v9, 0x1

    add-int/2addr v7, v9

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v18

    move-object/from16 v5, v19

    goto :goto_3

    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v6, v13, v14, v2, v12}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_2

    aget-wide v13, v12, v5

    mul-double/2addr v13, v0

    aput-wide v13, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_2
    iget-object v5, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v5

    iget-object v7, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    invoke-virtual {v6, v7, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    invoke-virtual {v6, v11, v2, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->a([D[D[DLorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v14

    cmpl-double v7, v14, v16

    if-ltz v7, :cond_3

    invoke-virtual {v6, v14, v15}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v16

    mul-double v0, v0, v16

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v1, v10, v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    :cond_3
    move-object/from16 v7, p1

    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    const/4 v9, 0x1

    iput-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    move v7, v10

    iget-wide v9, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v9, v0

    move-object v13, v8

    move-wide/from16 v21, v14

    move-wide v14, v9

    move-wide/from16 v16, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-virtual/range {v13 .. v19}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    invoke-virtual {v8, v9, v10}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    array-length v3, v11

    const/4 v14, 0x0

    invoke-static {v2, v14, v11, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v11

    move-object v3, v12

    move-object v15, v4

    move-object v13, v5

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v0

    iput-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iput-object v15, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    iput-object v13, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    move-object v5, v13

    move-object v13, v8

    move/from16 v20, v14

    move-object v2, v15

    move-wide v14, v9

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    invoke-virtual/range {v13 .. v19}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    iget-boolean v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v0, :cond_b

    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v8, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    iget-boolean v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->resetOccurred:Z

    if-eqz v0, :cond_5

    iget-wide v1, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    move-object/from16 v0, p0

    move-object v3, v11

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->start(D[DD)V

    iget-wide v14, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    iget-object v2, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->scaled:[D

    iget-object v3, v6, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object v13, v8

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v13 .. v19}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    :cond_5
    move-wide/from16 v13, v21

    invoke-virtual {v6, v13, v14}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v0

    iget-wide v2, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v2, v0

    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v0, v2

    if-eqz v7, :cond_6

    cmpl-double v0, v0, p2

    if-ltz v0, :cond_7

    goto :goto_5

    :cond_6
    cmpg-double v0, v0, p2

    if-gtz v0, :cond_7

    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    move/from16 v0, v20

    :goto_6
    invoke-virtual {v6, v2, v3, v7, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    iget-wide v2, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double v4, v2, v0

    if-eqz v7, :cond_8

    cmpl-double v4, v4, p2

    if-ltz v4, :cond_9

    goto :goto_7

    :cond_8
    cmpg-double v4, v4, p2

    if-gtz v4, :cond_9

    :goto_7
    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    move/from16 v4, v20

    :goto_8
    if-eqz v4, :cond_a

    sub-double v0, p2, v2

    :cond_a
    invoke-virtual {v8, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto :goto_9

    :cond_b
    move-wide/from16 v0, v23

    :goto_9
    iget-boolean v2, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v2, :cond_c

    iget-wide v0, v6, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    invoke-virtual {v2, v11}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    return-void

    :cond_c
    move v10, v7

    move/from16 v9, v20

    move-object/from16 v7, p1

    goto/16 :goto_1
.end method
