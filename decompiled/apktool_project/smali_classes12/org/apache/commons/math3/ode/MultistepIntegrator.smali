.class public abstract Lorg/apache/commons/math3/ode/MultistepIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;,
        Lorg/apache/commons/math3/ode/MultistepIntegrator$b;,
        Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckTransformer;
    }
.end annotation


# instance fields
.field public i:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

.field public final j:I

.field public k:D

.field public l:D

.field public m:D

.field public n:D

.field protected nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field protected scaled:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;IIDDDD)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object v10, p0

    move v11, p2

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    .line 1
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    const/4 v0, 0x2

    if-lt v11, v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;

    move-object v1, v0

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;-><init>(DDDD)V

    iput-object v0, v10, Lorg/apache/commons/math3/ode/MultistepIntegrator;->i:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    .line 3
    iput v11, v10, Lorg/apache/commons/math3/ode/MultistepIntegrator;->j:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move v2, p3

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 4
    iput-wide v0, v10, Lorg/apache/commons/math3/ode/MultistepIntegrator;->k:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setSafety(D)V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 6
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setMinReduction(D)V

    .line 7
    iget-wide v0, v10, Lorg/apache/commons/math3/ode/MultistepIntegrator;->k:D

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setMaxGrowth(D)V

    return-void

    .line 8
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INTEGRATION_METHOD_NEEDS_AT_LEAST_TWO_PREVIOUS_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;IIDD[D[D)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 9
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    .line 10
    new-instance v7, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;

    move-object v0, v7

    move-wide v1, p4

    move-wide v3, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;-><init>(DD[D[D)V

    iput-object v7, v8, Lorg/apache/commons/math3/ode/MultistepIntegrator;->i:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    move v0, p2

    .line 11
    iput v0, v8, Lorg/apache/commons/math3/ode/MultistepIntegrator;->j:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move v2, p3

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 12
    iput-wide v0, v8, Lorg/apache/commons/math3/ode/MultistepIntegrator;->k:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 13
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setSafety(D)V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 14
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setMinReduction(D)V

    .line 15
    iget-wide v0, v8, Lorg/apache/commons/math3/ode/MultistepIntegrator;->k:D

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setMaxGrowth(D)V

    return-void
.end method


# virtual methods
.method public computeStepGrowShrinkFactor(D)D
    .locals 8

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->n:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->m:D

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->l:D

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->k:D

    invoke-static {p1, p2, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p0

    mul-double/2addr v4, p0

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public getMaxGrowth()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->n:D

    return-wide v0
.end method

.method public getMinReduction()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->m:D

    return-wide v0
.end method

.method public getNSteps()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->j:I

    return p0
.end method

.method public getSafety()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->l:D

    return-wide v0
.end method

.method public getStarterIntegrator()Lorg/apache/commons/math3/ode/ODEIntegrator;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->i:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    return-object p0
.end method

.method public abstract initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
.end method

.method public setMaxGrowth(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->n:D

    return-void
.end method

.method public setMinReduction(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->m:D

    return-void
.end method

.method public setSafety(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->l:D

    return-void
.end method

.method public setStarterIntegrator(Lorg/apache/commons/math3/ode/FirstOrderIntegrator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->i:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    return-void
.end method

.method public start(D[DD)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->i:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    invoke-interface {v1}, Lorg/apache/commons/math3/ode/ODEIntegrator;->clearEventHandlers()V

    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->i:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    invoke-interface {v1}, Lorg/apache/commons/math3/ode/ODEIntegrator;->clearStepHandlers()V

    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->i:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    new-instance v2, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;

    iget v3, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->j:I

    add-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    array-length v4, p3

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/commons/math3/ode/MultistepIntegrator$b;-><init>(Lorg/apache/commons/math3/ode/MultistepIntegrator;II)V

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/ode/ODEIntegrator;->addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->i:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    instance-of v2, v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/commons/math3/ode/AbstractIntegrator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v2

    invoke-virtual {v1, v2, p4, p5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/commons/math3/ode/MultistepIntegrator$a;

    invoke-direct {v2, p0}, Lorg/apache/commons/math3/ode/MultistepIntegrator$a;-><init>(Lorg/apache/commons/math3/ode/MultistepIntegrator;)V

    array-length v3, p3

    new-array v8, v3, [D

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v8}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->integrate(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD[D)D

    :goto_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MULTISTEP_STARTER_STOPPED_EARLY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->getCounter()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->i:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    invoke-interface {v2}, Lorg/apache/commons/math3/ode/ODEIntegrator;->getEvaluations()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment(I)V

    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->i:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/ODEIntegrator;->clearStepHandlers()V

    return-void
.end method
