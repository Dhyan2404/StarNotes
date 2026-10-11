.class public abstract Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "SourceFile"


# instance fields
.field public final i:Z

.field public final j:[D

.field public final k:[[D

.field public final l:[D

.field public final m:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

.field public final n:D

.field public o:D

.field public p:D

.field public q:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-wide/from16 v8, p13

    .line 1
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    move v0, p2

    .line 2
    iput-boolean v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->i:Z

    move-object v0, p3

    .line 3
    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->j:[D

    move-object v0, p4

    .line 4
    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->k:[[D

    move-object/from16 v0, p5

    .line 5
    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->l:[D

    move-object/from16 v0, p6

    .line 6
    iput-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->m:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    div-double/2addr v2, v0

    iput-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->n:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 8
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 9
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 10
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    .line 11
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    move v0, p2

    .line 12
    iput-boolean v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->i:Z

    move-object v0, p3

    .line 13
    iput-object v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->j:[D

    move-object v0, p4

    .line 14
    iput-object v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->k:[[D

    move-object v0, p5

    .line 15
    iput-object v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->l:[D

    move-object v0, p6

    .line 16
    iput-object v0, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->m:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    div-double/2addr v2, v0

    iput-wide v2, v8, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->n:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 18
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 19
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 20
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    return-void
.end method


# virtual methods
.method public abstract estimateError([[D[D[DD)D
.end method

.method public getMaxGrowth()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->q:D

    return-wide v0
.end method

.method public getMinReduction()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->p:D

    return-wide v0
.end method

.method public abstract getOrder()I
.end method

.method public getSafety()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->o:D

    return-wide v0
.end method

.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-lez v0, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    move v14, v13

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v15

    invoke-virtual {v15}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [D

    iget-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->j:[D

    array-length v0, v0

    add-int/lit8 v8, v0, 0x1

    array-length v0, v9

    filled-new-array {v8, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [[D

    invoke-virtual {v15}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [D

    array-length v0, v9

    new-array v6, v0, [D

    iget-object v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->m:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, v16

    move v4, v14

    move-object v12, v5

    move-object/from16 v5, v17

    move-object/from16 v20, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    iput-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-object v3, v15

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->initIntegration(D[DD)V

    iput-boolean v13, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->shift()V

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    move-wide/from16 v17, v0

    move v6, v2

    move-wide v4, v3

    :goto_2
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v21

    if-ltz v0, :cond_f

    if-nez v6, :cond_1

    iget-boolean v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->i:Z

    if-nez v0, :cond_2

    :cond_1
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    aget-object v2, v16, v13

    invoke-virtual {v10, v0, v1, v9, v2}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    :cond_2
    if-eqz v6, :cond_6

    iget v0, v10, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    new-array v3, v0, [D

    iget-object v1, v10, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-nez v1, :cond_4

    move v1, v13

    :goto_3
    if-ge v1, v0, :cond_3

    iget-wide v4, v10, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    move/from16 v23, v14

    iget-wide v13, v10, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    aget-wide v17, v9, v1

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    add-double/2addr v4, v13

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v14, v23

    const/4 v13, 0x0

    goto :goto_3

    :cond_3
    move/from16 v23, v14

    goto :goto_5

    :cond_4
    move/from16 v23, v14

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_5

    iget-object v2, v10, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v4, v2, v1

    iget-object v2, v10, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v13, v2, v1

    aget-wide v17, v9, v1

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    add-double/2addr v4, v13

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v2

    iget-wide v4, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    const/4 v0, 0x0

    aget-object v13, v16, v0

    const/4 v14, 0x1

    aget-object v17, v16, v14

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object v6, v9

    move-object/from16 v19, v7

    move-object v7, v13

    move v13, v8

    move-object/from16 v8, v19

    move-object v14, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initializeStep(ZI[DD[D[D[D[D)D

    move-result-wide v0

    move-wide v7, v0

    const/4 v6, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v19, v7

    move v13, v8

    move/from16 v23, v14

    move-object v14, v9

    move-wide/from16 v7, v17

    :goto_6
    iput-wide v7, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    if-eqz v23, :cond_7

    iget-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double v2, v0, v7

    cmpl-double v2, v2, p2

    if-ltz v2, :cond_8

    sub-double v0, p2, v0

    iput-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    goto :goto_7

    :cond_7
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double v2, v0, v7

    cmpg-double v2, v2, p2

    if-gtz v2, :cond_8

    sub-double v0, p2, v0

    iput-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    :cond_8
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-ge v0, v13, :cond_b

    const/4 v1, 0x0

    :goto_9
    array-length v2, v15

    if-ge v1, v2, :cond_a

    iget-object v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->k:[[D

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    const/4 v4, 0x0

    aget-wide v17, v2, v4

    aget-object v2, v16, v4

    aget-wide v4, v2, v1

    mul-double v17, v17, v4

    const/4 v2, 0x1

    :goto_a
    if-ge v2, v0, :cond_9

    iget-object v4, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->k:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v2

    aget-object v9, v16, v2

    aget-wide v24, v9, v1

    mul-double v4, v4, v24

    add-double v17, v17, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_9
    aget-wide v2, v14, v1

    iget-wide v4, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double v4, v4, v17

    add-double/2addr v2, v4

    move-object/from16 v9, v19

    aput-wide v2, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    move-object/from16 v9, v19

    iget-wide v1, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-object v3, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->j:[D

    add-int/lit8 v4, v0, -0x1

    aget-wide v3, v3, v4

    move/from16 v17, v6

    iget-wide v5, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aget-object v3, v16, v0

    invoke-virtual {v10, v1, v2, v9, v3}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v17

    goto :goto_8

    :cond_b
    move/from16 v17, v6

    move-object/from16 v9, v19

    const/4 v0, 0x0

    :goto_b
    array-length v1, v15

    if-ge v0, v1, :cond_d

    iget-object v1, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->l:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aget-object v1, v16, v2

    aget-wide v1, v1, v0

    mul-double/2addr v3, v1

    const/4 v1, 0x1

    :goto_c
    if-ge v1, v13, :cond_c

    iget-object v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->l:[D

    aget-wide v5, v2, v1

    aget-object v2, v16, v1

    aget-wide v18, v2, v0

    mul-double v5, v5, v18

    add-double/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_c
    aget-wide v1, v14, v0

    iget-wide v5, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v5, v3

    add-double/2addr v1, v5

    aput-wide v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_d
    iget-wide v4, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->estimateError([[D[D[DD)D

    move-result-wide v4

    cmpl-double v0, v4, v21

    if-ltz v0, :cond_e

    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->q:D

    iget-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->p:D

    iget-wide v6, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->o:D

    move-object/from16 v19, v9

    iget-wide v8, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->n:D

    invoke-static {v4, v5, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    iget-wide v2, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v2, v0

    move/from16 v1, v23

    const/4 v9, 0x0

    invoke-virtual {v10, v2, v3, v1, v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v2

    move v8, v13

    move/from16 v6, v17

    move-object/from16 v7, v19

    move-wide/from16 v17, v2

    move v13, v9

    move-object v9, v14

    move v14, v1

    goto/16 :goto_2

    :cond_e
    move/from16 v6, v17

    move-wide/from16 v17, v7

    move-object v7, v9

    move v8, v13

    move-object v9, v14

    move/from16 v14, v23

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_f
    move-object/from16 v19, v7

    move v1, v14

    move-object v14, v9

    move v9, v13

    move v13, v8

    iget-wide v2, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v7, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v2, v7

    invoke-virtual {v12, v2, v3}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    array-length v0, v15

    move-object/from16 v7, v19

    invoke-static {v7, v9, v14, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v13, -0x1

    aget-object v0, v16, v8

    array-length v2, v15

    move-object/from16 v8, v20

    invoke-static {v0, v9, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    move v3, v1

    move-object v1, v12

    move-object v2, v14

    move/from16 v26, v3

    move-object v3, v8

    move-wide/from16 v27, v4

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v0

    iput-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    array-length v0, v14

    invoke-static {v14, v9, v7, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-nez v0, :cond_15

    iget-wide v0, v10, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v12, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    iget-boolean v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->i:Z

    if-eqz v0, :cond_10

    aget-object v0, v16, v9

    array-length v1, v15

    invoke-static {v8, v9, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->q:D

    iget-wide v2, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->p:D

    iget-wide v4, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->o:D

    move/from16 v19, v6

    move-object/from16 v20, v7

    iget-wide v6, v10, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->n:D

    move-wide/from16 v9, v27

    invoke-static {v9, v10, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v3, v0

    iget-wide v0, v2, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v0, v3

    move/from16 v5, v26

    if-eqz v5, :cond_11

    cmpl-double v0, v0, p2

    if-ltz v0, :cond_12

    goto :goto_d

    :cond_11
    cmpg-double v0, v0, p2

    if-gtz v0, :cond_12

    :goto_d
    const/4 v0, 0x1

    goto :goto_e

    :cond_12
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v2, v3, v4, v5, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    iget-wide v3, v2, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double v6, v3, v0

    if-eqz v5, :cond_13

    cmpl-double v6, v6, p2

    if-ltz v6, :cond_14

    goto :goto_f

    :cond_13
    cmpg-double v6, v6, p2

    if-gtz v6, :cond_14

    :goto_f
    const/4 v6, 0x1

    goto :goto_10

    :cond_14
    const/4 v6, 0x0

    :goto_10
    if-eqz v6, :cond_16

    sub-double v0, p2, v3

    goto :goto_11

    :cond_15
    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object v2, v10

    move/from16 v5, v26

    move-wide/from16 v0, v17

    :cond_16
    :goto_11
    iget-boolean v3, v2, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v3, :cond_17

    iget-wide v0, v2, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v11, v0, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    return-void

    :cond_17
    move-object v10, v2

    move-object v9, v14

    move/from16 v2, v19

    move-object/from16 v7, v20

    move v14, v5

    move-object/from16 v20, v8

    move v8, v13

    const/4 v13, 0x0

    goto/16 :goto_1
.end method

.method public setMaxGrowth(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->q:D

    return-void
.end method

.method public setMinReduction(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->p:D

    return-void
.end method

.method public setSafety(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->o:D

    return-void
.end method
