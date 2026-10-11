.class public Lorg/apache/commons/math3/ode/events/EventState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/ode/events/EventHandler;

.field public final b:D

.field public final c:D

.field public final d:I

.field public e:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field public f:D

.field public g:D

.field public h:Z

.field public i:Z

.field public j:D

.field public k:D

.field public l:Z

.field public m:Z

.field public n:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field public final o:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    iput-wide p2, p0, Lorg/apache/commons/math3/ode/events/EventState;->b:D

    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->c:D

    iput p6, p0, Lorg/apache/commons/math3/ode/events/EventState;->d:I

    iput-object p7, p0, Lorg/apache/commons/math3/ode/events/EventState;->o:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->e:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->f:D

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g:D

    const/4 p3, 0x1

    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/events/EventState;->h:Z

    const/4 p4, 0x0

    iput-boolean p4, p0, Lorg/apache/commons/math3/ode/events/EventState;->i:Z

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->j:D

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->k:D

    iput-boolean p3, p0, Lorg/apache/commons/math3/ode/events/EventState;->m:Z

    sget-object p1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->n:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->c(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/math3/ode/events/EventState;)Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventState;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object p0
.end method


# virtual methods
.method public final c(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->e:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v0

    new-array v0, v0, [D

    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->e:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventState;->e:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->isForward()Z

    move-result v2

    iput-boolean v2, v0, Lorg/apache/commons/math3/ode/events/EventState;->l:Z

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v2

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/events/EventState;->f:D

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/events/EventState;->c:D

    cmpg-double v6, v6, v8

    const/4 v7, 0x0

    if-gez v6, :cond_0

    return v7

    :cond_0
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/events/EventState;->b:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    const/4 v8, 0x1

    invoke-static {v8, v6}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v6

    int-to-double v9, v6

    div-double/2addr v4, v9

    new-instance v14, Lorg/apache/commons/math3/ode/events/EventState$a;

    invoke-direct {v14, v0, v1}, Lorg/apache/commons/math3/ode/events/EventState$a;-><init>(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V

    iget-wide v9, v0, Lorg/apache/commons/math3/ode/events/EventState;->f:D

    iget-wide v11, v0, Lorg/apache/commons/math3/ode/events/EventState;->g:D

    move v15, v7

    move-wide/from16 v19, v9

    :goto_0
    if-ge v15, v6, :cond_13

    add-int/lit8 v9, v6, -0x1

    if-ne v15, v9, :cond_1

    move-wide v7, v2

    goto :goto_1

    :cond_1
    iget-wide v9, v0, Lorg/apache/commons/math3/ode/events/EventState;->f:D

    add-int/lit8 v13, v15, 0x1

    int-to-double v7, v13

    mul-double/2addr v7, v4

    add-double/2addr v9, v7

    move-wide v7, v9

    :goto_1
    invoke-interface {v1, v7, v8}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    iget-object v9, v0, Lorg/apache/commons/math3/ode/events/EventState;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/events/EventState;->c(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v10

    invoke-interface {v9, v7, v8, v10}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v21

    iget-boolean v9, v0, Lorg/apache/commons/math3/ode/events/EventState;->h:Z

    const-wide/16 v23, 0x0

    cmpl-double v10, v21, v23

    if-ltz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    xor-int/2addr v9, v10

    if-eqz v9, :cond_12

    cmpl-double v9, v21, v11

    if-ltz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    iput-boolean v9, v0, Lorg/apache/commons/math3/ode/events/EventState;->m:Z

    iget-object v9, v0, Lorg/apache/commons/math3/ode/events/EventState;->o:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    instance-of v10, v9, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    if-eqz v10, :cond_5

    check-cast v9, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    iget-boolean v10, v0, Lorg/apache/commons/math3/ode/events/EventState;->l:Z

    if-eqz v10, :cond_4

    iget v10, v0, Lorg/apache/commons/math3/ode/events/EventState;->d:I

    sget-object v16, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v11, v14

    move-wide/from16 v12, v19

    move-object/from16 v26, v14

    move/from16 v25, v15

    move-wide v14, v7

    invoke-interface/range {v9 .. v16}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v9

    goto :goto_4

    :cond_4
    move-object/from16 v26, v14

    move/from16 v25, v15

    iget v10, v0, Lorg/apache/commons/math3/ode/events/EventState;->d:I

    sget-object v16, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v11, v26

    move-wide v12, v7

    move-wide/from16 v14, v19

    invoke-interface/range {v9 .. v16}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v9

    :goto_4
    move-wide/from16 v27, v2

    goto :goto_7

    :cond_5
    move-object/from16 v26, v14

    move/from16 v25, v15

    iget-boolean v10, v0, Lorg/apache/commons/math3/ode/events/EventState;->l:Z

    if-eqz v10, :cond_6

    iget v10, v0, Lorg/apache/commons/math3/ode/events/EventState;->d:I

    move-object/from16 v11, v26

    move-wide/from16 v12, v19

    move-wide v14, v7

    invoke-interface/range {v9 .. v15}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v9

    goto :goto_5

    :cond_6
    iget v10, v0, Lorg/apache/commons/math3/ode/events/EventState;->d:I

    move-object/from16 v11, v26

    move-wide v12, v7

    move-wide/from16 v14, v19

    invoke-interface/range {v9 .. v15}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v9

    :goto_5
    move-wide v12, v9

    iget v9, v0, Lorg/apache/commons/math3/ode/events/EventState;->d:I

    iget-object v10, v0, Lorg/apache/commons/math3/ode/events/EventState;->o:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v10}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getEvaluations()I

    move-result v10

    sub-int/2addr v9, v10

    new-instance v11, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/events/EventState;->o:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v10}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v14

    iget-object v10, v0, Lorg/apache/commons/math3/ode/events/EventState;->o:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    move-wide/from16 v27, v2

    invoke-interface {v10}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v1

    invoke-direct {v11, v14, v15, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;-><init>(DD)V

    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/events/EventState;->l:Z

    if-eqz v1, :cond_7

    sget-object v18, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v10, v26

    move-wide/from16 v14, v19

    move-wide/from16 v16, v7

    invoke-static/range {v9 .. v18}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v1

    goto :goto_6

    :cond_7
    sget-object v18, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v10, v26

    move-wide v14, v7

    move-wide/from16 v16, v19

    invoke-static/range {v9 .. v18}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v1

    :goto_6
    move-wide v9, v1

    :goto_7
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/events/EventState;->k:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_f

    sub-double v1, v9, v19

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    iget-wide v11, v0, Lorg/apache/commons/math3/ode/events/EventState;->c:D

    cmpg-double v1, v1, v11

    if-gtz v1, :cond_f

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/events/EventState;->k:D

    sub-double v1, v9, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    iget-wide v11, v0, Lorg/apache/commons/math3/ode/events/EventState;->c:D

    cmpg-double v1, v1, v11

    if-gtz v1, :cond_f

    :goto_8
    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/events/EventState;->l:Z

    if-eqz v1, :cond_8

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/events/EventState;->c:D

    add-double v19, v19, v1

    goto :goto_9

    :cond_8
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/events/EventState;->c:D

    sub-double v19, v19, v1

    :goto_9
    move-wide/from16 v1, v19

    move-object/from16 v3, v26

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v21

    iget-boolean v11, v0, Lorg/apache/commons/math3/ode/events/EventState;->h:Z

    cmpl-double v12, v21, v23

    if-ltz v12, :cond_9

    const/4 v12, 0x1

    goto :goto_a

    :cond_9
    const/4 v12, 0x0

    :goto_a
    xor-int/2addr v11, v12

    if-eqz v11, :cond_c

    iget-boolean v11, v0, Lorg/apache/commons/math3/ode/events/EventState;->l:Z

    cmpl-double v12, v1, v7

    if-ltz v12, :cond_a

    const/4 v12, 0x1

    goto :goto_b

    :cond_a
    const/4 v12, 0x0

    :goto_b
    xor-int/2addr v11, v12

    if-nez v11, :cond_b

    goto :goto_c

    :cond_b
    move-wide/from16 v19, v1

    move-object/from16 v26, v3

    goto :goto_8

    :cond_c
    :goto_c
    iget-boolean v11, v0, Lorg/apache/commons/math3/ode/events/EventState;->l:Z

    cmpl-double v7, v1, v7

    if-ltz v7, :cond_d

    const/4 v7, 0x1

    goto :goto_d

    :cond_d
    const/4 v7, 0x0

    :goto_d
    xor-int/2addr v7, v11

    if-eqz v7, :cond_e

    add-int/lit8 v15, v25, -0x1

    move-wide v7, v1

    goto :goto_f

    :cond_e
    iput-wide v9, v0, Lorg/apache/commons/math3/ode/events/EventState;->j:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/commons/math3/ode/events/EventState;->i:Z

    return v1

    :cond_f
    move-object/from16 v3, v26

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/events/EventState;->k:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_11

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/events/EventState;->k:D

    sub-double/2addr v1, v9

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    iget-wide v11, v0, Lorg/apache/commons/math3/ode/events/EventState;->c:D

    cmpl-double v1, v1, v11

    if-lez v1, :cond_10

    goto :goto_e

    :cond_10
    move/from16 v15, v25

    goto :goto_f

    :cond_11
    :goto_e
    iput-wide v9, v0, Lorg/apache/commons/math3/ode/events/EventState;->j:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/commons/math3/ode/events/EventState;->i:Z

    return v1

    :cond_12
    move-wide/from16 v27, v2

    move-object v3, v14

    move/from16 v25, v15

    :goto_f
    move-wide/from16 v19, v7

    move-wide/from16 v11, v21

    const/4 v1, 0x1

    add-int/2addr v15, v1

    move v8, v1

    move-object v14, v3

    move-wide/from16 v2, v27

    const/4 v7, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_13
    move v1, v7

    iput-boolean v1, v0, Lorg/apache/commons/math3/ode/events/EventState;->i:Z

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, v0, Lorg/apache/commons/math3/ode/events/EventState;->j:D
    :try_end_0
    .catch Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;->getException()Lorg/apache/commons/math3/exception/MaxCountExceededException;

    move-result-object v0

    throw v0
.end method

.method public getConvergence()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->c:D

    return-wide v0
.end method

.method public getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventState;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object p0
.end method

.method public getEventTime()D
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->i:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->j:D

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lorg/apache/commons/math3/ode/events/EventState;->l:Z

    if-eqz p0, :cond_1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    return-wide v0
.end method

.method public getMaxCheckInterval()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->b:D

    return-wide v0
.end method

.method public getMaxIterationCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ode/events/EventState;->d:I

    return p0
.end method

.method public reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->f:D

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-wide v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->f:D

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->c(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->o:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v0

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->o:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventState;->f:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->f:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->c(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object p1

    invoke-interface {v0, v4, v5, p1}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g:D

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g:D

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->h:Z

    return-void
.end method

.method public reset(D[D)Z
    .locals 6

    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->j:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->c:D

    cmpg-double v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->n:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->resetState(D[D)V

    :cond_1
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->i:Z

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->j:D

    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventState;->n:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-eq p0, v2, :cond_2

    sget-object p1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne p0, p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public setExpandable(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->e:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    return-void
.end method

.method public stepAccepted(D[D)V
    .locals 6

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->f:D

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g:D

    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->j:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->c:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->k:D

    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->m:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->h:Z

    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->a:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-boolean v3, p0, Lorg/apache/commons/math3/ode/events/EventState;->l:Z

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    invoke-interface {v2, p1, p2, p3, v0}, Lorg/apache/commons/math3/ode/events/EventHandler;->eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->n:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    goto :goto_1

    :cond_0
    iget-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g:D

    const-wide/16 v2, 0x0

    cmpl-double p1, p1, v2

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->h:Z

    sget-object p1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->n:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    :goto_1
    return-void
.end method

.method public stop()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/math3/ode/events/EventState;->n:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->STOP:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
