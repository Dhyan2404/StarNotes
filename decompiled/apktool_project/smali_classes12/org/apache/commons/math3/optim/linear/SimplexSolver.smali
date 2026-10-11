.class public Lorg/apache/commons/math3/optim/linear/SimplexSolver;
.super Lorg/apache/commons/math3/optim/linear/LinearOptimizer;
.source "SourceFile"


# static fields
.field public static final o:I = 0xa

.field public static final p:D = 1.0E-10

.field public static final q:D = 1.0E-6


# instance fields
.field public final j:D

.field public final k:I

.field public final l:D

.field public m:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

.field public n:Lorg/apache/commons/math3/optim/linear/SolutionCallback;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/16 v3, 0xa

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;-><init>(DID)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 6

    const/16 v3, 0xa

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;-><init>(DID)V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 6

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;-><init>(DID)V

    return-void
.end method

.method public constructor <init>(DID)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;-><init>()V

    .line 5
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->j:D

    .line 6
    iput p3, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->k:I

    .line 7
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->l:D

    .line 8
    sget-object p1, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->DANTZIG:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    iput-object p1, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->m:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    return-void
.end method


# virtual methods
.method public final b(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)Ljava/lang/Integer;
    .locals 7

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v4

    cmpg-double v6, v4, v1

    if-gez v6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->m:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    sget-object v2, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->BLAND:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->d(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-wide v1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3
.end method

.method public final c(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Ljava/lang/Integer;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v3

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    if-ge v3, v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v1, v3, v6}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v6

    move/from16 v8, p2

    invoke-virtual {v1, v3, v8}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v15

    const-wide/16 v11, 0x0

    iget-wide v13, v0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->l:D

    move-wide v9, v15

    invoke-static/range {v9 .. v14}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v9

    if-lez v9, :cond_1

    div-double/2addr v6, v15

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-gez v9, :cond_1

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v4, v6

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    return-object v4

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    if-le v3, v7, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v3

    if-lez v3, :cond_6

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    move v7, v5

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v8

    if-ge v7, v8, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9, v8}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    iget v13, v0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->k:I

    invoke-static {v9, v10, v11, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    return-object v6

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getBasicVariable(I)I

    move-result v5

    if-ge v5, v0, :cond_7

    move-object v4, v3

    move v0, v5

    goto :goto_3

    :cond_8
    return-object v4

    :cond_9
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final d(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Z
    .locals 8

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->l:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v1

    if-lez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public doIteration(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;,
            Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->incrementIterationCount()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->b(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->c(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->performRowOperations(II)V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;

    invoke-direct {p0}, Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;-><init>()V

    throw p0
.end method

.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;,
            Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->n:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->a(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->getFunction()Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->getConstraints()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->isRestrictedToNonNegative()Z

    move-result v6

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->j:D

    iget v9, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->k:I

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;-><init>(Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;ZDI)V

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solvePhase1(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->dropPhase1Objective()V

    .line 7
    iget-object v1, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->n:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->a(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->isOptimal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getSolution()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->isRestrictedToNonNegative()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/PointValuePair;->getPoint()[D

    move-result-object v1

    const/4 v2, 0x0

    .line 14
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 15
    aget-wide v4, v1, v2

    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->j:D

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v3

    if-ltz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;

    invoke-direct {p0}, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;-><init>()V

    throw p0

    :cond_4
    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->n:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    iput-object v2, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->n:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    iput-object v2, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->m:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public solvePhase1(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;,
            Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getRhsOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->j:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;

    invoke-direct {p0}, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;-><init>()V

    throw p0
.end method
