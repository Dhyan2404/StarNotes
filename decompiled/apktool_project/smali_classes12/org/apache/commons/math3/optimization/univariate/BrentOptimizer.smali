.class public Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;
.super Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final j:D

.field public static final k:D


# instance fields
.field public final h:D

.field public final i:D


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    sput-wide v2, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->j:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->k:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p5}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 2
    sget-wide v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->k:D

    cmpg-double p5, p1, v0

    if-ltz p5, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p5, p3, v0

    if-lez p5, :cond_0

    .line 3
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->h:D

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->i:D

    return-void

    .line 5
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method


# virtual methods
.method public final a(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 4

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    return-object p1

    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public doOptimize()Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 51

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->getMin()D

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->getStartValue()D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->getMax()D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v2

    cmpg-double v11, v5, v9

    if-gez v11, :cond_1

    goto :goto_1

    :cond_1
    move-wide/from16 v49, v5

    move-wide v5, v9

    move-wide/from16 v9, v49

    :goto_1
    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->computeObjectiveValue(D)D

    move-result-wide v11

    if-nez v1, :cond_2

    neg-double v11, v11

    :cond_2
    new-instance v13, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    if-eqz v1, :cond_3

    move-wide v14, v11

    goto :goto_2

    :cond_3
    neg-double v14, v11

    :goto_2
    invoke-direct {v13, v7, v8, v14, v15}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;-><init>(DD)V

    const/16 v16, 0x0

    move-wide/from16 v18, v11

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    move-object v3, v13

    move-object/from16 v4, v16

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    move-wide v11, v7

    move-wide/from16 v16, v9

    move-wide v9, v11

    :goto_3
    add-double v29, v5, v16

    const-wide/high16 v31, 0x3fe0000000000000L    # 0.5

    mul-double v29, v29, v31

    iget-wide v14, v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->h:D

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v35

    mul-double v14, v14, v35

    move-object/from16 v35, v2

    move-object/from16 v36, v3

    iget-wide v2, v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->i:D

    add-double/2addr v14, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v37, v14, v2

    sub-double v39, v7, v29

    invoke-static/range {v39 .. v40}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v39

    sub-double v41, v16, v5

    mul-double v41, v41, v31

    sub-double v41, v37, v41

    cmpg-double v39, v39, v41

    if-gtz v39, :cond_4

    const/16 v39, 0x1

    goto :goto_4

    :cond_4
    const/16 v39, 0x0

    :goto_4
    if-nez v39, :cond_1a

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v39

    cmpl-double v4, v39, v14

    if-lez v4, :cond_b

    sub-double v39, v7, v9

    sub-double v41, v18, v20

    mul-double v41, v41, v39

    sub-double v43, v7, v11

    sub-double v45, v18, v22

    mul-double v45, v45, v43

    mul-double v43, v43, v45

    mul-double v39, v39, v41

    move-wide/from16 v47, v11

    sub-double v11, v43, v39

    sub-double v45, v45, v41

    mul-double v2, v2, v45

    const-wide/16 v33, 0x0

    cmpl-double v4, v2, v33

    if-lez v4, :cond_5

    neg-double v11, v11

    goto :goto_5

    :cond_5
    neg-double v2, v2

    :goto_5
    sub-double v39, v5, v7

    mul-double v41, v2, v39

    cmpl-double v4, v11, v41

    if-lez v4, :cond_9

    sub-double v41, v16, v7

    mul-double v41, v41, v2

    cmpg-double v4, v11, v41

    if-gez v4, :cond_9

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v41

    mul-double v31, v31, v2

    mul-double v31, v31, v24

    invoke-static/range {v31 .. v32}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    cmpg-double v4, v41, v24

    if-gez v4, :cond_9

    div-double/2addr v11, v2

    add-double v2, v7, v11

    sub-double v24, v2, v5

    cmpg-double v4, v24, v37

    if-ltz v4, :cond_7

    sub-double v2, v16, v2

    cmpg-double v2, v2, v37

    if-gez v2, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v24, v26

    goto :goto_8

    :cond_7
    :goto_6
    cmpg-double v2, v7, v29

    if-gtz v2, :cond_8

    move-wide/from16 v24, v26

    move-wide/from16 v26, v14

    goto :goto_9

    :cond_8
    neg-double v2, v14

    move-wide/from16 v24, v26

    move-wide/from16 v26, v2

    goto :goto_9

    :cond_9
    cmpg-double v2, v7, v29

    if-gez v2, :cond_a

    sub-double v39, v16, v7

    :cond_a
    sget-wide v2, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->j:D

    mul-double v2, v2, v39

    move-wide/from16 v26, v2

    move-wide/from16 v24, v39

    goto :goto_9

    :cond_b
    move-wide/from16 v47, v11

    cmpg-double v2, v7, v29

    if-gez v2, :cond_c

    sub-double v2, v16, v7

    goto :goto_7

    :cond_c
    sub-double v2, v5, v7

    :goto_7
    sget-wide v11, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->j:D

    mul-double/2addr v11, v2

    move-wide/from16 v24, v2

    :goto_8
    move-wide/from16 v26, v11

    :goto_9
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v14

    if-gez v2, :cond_e

    const-wide/16 v2, 0x0

    cmpl-double v4, v26, v2

    if-ltz v4, :cond_d

    add-double/2addr v14, v7

    goto :goto_a

    :cond_d
    sub-double v14, v7, v14

    goto :goto_a

    :cond_e
    const-wide/16 v2, 0x0

    add-double v14, v7, v26

    :goto_a
    invoke-virtual {v0, v14, v15}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->computeObjectiveValue(D)D

    move-result-wide v11

    if-nez v1, :cond_f

    neg-double v11, v11

    :cond_f
    new-instance v4, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    if-eqz v1, :cond_10

    move-wide v2, v11

    goto :goto_b

    :cond_10
    neg-double v2, v11

    :goto_b
    invoke-direct {v4, v14, v15, v2, v3}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;-><init>(DD)V

    move-object/from16 v2, v36

    invoke-virtual {v0, v2, v4, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->a(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v3

    invoke-virtual {v0, v13, v3, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->a(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v13

    move/from16 v3, v28

    move-wide/from16 v28, v5

    move-object/from16 v5, v35

    if-eqz v35, :cond_11

    invoke-interface {v5, v3, v2, v4}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    return-object v13

    :cond_11
    cmpg-double v6, v11, v18

    if-gtz v6, :cond_13

    cmpg-double v6, v14, v7

    if-gez v6, :cond_12

    move-wide/from16 v16, v7

    goto :goto_c

    :cond_12
    move-wide/from16 v28, v7

    :goto_c
    move-object v6, v4

    move-object/from16 v35, v5

    move-wide/from16 v20, v22

    move-wide/from16 v22, v18

    move-wide/from16 v18, v11

    move-wide v11, v9

    move-wide v9, v7

    move-wide v7, v14

    goto :goto_10

    :cond_13
    cmpg-double v6, v14, v7

    if-gez v6, :cond_14

    move-wide/from16 v28, v14

    goto :goto_d

    :cond_14
    move-wide/from16 v16, v14

    :goto_d
    cmpg-double v6, v11, v22

    if-lez v6, :cond_19

    invoke-static {v9, v10, v7, v8}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_f

    :cond_15
    cmpg-double v6, v11, v20

    if-lez v6, :cond_17

    move-object v6, v4

    move-object/from16 v35, v5

    move-wide/from16 v4, v47

    invoke-static {v4, v5, v7, v8}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v30

    if-nez v30, :cond_18

    invoke-static {v4, v5, v9, v10}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v30

    if-eqz v30, :cond_16

    goto :goto_e

    :cond_16
    move-wide v11, v4

    goto :goto_10

    :cond_17
    move-object v6, v4

    move-object/from16 v35, v5

    :cond_18
    :goto_e
    move-wide/from16 v20, v11

    move-wide v11, v14

    goto :goto_10

    :cond_19
    :goto_f
    move-object v6, v4

    move-object/from16 v35, v5

    move-wide/from16 v20, v22

    move-wide/from16 v22, v11

    move-wide v11, v9

    move-wide v9, v14

    :goto_10
    add-int/lit8 v3, v3, 0x1

    move-object v4, v2

    move-object/from16 v2, v35

    move-wide/from16 v49, v28

    move/from16 v28, v3

    move-object v3, v6

    move-wide/from16 v5, v49

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v2, v36

    invoke-virtual {v0, v4, v2, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->a(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v2

    invoke-virtual {v0, v13, v2, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->a(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method
