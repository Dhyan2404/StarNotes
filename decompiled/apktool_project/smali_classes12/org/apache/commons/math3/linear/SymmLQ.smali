.class public Lorg/apache/commons/math3/linear/SymmLQ;
.super Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SymmLQ$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "operator"

.field public static final e:Ljava/lang/String; = "threshold"

.field public static final f:Ljava/lang/String; = "vector"

.field public static final g:Ljava/lang/String; = "vector1"

.field public static final h:Ljava/lang/String; = "vector2"


# instance fields
.field public final b:Z

.field public final c:D


# direct methods
.method public constructor <init>(IDZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(I)V

    .line 2
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/SymmLQ;->c:D

    .line 3
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ;->b:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/IterationManager;DZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(Lorg/apache/commons/math3/util/IterationManager;)V

    .line 5
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/SymmLQ;->c:D

    .line 6
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ;->b:Z

    return-void
.end method


# virtual methods
.method public final getCheck()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/linear/SymmLQ;->b:Z

    return p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 7
    invoke-static {p4}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p4}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    .line 6
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const-wide/16 v0, 0x0

    .line 11
    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 12
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 16
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 17
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move-wide v6, p4

    .line 15
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    .line 2
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;->checkParameters(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/IterativeLinearSolver;->getIterationManager()Lorg/apache/commons/math3/util/IterationManager;

    move-result-object v9

    .line 4
    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->resetIterationCount()V

    .line 5
    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 6
    new-instance v5, Lorg/apache/commons/math3/linear/SymmLQ$a;

    iget-wide v0, v7, Lorg/apache/commons/math3/linear/SymmLQ;->c:D

    iget-boolean v2, v7, Lorg/apache/commons/math3/linear/SymmLQ;->b:Z

    move-object v10, v5

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p5

    move-wide/from16 v15, p6

    move-wide/from16 v17, v0

    move/from16 v19, v2

    invoke-direct/range {v10 .. v19}, Lorg/apache/commons/math3/linear/SymmLQ$a;-><init>(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZDDZ)V

    .line 7
    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/SymmLQ$a;->h()V

    .line 8
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/SymmLQ$a;->i(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 9
    new-instance v10, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/SymmLQ$a;->f()D

    move-result-wide v11

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object v13, v5

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 10
    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    return-object v8

    .line 12
    :cond_0
    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireInitializationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    if-nez v0, :cond_4

    .line 14
    :cond_3
    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 15
    new-instance v10, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$a;->f()D

    move-result-wide v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 16
    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationStartedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 17
    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$a;->k()V

    .line 18
    invoke-virtual {v13, v8}, Lorg/apache/commons/math3/linear/SymmLQ$a;->i(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 19
    new-instance v10, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$a;->f()D

    move-result-wide v5

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 20
    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationPerformedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 21
    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    :cond_4
    new-instance v10, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$a;->f()D

    move-result-wide v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 23
    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    return-object v8
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 24
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method
