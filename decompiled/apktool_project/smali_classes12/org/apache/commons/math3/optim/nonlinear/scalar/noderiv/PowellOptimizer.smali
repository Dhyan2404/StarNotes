.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "SourceFile"


# static fields
.field public static final j:D


# instance fields
.field public final g:D

.field public final h:D

.field public final i:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->j:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 10
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    move-wide v0, p1

    move-wide v2, p3

    move-object/from16 v4, p9

    .line 2
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 3
    sget-wide v4, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->j:D

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_1

    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-lez v4, :cond_0

    .line 4
    iput-wide v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->g:D

    .line 5
    iput-wide v2, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->h:D

    .line 6
    new-instance v9, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p5

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;DDD)V

    iput-object v9, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->i:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    return-void

    .line 7
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 8
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getUpperBound()[D

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final b([D[DD)[[D
    .locals 8

    array-length p0, p1

    new-array v0, p0, [D

    new-array v1, p0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_0

    aget-wide v4, p2, v3

    mul-double/2addr v4, p3

    aput-wide v4, v1, v3

    aget-wide v6, p1, v3

    add-double/2addr v6, v4

    aput-wide v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [[D

    aput-object v0, p0, v2

    const/4 p1, 0x1

    aput-object v1, p0, p1

    return-object p0
.end method

.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 31

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->a()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getStartPoint()[D

    move-result-object v2

    .line 5
    array-length v3, v2

    .line 6
    filled-new-array {v3, v3}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_0

    .line 7
    aget-object v7, v4, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v6

    .line 9
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v7

    .line 10
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    .line 11
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->incrementIterationCount()V

    move v12, v5

    move/from16 v17, v12

    move-wide v13, v7

    const-wide/16 v15, 0x0

    :goto_2
    if-ge v12, v3, :cond_2

    .line 12
    aget-object v18, v4, v12

    invoke-static/range {v18 .. v18}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v10

    .line 13
    iget-object v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->i:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    invoke-virtual {v11, v2, v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v11

    .line 14
    invoke-virtual {v11}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v19

    move/from16 v18, v3

    move-object/from16 v21, v4

    .line 15
    invoke-virtual {v11}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v3

    .line 16
    invoke-virtual {v0, v2, v10, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->b([D[DD)[[D

    move-result-object v2

    .line 17
    aget-object v2, v2, v5

    sub-double v13, v13, v19

    cmpl-double v3, v13, v15

    if-lez v3, :cond_1

    move/from16 v17, v12

    move-wide v15, v13

    :cond_1
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v18

    move-wide/from16 v13, v19

    move-object/from16 v4, v21

    goto :goto_2

    :cond_2
    move/from16 v18, v3

    move-object/from16 v21, v4

    sub-double v3, v7, v13

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v19, v3, v10

    .line 18
    iget-wide v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->g:D

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    add-double v24, v24, v26

    mul-double v10, v10, v24

    move-object/from16 v24, v6

    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->h:D

    add-double/2addr v10, v5

    cmpg-double v5, v19, v10

    if-gtz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 19
    :goto_3
    new-instance v10, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v10, v9, v7, v8}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 20
    new-instance v11, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v11, v2, v13, v14}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    if-nez v5, :cond_4

    if-eqz v24, :cond_4

    .line 21
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getIterations()I

    move-result v5

    move-object/from16 v12, v24

    invoke-interface {v12, v5, v10, v11}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_4

    :cond_4
    move-object/from16 v12, v24

    :goto_4
    if-eqz v5, :cond_8

    .line 22
    sget-object v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v1, v0, :cond_6

    cmpg-double v0, v13, v7

    if-gez v0, :cond_5

    move-object v10, v11

    :cond_5
    return-object v10

    :cond_6
    cmpl-double v0, v13, v7

    if-lez v0, :cond_7

    move-object v10, v11

    :cond_7
    return-object v10

    :cond_8
    move/from16 v5, v18

    .line 23
    new-array v10, v5, [D

    .line 24
    new-array v11, v5, [D

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_9

    .line 25
    aget-wide v24, v2, v6

    aget-wide v26, v9, v6

    sub-double v24, v24, v26

    aput-wide v24, v10, v6

    .line 26
    aget-wide v24, v2, v6

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v22

    aget-wide v26, v9, v6

    sub-double v24, v24, v26

    aput-wide v24, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 27
    :cond_9
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, [D

    .line 28
    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v24

    cmpl-double v6, v7, v24

    if-lez v6, :cond_a

    add-double v26, v7, v24

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v28, v13, v22

    sub-double v26, v26, v28

    mul-double v26, v26, v22

    sub-double/2addr v3, v15

    mul-double/2addr v3, v3

    mul-double v26, v26, v3

    sub-double v7, v7, v24

    mul-double/2addr v15, v7

    mul-double/2addr v15, v7

    sub-double v26, v26, v15

    const-wide/16 v3, 0x0

    cmpg-double v3, v26, v3

    if-gez v3, :cond_a

    .line 29
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->i:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    invoke-virtual {v3, v2, v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v6

    .line 31
    invoke-virtual {v3}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v3

    .line 32
    invoke-virtual {v0, v2, v10, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/PowellOptimizer;->b([D[DD)[[D

    move-result-object v2

    const/4 v3, 0x0

    .line 33
    aget-object v4, v2, v3

    add-int/lit8 v8, v5, -0x1

    .line 34
    aget-object v10, v21, v8

    aput-object v10, v21, v17

    const/4 v10, 0x1

    .line 35
    aget-object v2, v2, v10

    aput-object v2, v21, v8

    move-object v2, v4

    move-wide v7, v6

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    move-wide v7, v13

    :goto_6
    move-object v6, v12

    move-object/from16 v4, v21

    move/from16 v30, v5

    move v5, v3

    move/from16 v3, v30

    goto/16 :goto_1
.end method
