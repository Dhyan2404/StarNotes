.class public abstract Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractIntegrator;
.source "SourceFile"


# instance fields
.field public f:D

.field public g:D

.field public h:D

.field protected mainSetDimension:I

.field protected scalAbsoluteTolerance:D

.field protected scalRelativeTolerance:D

.field protected vecAbsoluteTolerance:[D

.field protected vecRelativeTolerance:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;DDDD)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    move-wide/from16 v7, p8

    .line 2
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->setStepSizeControl(DDDD)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DD[D[D)V
    .locals 7

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    .line 5
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->setStepSizeControl(DD[D[D)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    return-void
.end method


# virtual methods
.method public filterStep(DZZ)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->g:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    if-eqz p4, :cond_1

    if-eqz p3, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_0
    neg-double p1, v2

    goto :goto_0

    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MINIMAL_STEPSIZE_REACHED_DURING_INTEGRATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->g:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p2, 0x1

    invoke-direct {p3, p4, p1, p0, p2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3

    :cond_2
    :goto_0
    iget-wide p3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->h:D

    cmpl-double p0, p1, p3

    if-lez p0, :cond_3

    move-wide p1, p3

    goto :goto_1

    :cond_3
    neg-double v0, p3

    cmpg-double p0, p1, v0

    if-gez p0, :cond_4

    neg-double p1, p3

    :cond_4
    :goto_1
    return-wide p1
.end method

.method public getCurrentStepStart()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    return-wide v0
.end method

.method public getMaxStep()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->h:D

    return-wide v0
.end method

.method public getMinStep()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->g:D

    return-wide v0
.end method

.method public initializeStep(ZI[DD[D[D[D[D)D
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    iget-wide v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->f:D

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-double v5, v5

    :goto_0
    return-wide v5

    :cond_1
    const/4 v5, 0x0

    move v6, v5

    move-wide v9, v7

    move-wide v11, v9

    :goto_1
    array-length v13, v1

    if-ge v6, v13, :cond_2

    aget-wide v13, v2, v6

    aget-wide v15, v1, v6

    div-double/2addr v13, v15

    mul-double/2addr v13, v13

    add-double/2addr v9, v13

    aget-wide v13, p7, v6

    div-double/2addr v13, v15

    mul-double/2addr v13, v13

    add-double/2addr v11, v13

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const-wide v13, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v6, v9, v13

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    const-wide v7, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    if-ltz v6, :cond_4

    cmpg-double v6, v11, v13

    if-gez v6, :cond_3

    goto :goto_2

    :cond_3
    div-double/2addr v9, v11

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    mul-double/2addr v9, v15

    goto :goto_3

    :cond_4
    :goto_2
    move-wide v9, v7

    :goto_3
    if-nez p1, :cond_5

    neg-double v9, v9

    :cond_5
    move v6, v5

    :goto_4
    array-length v13, v2

    if-ge v6, v13, :cond_6

    aget-wide v13, v2, v6

    aget-wide v19, p7, v6

    mul-double v19, v19, v9

    add-double v13, v13, v19

    aput-wide v13, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    add-double v13, p4, v9

    invoke-virtual {v0, v13, v14, v3, v4}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->computeDerivatives(D[D[D)V

    const-wide/16 v17, 0x0

    :goto_5
    array-length v2, v1

    if-ge v5, v2, :cond_7

    aget-wide v2, v4, v5

    aget-wide v13, p7, v5

    sub-double/2addr v2, v13

    aget-wide v13, v1, v5

    div-double/2addr v2, v13

    mul-double/2addr v2, v2

    add-double v17, v17, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v1, v9

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    const-wide v3, 0x3cd203af9ee75616L    # 1.0E-15

    cmpg-double v3, v1, v3

    if-gez v3, :cond_8

    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-static {v7, v8, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    goto :goto_6

    :cond_8
    div-double v1, v15, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move/from16 v5, p2

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    :goto_6
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    const-wide v3, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMinStep()D

    move-result-wide v3

    cmpg-double v3, v1, v3

    if-gez v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMinStep()D

    move-result-wide v1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMaxStep()D

    move-result-wide v3

    cmpl-double v3, v1, v3

    if-lez v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMaxStep()D

    move-result-wide v1

    :cond_a
    if-nez p1, :cond_b

    neg-double v1, v1

    :cond_b
    return-wide v1
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method public resetInternalState()V
    .locals 4

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepStart:D

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->g:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->h:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/AbstractIntegrator;->stepSize:D

    return-void
.end method

.method public sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    iget-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-eqz p2, :cond_1

    array-length p2, p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    iget-object p0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    array-length p0, p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    if-eqz p2, :cond_3

    array-length p2, p2

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget p2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    iget-object p0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    array-length p0, p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public setInitialStepSize(D)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->g:D

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->h:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->f:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->f:D

    :goto_1
    return-void
.end method

.method public setStepSizeControl(DDDD)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->g:D

    .line 2
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->h:D

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->f:D

    .line 4
    iput-wide p5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    .line 5
    iput-wide p7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    .line 7
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    return-void
.end method

.method public setStepSizeControl(DD[D[D)V
    .locals 0

    .line 8
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->g:D

    .line 9
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->h:D

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 10
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->f:D

    const-wide/16 p1, 0x0

    .line 11
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    .line 12
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    .line 13
    invoke-virtual {p5}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    .line 14
    invoke-virtual {p6}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    return-void
.end method
