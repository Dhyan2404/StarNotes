.class public Lorg/apache/commons/math3/linear/ConjugateGradient;
.super Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;
.source "SourceFile"


# static fields
.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field public b:Z

.field public final c:D


# direct methods
.method public constructor <init>(IDZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(I)V

    .line 2
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->c:D

    .line 3
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->b:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/IterationManager;DZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(Lorg/apache/commons/math3/util/IterationManager;)V

    .line 5
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->c:D

    .line 6
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->b:Z

    return-void
.end method


# virtual methods
.method public final getCheck()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/linear/ConjugateGradient;->b:Z

    return p0
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;->checkParameters(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/IterativeLinearSolver;->getIterationManager()Lorg/apache/commons/math3/util/IterationManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/util/IterationManager;->resetIterationCount()V

    iget-wide v0, v8, Lorg/apache/commons/math3/linear/ConjugateGradient;->c:D

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v2

    mul-double v12, v0, v2

    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v14

    invoke-virtual {v11}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v15

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v6

    invoke-virtual {v9, v6}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/linear/RealVector;->combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/math3/linear/RealVector;->unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v22

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v16

    if-nez v10, :cond_0

    move-object/from16 v18, v7

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object/from16 v18, v0

    :goto_0
    new-instance v5, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v11}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v3, v15

    move-object v4, v14

    move-object v9, v5

    move-object/from16 v5, v22

    move-object/from16 v23, v6

    move-object v8, v7

    move-wide/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    invoke-virtual {v11, v9}, Lorg/apache/commons/math3/util/IterationManager;->fireInitializationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    cmpg-double v0, v16, v12

    if-gtz v0, :cond_1

    invoke-virtual {v11, v9}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    return-object p4

    :cond_1
    const-wide/16 v24, 0x0

    move-wide/from16 v6, v16

    move-wide/from16 v16, v24

    :goto_1
    invoke-virtual {v11}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    new-instance v9, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v11}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v3, v15

    move-object v4, v14

    move-object/from16 v5, v22

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    invoke-virtual {v11, v9}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationStartedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    if-eqz v10, :cond_2

    invoke-virtual {v10, v8}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object/from16 v9, v18

    :goto_2
    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v26

    move-object v6, v8

    move-object/from16 v8, p0

    iget-boolean v0, v8, Lorg/apache/commons/math3/linear/ConjugateGradient;->b:Z

    const-string v7, "vector"

    const-string v5, "operator"

    if-eqz v0, :cond_4

    cmpg-double v0, v26, v24

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    invoke-virtual {v1, v5, v10}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v7, v6}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_3
    invoke-virtual {v11}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    move-object/from16 v3, v23

    invoke-virtual {v3, v0, v9}, Lorg/apache/commons/math3/linear/RealVector;->setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V

    move-object v10, v3

    move-wide/from16 v28, v12

    move-object/from16 v13, p1

    move-object v12, v5

    goto :goto_4

    :cond_5
    move-object/from16 v3, v23

    div-double v1, v26, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object v0, v3

    move-object v10, v3

    move-wide/from16 v3, v16

    move-wide/from16 v28, v12

    move-object v12, v5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-object/from16 v13, p1

    :goto_4
    invoke-virtual {v13, v10}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-virtual {v10, v5}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    iget-boolean v2, v8, Lorg/apache/commons/math3/linear/ConjugateGradient;->b:Z

    if-eqz v2, :cond_7

    cmpg-double v2, v0, v24

    if-lez v2, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v7, v10}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_7
    :goto_5
    div-double v3, v26, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p4

    move-wide/from16 v16, v3

    move-object v7, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v2, v16

    neg-double v2, v2

    move-object/from16 v16, v6

    move-wide/from16 v17, v0

    move-wide/from16 v19, v2

    move-object/from16 v21, v7

    invoke-virtual/range {v16 .. v21}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v6}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v16

    new-instance v12, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v11}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v3, v15

    move-object v4, v14

    move-object/from16 v5, v22

    move-object/from16 v18, v6

    move-wide/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationPerformedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    cmpg-double v0, v16, v28

    if-gtz v0, :cond_8

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    return-object p4

    :cond_8
    move-object/from16 v23, v10

    move-wide/from16 v6, v16

    move-object/from16 v8, v18

    move-wide/from16 v16, v26

    move-wide/from16 v12, v28

    move-object/from16 v10, p2

    move-object/from16 v18, v9

    goto/16 :goto_1
.end method
