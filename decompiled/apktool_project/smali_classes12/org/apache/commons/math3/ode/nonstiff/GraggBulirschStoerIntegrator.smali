.class public Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "Gragg-Bulirsch-Stoer"


# instance fields
.field public i:I

.field public j:[I

.field public k:[I

.field public l:[D

.field public m:[D

.field public n:[[D

.field public o:Z

.field public p:I

.field public q:I

.field public r:D

.field public s:D

.field public t:D

.field public u:D

.field public v:D

.field public w:D

.field public x:D

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(DDDD)V
    .locals 14

    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    .line 1
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    move-object p1, p0

    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move-wide/from16 p5, v3

    .line 2
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    move-object v5, p0

    .line 3
    invoke-virtual/range {v5 .. v13}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setControlFactors(DDDD)V

    const/4 v0, -0x1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    .line 4
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    move-object v2, p0

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 9

    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 6
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    const/4 p2, 0x1

    const/4 p3, -0x1

    const/4 p4, -0x1

    const-wide/high16 p5, -0x4010000000000000L    # -1.0

    move-object p1, p0

    .line 7
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 8
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setControlFactors(DDDD)V

    const/4 p2, -0x1

    const-wide/high16 p3, -0x4010000000000000L    # -1.0

    .line 9
    invoke-virtual/range {p1 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    return-void
.end method


# virtual methods
.method public final a(II[[D[D)V
    .locals 11

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1

    :goto_1
    array-length v3, p4

    if-ge v2, v3, :cond_0

    sub-int v3, p2, v1

    add-int/lit8 v4, v3, -0x1

    aget-object v4, p3, v4

    aget-object v3, p3, v3

    aget-wide v5, v3, v2

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->n:[[D

    add-int v7, p2, p1

    aget-object v3, v3, v7

    add-int/lit8 v7, v1, -0x1

    aget-wide v7, v3, v7

    aget-wide v9, v4, v2

    sub-double v9, v5, v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_2
    array-length v3, p4

    if-ge v1, v3, :cond_2

    aget-object v3, p3, v2

    aget-wide v3, v3, v1

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->n:[[D

    add-int v6, p2, p1

    aget-object v5, v5, v6

    add-int/lit8 v6, p2, -0x1

    aget-wide v5, v5, v6

    aget-wide v7, p4, v1

    sub-double v7, v3, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    aput-wide v3, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->b()V

    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->b()V

    return-void
.end method

.method public final b()V
    .locals 10

    iget v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->i:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v1, v0, :cond_1

    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->k:[I

    new-array v1, v0, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->n:[[D

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->l:[D

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->m:[D

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->k:[I

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v2, v1

    move v2, v4

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->k:[I

    add-int/lit8 v5, v2, -0x1

    aget v5, v3, v5

    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_6

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->n:[[D

    if-lez v2, :cond_4

    new-array v5, v2, [D

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    aput-object v5, v3, v2

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_5

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    aget v6, v5, v2

    int-to-double v6, v6

    sub-int v8, v2, v3

    sub-int/2addr v8, v4

    aget v5, v5, v8

    int-to-double v8, v5

    div-double/2addr v6, v8

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->n:[[D

    aget-object v5, v5, v2

    mul-double/2addr v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    div-double/2addr v8, v6

    aput-wide v8, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final c([D[D[D)V
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    array-length v0, p3

    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    aput-wide v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length v0, p3

    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v4, v0, v1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v6, v0, v1

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    aput-wide v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final d(D[DDI[D[[D[D[D[D)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    aget v5, v5, v2

    int-to-double v6, v5

    div-double v6, p4, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v6

    add-double v10, p1, v6

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    array-length v14, v1

    if-ge v13, v14, :cond_0

    aget-wide v14, v1, v13

    aput-wide v14, p11, v13

    aget-wide v14, v1, v13

    aget-object v16, p8, v12

    aget-wide v16, v16, v13

    mul-double v16, v16, v6

    add-double v14, v14, v16

    aput-wide v14, v4, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    aget-object v14, p8, v13

    invoke-virtual {v0, v10, v11, v4, v14}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    move v14, v13

    :goto_1
    if-ge v14, v5, :cond_7

    mul-int/lit8 v15, v14, 0x2

    if-ne v15, v5, :cond_1

    array-length v15, v1

    move-object/from16 v13, p9

    invoke-static {v4, v12, v13, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_1
    move-object/from16 v13, p9

    :goto_2
    add-double/2addr v10, v6

    move v15, v12

    :goto_3
    array-length v12, v1

    if-ge v15, v12, :cond_2

    aget-wide v16, v4, v15

    aget-wide v18, p11, v15

    aget-object v12, p8, v14

    aget-wide v20, v12, v15

    mul-double v20, v20, v8

    add-double v18, v18, v20

    aput-wide v18, v4, v15

    aput-wide v16, p11, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v14, 0x1

    aget-object v15, p8, v12

    invoke-virtual {v0, v10, v11, v4, v15}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    iget-boolean v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->o:Z

    if-eqz v15, :cond_5

    iget v15, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->p:I

    if-gt v14, v15, :cond_5

    iget v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->q:I

    if-ge v2, v14, :cond_5

    move-wide v15, v8

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    :goto_4
    array-length v0, v3

    if-ge v14, v0, :cond_3

    const/4 v0, 0x0

    aget-object v17, p8, v0

    aget-wide v17, v17, v14

    aget-wide v19, v3, v14

    div-double v17, v17, v19

    mul-double v17, v17, v17

    add-double v8, v8, v17

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v17, 0x0

    :goto_5
    array-length v14, v3

    if-ge v0, v14, :cond_4

    aget-object v14, p8, v12

    aget-wide v19, v14, v0

    const/4 v14, 0x0

    aget-object v21, p8, v14

    aget-wide v21, v21, v0

    sub-double v19, v19, v21

    aget-wide v21, v3, v0

    div-double v19, v19, v21

    mul-double v19, v19, v19

    add-double v17, v17, v19

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-static {v2, v3, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v8

    cmpl-double v0, v17, v2

    if-lez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_5
    move-wide v15, v8

    :cond_6
    const/4 v0, 0x0

    move/from16 v2, p6

    move-object/from16 v3, p7

    move v14, v12

    move-wide v8, v15

    const/4 v13, 0x1

    move v12, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_7
    move v0, v12

    :goto_6
    array-length v0, v1

    if-ge v12, v0, :cond_8

    aget-wide v2, p11, v12

    aget-wide v8, v4, v12

    add-double/2addr v2, v8

    aget-object v0, p8, v5

    aget-wide v8, v0, v12

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v8

    aput-wide v2, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    const/4 v15, 0x1

    if-lez v0, :cond_0

    move v11, v15

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v10

    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v1, v0

    new-array v9, v1, [D

    array-length v1, v0

    new-array v8, v1, [D

    array-length v1, v0

    new-array v7, v1, [D

    array-length v1, v0

    new-array v6, v1, [D

    iget-object v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    array-length v2, v1

    sub-int/2addr v2, v15

    new-array v5, v2, [[D

    array-length v1, v1

    sub-int/2addr v1, v15

    new-array v4, v1, [[D

    const/4 v1, 0x0

    :goto_1
    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    array-length v3, v2

    sub-int/2addr v3, v15

    if-ge v1, v3, :cond_1

    array-length v2, v0

    new-array v2, v2, [D

    aput-object v2, v5, v1

    array-length v2, v0

    new-array v2, v2, [D

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    array-length v1, v2

    new-array v3, v1, [[[D

    const/4 v1, 0x0

    :goto_2
    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    array-length v14, v2

    if-ge v1, v14, :cond_3

    aget v2, v2, v1

    add-int/2addr v2, v15

    new-array v2, v2, [[D

    aput-object v2, v3, v1

    const/4 v14, 0x0

    aput-object v9, v2, v14

    const/4 v2, 0x0

    :goto_3
    iget-object v14, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    aget v14, v14, v1

    if-ge v2, v14, :cond_2

    aget-object v14, v3, v1

    add-int/lit8 v2, v2, 0x1

    array-length v15, v10

    new-array v15, v15, [D

    aput-object v15, v14, v2

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    if-eq v0, v10, :cond_4

    array-length v1, v10

    const/4 v2, 0x0

    invoke-static {v10, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    array-length v1, v10

    new-array v14, v1, [D

    iget-object v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    array-length v1, v1

    const/4 v15, 0x2

    mul-int/2addr v1, v15

    const/4 v2, 0x1

    add-int/2addr v1, v2

    array-length v2, v10

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [[D

    iget v1, v12, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    new-array v2, v1, [D

    invoke-virtual {v12, v0, v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->c([D[D[D)V

    iget-object v1, v12, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    move-object/from16 v17, v2

    if-nez v1, :cond_5

    iget-wide v1, v12, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    aget-wide v18, v1, v2

    move-wide/from16 v1, v18

    :goto_4
    move-object/from16 v19, v3

    move-object/from16 v18, v4

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v1

    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    array-length v3, v3

    sub-int/2addr v3, v15

    const-wide v20, 0x3fe3333333333333L    # 0.6

    mul-double v1, v1, v20

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v1, v20, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v3, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v22

    new-instance v4, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v24

    move-object v1, v4

    move-object/from16 v3, v17

    move-object v2, v0

    move-object/from16 v17, v19

    move-object/from16 v19, v3

    move-object v3, v9

    move-object v13, v4

    move-object/from16 v15, v18

    move-object v4, v8

    move-object v15, v5

    move-object v5, v14

    move-object/from16 v26, v6

    move-object/from16 v6, v16

    move-object/from16 v27, v7

    move v7, v11

    move-object/from16 v28, v14

    move-object v14, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v14

    move-object v14, v9

    move-object/from16 v9, v24

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;-><init>([D[D[D[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    iput-wide v1, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v9, v0

    move-object/from16 v0, p0

    move-object v3, v10

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->initIntegration(D[DD)V

    iget-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->l:[D

    const-wide/16 v29, 0x0

    const/4 v1, 0x0

    aput-wide v29, v0, v1

    iput-boolean v1, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v31, v0

    move/from16 v34, v22

    move-wide/from16 v1, v29

    const/4 v0, 0x1

    const/16 v22, 0x0

    const/16 v24, 0x1

    const/16 v33, 0x0

    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {v13}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->shift()V

    if-nez v22, :cond_6

    iget-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v12, v3, v4, v9, v14}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    :cond_6
    if-eqz v24, :cond_7

    mul-int/lit8 v0, v34, 0x2

    const/4 v1, 0x1

    add-int/lit8 v2, v0, 0x1

    iget-wide v4, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    move-object/from16 v0, p0

    move v1, v11

    move-object/from16 v3, v19

    move-object v6, v9

    move-object v7, v14

    move-object/from16 v8, v27

    move-object/from16 v35, v9

    move-object/from16 v9, v26

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initializeStep(ZI[DD[D[D[D[D)D

    move-result-wide v0

    move-wide v1, v0

    goto :goto_6

    :cond_7
    move-object/from16 v35, v9

    :goto_6
    const/16 v36, 0x0

    goto :goto_7

    :cond_8
    move-object/from16 v35, v9

    move/from16 v36, v0

    :goto_7
    iput-wide v1, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    if-eqz v11, :cond_9

    iget-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v3, v1

    cmpl-double v0, v3, p2

    if-gtz v0, :cond_a

    :cond_9
    if-nez v11, :cond_b

    iget-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    add-double/2addr v3, v1

    cmpg-double v0, v3, p2

    if-gez v0, :cond_b

    :cond_a
    iget-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    sub-double v3, p2, v3

    iput-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    :cond_b
    iget-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v5, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v3, v5

    if-eqz v11, :cond_c

    cmpl-double v0, v3, p2

    if-ltz v0, :cond_d

    goto :goto_8

    :cond_c
    cmpg-double v0, v3, p2

    if-gtz v0, :cond_d

    :goto_8
    const/4 v0, 0x1

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    const/4 v9, -0x1

    move v6, v9

    move-wide/from16 v38, v31

    move/from16 v8, v34

    const/16 v34, 0x1

    const/16 v37, 0x0

    move-wide/from16 v31, v1

    :goto_a
    if-eqz v34, :cond_22

    add-int/lit8 v7, v6, 0x1

    iget-wide v1, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v4, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    aget-object v42, v17, v7

    if-nez v7, :cond_e

    const/4 v0, 0x0

    aget-object v3, v16, v0

    move-object/from16 v43, v3

    goto :goto_b

    :cond_e
    add-int/lit8 v0, v7, -0x1

    aget-object v0, v15, v0

    move-object/from16 v43, v0

    :goto_b
    if-nez v7, :cond_f

    move-object/from16 v44, v23

    goto :goto_c

    :cond_f
    add-int/lit8 v0, v7, -0x1

    aget-object v0, v18, v0

    move-object/from16 v44, v0

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v3, v35

    move-object/from16 v45, v13

    move-object/from16 v46, v14

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move v6, v7

    move v13, v7

    move-object/from16 v7, v19

    move v14, v8

    move-object/from16 v8, v42

    move-object/from16 v42, v15

    move v15, v9

    move-object/from16 v9, v43

    move-object/from16 v47, v10

    move-object/from16 v10, v44

    move v15, v11

    move-object/from16 v11, v27

    invoke-virtual/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->d(D[DDI[D[[D[D[D[D)Z

    move-result v0

    if-nez v0, :cond_10

    iget-wide v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    iget-wide v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->r:D

    mul-double/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v1, v15, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v31

    move/from16 v34, v2

    move v6, v13

    move v8, v14

    move v11, v15

    move-object/from16 v15, v42

    move-object/from16 v13, v45

    move-object/from16 v14, v46

    move-object/from16 v10, v47

    const/4 v9, -0x1

    :goto_d
    const/16 v37, 0x1

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    if-lez v13, :cond_21

    move-object/from16 v8, v18

    move-object/from16 v7, v23

    invoke-virtual {v12, v2, v13, v8, v7}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->a(II[[D[D)V

    move-object/from16 v10, v19

    move-object/from16 v9, v35

    invoke-virtual {v12, v9, v7, v10}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->c([D[D[D)V

    move v0, v2

    move-wide/from16 v3, v29

    :goto_e
    iget v1, v12, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-ge v0, v1, :cond_11

    aget-wide v5, v7, v0

    aget-object v1, v8, v2

    aget-wide v1, v1, v0

    sub-double/2addr v5, v1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    aget-wide v5, v10, v0

    div-double/2addr v1, v5

    mul-double/2addr v1, v1

    add-double/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    goto :goto_e

    :cond_11
    int-to-double v0, v1

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x430c6bf526340000L    # 1.0E15

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_20

    const/4 v2, 0x1

    if-le v13, v2, :cond_12

    cmpl-double v3, v0, v38

    if-lez v3, :cond_12

    goto/16 :goto_14

    :cond_12
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double/2addr v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v38

    mul-int/lit8 v3, v13, 0x2

    add-int/2addr v3, v2

    int-to-double v2, v3

    div-double v2, v5, v2

    iget-wide v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->t:D

    move-object/from16 v18, v8

    move-object/from16 v35, v9

    iget-wide v8, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->s:D

    div-double v8, v0, v8

    invoke-static {v8, v9, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v8

    div-double/2addr v5, v8

    iget-wide v8, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->u:D

    invoke-static {v8, v9, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    iget-wide v8, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->v:D

    div-double v8, v2, v8

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    div-double v2, v40, v2

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    invoke-static {v8, v9, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->m:[D

    iget-wide v5, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v5, v2

    const/4 v2, 0x1

    invoke-virtual {v12, v5, v6, v15, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    aput-wide v2, v4, v13

    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->l:[D

    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->k:[I

    aget v3, v3, v13

    int-to-double v3, v3

    iget-object v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->m:[D

    aget-wide v8, v5, v13

    div-double/2addr v3, v8

    aput-wide v3, v2, v13

    sub-int v6, v13, v14

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1b

    if-eqz v6, :cond_16

    const/4 v3, 0x1

    if-eq v6, v3, :cond_14

    if-nez v24, :cond_13

    iget-boolean v2, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v2, :cond_1e

    :cond_13
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v3

    if-gtz v0, :cond_1e

    goto :goto_f

    :cond_14
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v3

    if-lez v0, :cond_17

    const/4 v0, 0x1

    if-le v14, v0, :cond_15

    add-int/lit8 v0, v14, -0x1

    aget-wide v0, v2, v0

    iget-wide v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->w:D

    aget-wide v31, v2, v14

    mul-double v3, v3, v31

    cmpg-double v0, v0, v3

    if-gez v0, :cond_15

    add-int/lit8 v0, v14, -0x1

    move v14, v0

    :cond_15
    aget-wide v31, v5, v14

    const/16 v37, 0x1

    goto :goto_f

    :cond_16
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v0, v3

    if-gtz v3, :cond_18

    :cond_17
    :goto_f
    move-object/from16 v19, v10

    move v8, v14

    const/16 v34, 0x0

    goto/16 :goto_13

    :cond_18
    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    add-int/lit8 v4, v13, 0x1

    aget v4, v3, v4

    int-to-double v8, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-double v3, v3

    div-double/2addr v8, v3

    mul-double/2addr v8, v8

    cmpl-double v0, v0, v8

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    if-le v14, v0, :cond_19

    add-int/lit8 v8, v14, -0x1

    aget-wide v0, v2, v8

    iget-wide v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->w:D

    aget-wide v8, v2, v14

    mul-double/2addr v3, v8

    cmpg-double v0, v0, v3

    if-gez v0, :cond_19

    add-int/lit8 v8, v14, -0x1

    goto :goto_10

    :cond_19
    move v8, v14

    :goto_10
    aget-wide v31, v5, v8

    const/16 v34, 0x0

    const/16 v37, 0x1

    goto :goto_11

    :cond_1a
    move v8, v14

    :goto_11
    move-object/from16 v19, v10

    goto :goto_13

    :cond_1b
    const/4 v6, 0x1

    if-le v14, v6, :cond_1e

    if-nez v33, :cond_1e

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v0, v8

    if-gtz v6, :cond_1c

    goto :goto_f

    :cond_1c
    iget-object v6, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    aget v8, v6, v14

    int-to-double v8, v8

    add-int/lit8 v11, v14, 0x1

    aget v11, v6, v11

    move-object/from16 v19, v10

    int-to-double v10, v11

    mul-double/2addr v8, v10

    const/4 v10, 0x0

    aget v6, v6, v10

    mul-int/2addr v6, v6

    int-to-double v10, v6

    div-double/2addr v8, v10

    mul-double/2addr v8, v8

    cmpl-double v0, v0, v8

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    if-le v13, v0, :cond_1d

    add-int/lit8 v0, v13, -0x1

    aget-wide v0, v2, v0

    iget-wide v8, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->w:D

    mul-double/2addr v8, v3

    cmpg-double v0, v0, v8

    if-gez v0, :cond_1d

    add-int/lit8 v0, v13, -0x1

    move v8, v0

    goto :goto_12

    :cond_1d
    move v8, v13

    :goto_12
    aget-wide v31, v5, v8

    const/16 v34, 0x0

    const/16 v37, 0x1

    goto :goto_13

    :cond_1e
    move-object/from16 v19, v10

    :cond_1f
    move v8, v14

    :goto_13
    move-object/from16 v23, v7

    move v6, v13

    goto :goto_15

    :cond_20
    :goto_14
    move-object/from16 v18, v8

    move-object/from16 v35, v9

    move-object/from16 v19, v10

    iget-wide v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    iget-wide v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->r:D

    mul-double/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v1, v15, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v31

    move-object/from16 v23, v7

    move v6, v13

    move v8, v14

    move v11, v15

    move-object/from16 v15, v42

    move-object/from16 v13, v45

    move-object/from16 v14, v46

    move-object/from16 v10, v47

    const/4 v9, -0x1

    const/16 v34, 0x0

    goto/16 :goto_d

    :cond_21
    move v6, v13

    move v8, v14

    :goto_15
    move v11, v15

    move-object/from16 v15, v42

    move-object/from16 v13, v45

    move-object/from16 v14, v46

    move-object/from16 v10, v47

    const/4 v9, -0x1

    goto/16 :goto_a

    :cond_22
    move-object/from16 v47, v10

    move-object/from16 v45, v13

    move-object/from16 v46, v14

    move-object/from16 v42, v15

    move-object/from16 v7, v23

    move v14, v8

    move v15, v11

    if-nez v37, :cond_23

    iget-wide v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v2, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v0, v2

    move-object/from16 v8, v28

    invoke-virtual {v12, v0, v1, v7, v8}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    goto :goto_16

    :cond_23
    move-object/from16 v8, v28

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMaxStep()D

    move-result-wide v0

    if-nez v37, :cond_2e

    const/4 v2, 0x1

    :goto_17
    if-gt v2, v6, :cond_24

    const/4 v3, 0x0

    aget-object v4, v16, v3

    move-object/from16 v9, v42

    invoke-virtual {v12, v3, v2, v9, v4}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->a(II[[D[D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_24
    move-object/from16 v9, v42

    mul-int/lit8 v2, v6, 0x2

    iget v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->z:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_2c

    div-int/lit8 v4, v3, 0x2

    iget-object v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    aget v5, v5, v4

    int-to-double v10, v5

    mul-double v10, v10, v20

    invoke-static {v10, v11, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v10

    aget-object v5, v17, v4

    array-length v5, v5

    const/4 v13, 0x2

    div-int/2addr v5, v13

    move-wide/from16 v42, v0

    move/from16 v23, v15

    move-object/from16 v15, v47

    const/4 v13, 0x0

    :goto_19
    array-length v0, v15

    if-ge v13, v0, :cond_25

    add-int/lit8 v0, v3, 0x1

    aget-object v0, v16, v0

    aget-object v1, v17, v4

    add-int v24, v5, v3

    aget-object v1, v1, v24

    aget-wide v47, v1, v13

    mul-double v47, v47, v10

    aput-wide v47, v0, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    :cond_25
    const/4 v0, 0x1

    :goto_1a
    sub-int v1, v6, v4

    if-gt v0, v1, :cond_27

    iget-object v1, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    add-int v5, v0, v4

    aget v1, v1, v5

    int-to-double v10, v1

    mul-double v10, v10, v20

    invoke-static {v10, v11, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v10

    aget-object v1, v17, v5

    array-length v1, v1

    const/4 v13, 0x2

    div-int/2addr v1, v13

    move/from16 v24, v14

    const/4 v13, 0x0

    :goto_1b
    array-length v14, v15

    if-ge v13, v14, :cond_26

    add-int/lit8 v14, v0, -0x1

    aget-object v14, v9, v14

    aget-object v28, v17, v5

    add-int v34, v1, v3

    aget-object v28, v28, v34

    aget-wide v47, v28, v13

    mul-double v47, v47, v10

    aput-wide v47, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1b

    :cond_26
    add-int/lit8 v1, v3, 0x1

    aget-object v1, v16, v1

    invoke-virtual {v12, v4, v0, v9, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->a(II[[D[D)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v14, v24

    goto :goto_1a

    :cond_27
    move/from16 v24, v14

    const/4 v0, 0x0

    :goto_1c
    array-length v1, v15

    if-ge v0, v1, :cond_28

    add-int/lit8 v1, v3, 0x1

    aget-object v1, v16, v1

    aget-wide v4, v1, v0

    iget-wide v10, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    mul-double/2addr v4, v10

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_28
    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v0, v3, 0x2

    :goto_1d
    if-gt v0, v6, :cond_2b

    aget-object v1, v17, v0

    array-length v1, v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_1e
    mul-int/lit8 v4, v3, 0x2

    if-lt v1, v4, :cond_2a

    const/4 v4, 0x0

    :goto_1f
    array-length v5, v15

    if-ge v4, v5, :cond_29

    aget-object v5, v17, v0

    aget-object v10, v5, v1

    aget-wide v13, v10, v4

    add-int/lit8 v11, v1, -0x2

    aget-object v5, v5, v11

    aget-wide v47, v5, v4

    sub-double v13, v13, v47

    aput-wide v13, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2b
    move-object/from16 v47, v15

    move/from16 v15, v23

    move/from16 v14, v24

    move-wide/from16 v0, v42

    goto/16 :goto_18

    :cond_2c
    move-wide/from16 v42, v0

    move/from16 v24, v14

    move/from16 v23, v15

    move-object/from16 v15, v47

    if-ltz v2, :cond_2d

    iget-wide v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    move-object/from16 v10, v45

    invoke-virtual {v10, v2, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->computeCoefficients(ID)V

    iget-boolean v0, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->y:Z

    move-object/from16 v11, v19

    if-eqz v0, :cond_2f

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->estimateError([D)D

    move-result-wide v0

    iget-wide v3, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-int/lit8 v2, v2, 0x4

    int-to-double v13, v2

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    div-double v13, v40, v13

    invoke-static {v0, v1, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v13

    move/from16 v19, v6

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v13, v14, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v0, v0, v4

    move-wide v13, v2

    if-lez v0, :cond_30

    move-wide/from16 v31, v13

    const/16 v37, 0x1

    goto :goto_21

    :cond_2d
    move-object/from16 v11, v19

    move-object/from16 v10, v45

    goto :goto_20

    :cond_2e
    move/from16 v24, v14

    move/from16 v23, v15

    move-object/from16 v11, v19

    move-object/from16 v9, v42

    move-object/from16 v10, v45

    move-object/from16 v15, v47

    move-wide/from16 v42, v0

    :cond_2f
    :goto_20
    move/from16 v19, v6

    move-wide/from16 v13, v42

    :cond_30
    :goto_21
    if-nez v37, :cond_3c

    iget-wide v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v2, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    add-double/2addr v0, v2

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v7

    move-object v3, v8

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v0

    iput-wide v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    array-length v0, v15

    move-object/from16 v1, v35

    const/4 v2, 0x0

    invoke-static {v7, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v15

    move-object/from16 v3, v46

    invoke-static {v8, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v0, v19

    const/4 v2, 0x1

    if-ne v0, v2, :cond_33

    move-object/from16 v46, v3

    move-object v5, v7

    move-object/from16 v28, v8

    move-object/from16 v42, v9

    move/from16 v4, v24

    if-eqz v33, :cond_31

    goto :goto_22

    :cond_31
    const/4 v2, 0x2

    :cond_32
    :goto_22
    const/4 v3, 0x2

    goto/16 :goto_25

    :cond_33
    move/from16 v4, v24

    if-gt v0, v4, :cond_36

    iget-object v5, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->l:[D

    add-int/lit8 v6, v0, -0x1

    aget-wide v31, v5, v6

    move-object/from16 v46, v3

    iget-wide v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->w:D

    aget-wide v34, v5, v0

    mul-double v2, v2, v34

    cmpg-double v2, v31, v2

    if-gez v2, :cond_34

    move v2, v6

    goto :goto_23

    :cond_34
    iget-wide v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->x:D

    mul-double v2, v2, v31

    cmpg-double v2, v34, v2

    if-gez v2, :cond_35

    add-int/lit8 v6, v0, 0x1

    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    array-length v2, v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v6, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    move-object v5, v7

    move-object/from16 v28, v8

    move-object/from16 v42, v9

    goto :goto_25

    :cond_35
    move v2, v0

    :goto_23
    move-object v5, v7

    move-object/from16 v28, v8

    move-object/from16 v42, v9

    goto :goto_22

    :cond_36
    move-object/from16 v46, v3

    const/4 v3, 0x2

    add-int/lit8 v6, v0, -0x1

    if-le v0, v3, :cond_37

    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->l:[D

    add-int/lit8 v3, v0, -0x2

    aget-wide v31, v2, v3

    move-object v5, v7

    move-object/from16 v28, v8

    iget-wide v7, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->w:D

    aget-wide v34, v2, v6

    mul-double v7, v7, v34

    cmpg-double v2, v31, v7

    if-gez v2, :cond_38

    move v2, v3

    goto :goto_24

    :cond_37
    move-object v5, v7

    move-object/from16 v28, v8

    :cond_38
    move v2, v6

    :goto_24
    iget-object v3, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->l:[D

    aget-wide v6, v3, v0

    move-object/from16 v42, v9

    iget-wide v8, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->x:D

    aget-wide v31, v3, v2

    mul-double v8, v8, v31

    cmpg-double v3, v6, v8

    if-gez v3, :cond_32

    iget-object v2, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->j:[I

    array-length v2, v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    :goto_25
    if-eqz v33, :cond_39

    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    iget-wide v6, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    iget-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->m:[D

    aget-wide v8, v0, v2

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    move-wide/from16 v31, v6

    move/from16 v8, v23

    const/4 v0, 0x0

    goto :goto_27

    :cond_39
    if-gt v2, v0, :cond_3a

    iget-object v0, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->m:[D

    aget-wide v6, v0, v2

    move/from16 v19, v2

    move/from16 v8, v23

    const/4 v0, 0x0

    goto :goto_26

    :cond_3a
    if-ge v0, v4, :cond_3b

    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->l:[D

    aget-wide v6, v4, v0

    iget-wide v8, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->x:D

    add-int/lit8 v19, v0, -0x1

    aget-wide v24, v4, v19

    mul-double v8, v8, v24

    cmpg-double v4, v6, v8

    if-gez v4, :cond_3b

    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->m:[D

    aget-wide v6, v4, v0

    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->k:[I

    add-int/lit8 v8, v2, 0x1

    aget v8, v4, v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    aget v0, v4, v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    move/from16 v8, v23

    const/4 v0, 0x0

    invoke-virtual {v12, v6, v7, v8, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v6

    move/from16 v19, v2

    goto :goto_26

    :cond_3b
    move/from16 v8, v23

    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->m:[D

    aget-wide v6, v4, v0

    iget-object v4, v12, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->k:[I

    aget v9, v4, v2

    move/from16 v19, v2

    int-to-double v2, v9

    mul-double/2addr v6, v2

    aget v0, v4, v0

    int-to-double v2, v0

    div-double/2addr v6, v2

    const/4 v0, 0x0

    invoke-virtual {v12, v6, v7, v8, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->filterStep(DZZ)D

    move-result-wide v6

    :goto_26
    move-wide/from16 v31, v6

    move/from16 v2, v19

    :goto_27
    move/from16 v34, v2

    move-wide/from16 v2, v31

    const/16 v22, 0x1

    const/16 v36, 0x1

    goto :goto_28

    :cond_3c
    move-object v5, v7

    move-object/from16 v28, v8

    move-object/from16 v42, v9

    move/from16 v8, v23

    move/from16 v4, v24

    move-object/from16 v1, v35

    const/4 v0, 0x0

    move/from16 v34, v4

    move-wide/from16 v2, v31

    :goto_28
    invoke-static {v2, v3, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    if-nez v8, :cond_3d

    neg-double v2, v2

    :cond_3d
    if-eqz v37, :cond_3e

    iput-boolean v0, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    const/16 v33, 0x1

    goto :goto_29

    :cond_3e
    move/from16 v33, v0

    :goto_29
    iget-boolean v4, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->isLastStep:Z

    if-eqz v4, :cond_3f

    iget-wide v2, v12, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    return-void

    :cond_3f
    move-object/from16 v4, p1

    move/from16 v24, v0

    move-object v9, v1

    move-wide v1, v2

    move-object/from16 v23, v5

    move-object v13, v10

    move-object/from16 v19, v11

    move-object v10, v15

    move/from16 v0, v36

    move-wide/from16 v31, v38

    move-object/from16 v15, v42

    move-object/from16 v14, v46

    move v11, v8

    goto/16 :goto_5
.end method

.method public setControlFactors(DDDD)V
    .locals 5

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, p1, v0

    const-wide v3, 0x3fefff2e48e8a71eL    # 0.9999

    if-ltz v2, :cond_1

    cmpl-double v2, p1, v3

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->s:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide p1, 0x3fe4cccccccccccdL    # 0.65

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->s:D

    :goto_1
    cmpg-double p1, p3, v0

    if-ltz p1, :cond_3

    cmpl-double p1, p3, v3

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    iput-wide p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->t:D

    goto :goto_3

    :cond_3
    :goto_2
    const-wide p1, 0x3fee147ae147ae14L    # 0.94

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->t:D

    :goto_3
    cmpg-double p1, p5, v0

    if-ltz p1, :cond_5

    cmpl-double p1, p5, v3

    if-lez p1, :cond_4

    goto :goto_4

    :cond_4
    iput-wide p5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->u:D

    goto :goto_5

    :cond_5
    :goto_4
    const-wide p1, 0x3f947ae147ae147bL    # 0.02

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->u:D

    :goto_5
    const-wide p1, 0x3ff00068db8bac71L    # 1.0001

    cmpg-double p1, p7, p1

    if-ltz p1, :cond_7

    const-wide p1, 0x408f3f3333333333L    # 999.9

    cmpl-double p1, p7, p1

    if-lez p1, :cond_6

    goto :goto_6

    :cond_6
    iput-wide p7, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->v:D

    goto :goto_7

    :cond_7
    :goto_6
    const-wide/high16 p1, 0x4010000000000000L    # 4.0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->v:D

    :goto_7
    return-void
.end method

.method public setInterpolationControl(ZI)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->y:Z

    if-lez p2, :cond_1

    const/4 p1, 0x7

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->z:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->z:I

    :goto_1
    return-void
.end method

.method public setOrderControl(IDD)V
    .locals 4

    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    :cond_0
    const/16 p1, 0x12

    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->i:I

    :cond_1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, p2, v0

    const-wide v2, 0x3fefff2e48e8a71eL    # 0.9999

    if-ltz p1, :cond_3

    cmpl-double p1, p2, v2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->w:D

    goto :goto_1

    :cond_3
    :goto_0
    const-wide p1, 0x3fe999999999999aL    # 0.8

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->w:D

    :goto_1
    cmpg-double p1, p4, v0

    if-ltz p1, :cond_5

    cmpl-double p1, p4, v2

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    iput-wide p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->x:D

    goto :goto_3

    :cond_5
    :goto_2
    const-wide p1, 0x3feccccccccccccdL    # 0.9

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->x:D

    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->b()V

    return-void
.end method

.method public setStabilityCheck(ZIID)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->o:Z

    if-gtz p2, :cond_0

    const/4 p2, 0x2

    :cond_0
    iput p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->q:I

    if-gtz p3, :cond_1

    const/4 p3, 0x1

    :cond_1
    iput p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->p:I

    const-wide p1, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, p4, p1

    if-ltz p1, :cond_3

    const-wide p1, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double p1, p4, p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    iput-wide p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->r:D

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->r:D

    :goto_1
    return-void
.end method
