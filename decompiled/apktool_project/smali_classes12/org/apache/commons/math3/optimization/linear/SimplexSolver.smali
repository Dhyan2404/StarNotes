.class public Lorg/apache/commons/math3/optimization/linear/SimplexSolver;
.super Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final i:D = 1.0E-6

.field public static final j:I = 0xa


# instance fields
.field public final g:D

.field public final h:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/16 v2, 0xa

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;-><init>()V

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->g:D

    .line 4
    iput p3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->h:I

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)Ljava/lang/Integer;
    .locals 6

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p0, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, p0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v3

    cmpg-double v5, v3, v0

    if-gez v5, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    move-wide v0, v3

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public final b(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;I)Ljava/lang/Integer;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {p1, v1, v4}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v4

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    iget v10, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->h:I

    invoke-static {v6, v7, v8, v9, v10}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDI)I

    move-result v8

    if-lez v8, :cond_1

    div-double/2addr v4, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-gez v6, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x0

    if-le p2, v5, :cond_a

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result p2

    if-lez p2, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move v4, v2

    :goto_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7, v6}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iget v11, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->h:I

    invoke-static {v7, v8, v9, v10, v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1, v6}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    return-object v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->getIterations()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->getMaxIterations()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    if-ge p2, p0, :cond_a

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move v4, p2

    :goto_3
    if-ge v4, v2, :cond_7

    invoke-virtual {v3, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-ge v4, p0, :cond_8

    move-object v1, v3

    move p0, v4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    return-object v1

    :cond_a
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public doIteration(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->incrementIterationsCounter()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->a(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->b(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3, v1, v2}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->divideRow(ID)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v1, v4, v2, v3}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->subtractRow(IID)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;

    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;-><init>()V

    throw p0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;
        }
    .end annotation

    new-instance v8, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->getFunction()Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->getConstraints()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;->restrictToNonNegative()Z

    move-result v4

    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->g:D

    iget v7, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->h:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;-><init>(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;ZDI)V

    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->solvePhase1(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V

    invoke-virtual {v8}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->dropPhase1Objective()V

    :goto_0
    invoke-virtual {v8}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v8}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getSolution()Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public solvePhase1(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getRhsOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->g:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;

    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;-><init>()V

    throw p0
.end method
