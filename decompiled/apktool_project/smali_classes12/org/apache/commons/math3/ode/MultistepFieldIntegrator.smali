.class public abstract Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$InitializationCompletedMarkerException;,
        Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field

.field public q:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final r:I

.field public s:D

.field protected scaled:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public t:D

.field public u:D

.field public v:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDDDD)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            "IIDDDD)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object v11, p0

    move/from16 v12, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    .line 1
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DDDD)V

    const/4 v0, 0x2

    if-lt v12, v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;

    move-object v1, v0

    move-object v2, p1

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;DDDD)V

    iput-object v0, v11, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->q:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    .line 3
    iput v12, v11, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->r:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move/from16 v2, p4

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 4
    iput-wide v0, v11, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->s:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setSafety(D)V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 6
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setMinReduction(D)V

    .line 7
    iget-wide v0, v11, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->s:D

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setMaxGrowth(D)V

    return-void

    .line 8
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INTEGRATION_METHOD_NEEDS_AT_LEAST_TWO_PREVIOUS_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDD[D[D)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            "IIDD[D[D)V"
        }
    .end annotation

    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p5

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 9
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DD[D[D)V

    .line 10
    new-instance v8, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;

    move-object v0, v8

    move-wide v2, p5

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;DD[D[D)V

    iput-object v8, v9, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->q:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    move v0, p3

    .line 11
    iput v0, v9, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->r:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move v2, p4

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 12
    iput-wide v0, v9, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->s:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 13
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setSafety(D)V

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 14
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setMinReduction(D)V

    .line 15
    iget-wide v0, v9, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->s:D

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->setMaxGrowth(D)V

    return-void
.end method


# virtual methods
.method public computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->v:D

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->u:D

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->s:D

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->pow(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->t:D

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v1, p0}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/commons/math3/util/MathUtils;->min(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public getMaxGrowth()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->v:D

    return-wide v0
.end method

.method public getMinReduction()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->u:D

    return-wide v0
.end method

.method public getNSteps()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->r:I

    return p0
.end method

.method public getSafety()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->t:D

    return-wide v0
.end method

.method public getStarterIntegrator()Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->q:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    return-object p0
.end method

.method public abstract initializeHighOrderDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[[TT;[[TT;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end method

.method public rescale(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v4, v3, v2

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getDataRef()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/RealFieldElement;

    move-object v4, v0

    move v3, v1

    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_2

    invoke-interface {v4, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v2, v3

    move v6, v1

    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_1

    aget-object v7, v5, v6

    invoke-interface {v7, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    return-void
.end method

.method public setMaxGrowth(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->v:D

    return-void
.end method

.method public setMinReduction(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->u:D

    return-void
.end method

.method public setSafety(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->t:D

    return-void
.end method

.method public setStarterIntegrator(Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->q:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    return-void
.end method

.method public start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEState<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->q:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;->clearEventHandlers()V

    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->q:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;->clearStepHandlers()V

    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->q:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    new-instance v1, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->r:I

    add-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$a;-><init>(Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;Lorg/apache/commons/math3/ode/FieldEquationsMapper;I)V

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;->addStepHandler(Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->q:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;->integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MULTISTEP_STARTER_STOPPED_EARLY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Lorg/apache/commons/math3/ode/MultistepFieldIntegrator$InitializationCompletedMarkerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->getEvaluationsCounter()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->q:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    invoke-interface {p2}, Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;->getEvaluations()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment(I)V

    iget-object p0, p0, Lorg/apache/commons/math3/ode/MultistepFieldIntegrator;->q:Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;

    invoke-interface {p0}, Lorg/apache/commons/math3/ode/FirstOrderFieldIntegrator;->clearStepHandlers()V

    return-void
.end method
