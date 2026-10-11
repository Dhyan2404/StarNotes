.class public Lorg/apache/commons/math3/analysis/solvers/BrentSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "SourceFile"


# static fields
.field public static final k:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    return-void
.end method


# virtual methods
.method public final a(DDDD)D
    .locals 43

    sub-double v0, p3, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v4

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide v12, v10

    move-wide/from16 v14, p7

    move-wide/from16 v16, v0

    move-wide/from16 v18, v16

    move-wide v0, v6

    :goto_0
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    cmpg-double v20, v20, v22

    if-gez v20, :cond_0

    move-wide v6, v0

    move-wide v0, v8

    move-wide v12, v10

    move-wide v10, v14

    goto :goto_1

    :cond_0
    move-wide/from16 v39, v12

    move-wide v12, v14

    move-wide/from16 v14, v39

    move-wide/from16 v41, v6

    move-wide v6, v8

    move-wide/from16 v8, v41

    :goto_1
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v22, v4, v20

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v22, v22, v2

    sub-double v24, v0, v6

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    cmpg-double v28, v28, v22

    if-lez v28, :cond_c

    move-wide/from16 v28, v2

    const-wide/16 v2, 0x0

    invoke-static {v12, v13, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v30

    if-eqz v30, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    cmpg-double v30, v30, v22

    if-ltz v30, :cond_6

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_2

    goto :goto_4

    :cond_2
    div-double v30, v12, v14

    cmpl-double v32, v8, v0

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    if-nez v32, :cond_3

    mul-double v20, v20, v24

    mul-double v20, v20, v30

    sub-double v33, v33, v30

    goto :goto_2

    :cond_3
    div-double/2addr v14, v10

    div-double v35, v12, v10

    mul-double v20, v20, v24

    mul-double v20, v20, v14

    sub-double v37, v14, v35

    mul-double v20, v20, v37

    sub-double v8, v6, v8

    sub-double v35, v35, v33

    mul-double v8, v8, v35

    sub-double v20, v20, v8

    mul-double v20, v20, v30

    sub-double v14, v14, v33

    mul-double v14, v14, v35

    sub-double v30, v30, v33

    mul-double v33, v14, v30

    :goto_2
    move-wide/from16 v8, v20

    move-wide/from16 v14, v33

    cmpl-double v20, v8, v2

    if-lez v20, :cond_4

    neg-double v14, v14

    goto :goto_3

    :cond_4
    neg-double v8, v8

    :goto_3
    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    mul-double v20, v20, v24

    mul-double v20, v20, v14

    mul-double v30, v22, v14

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    sub-double v20, v20, v30

    cmpl-double v20, v8, v20

    if-gez v20, :cond_6

    mul-double v16, v16, v26

    mul-double v16, v16, v14

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    cmpl-double v16, v8, v16

    if-ltz v16, :cond_5

    goto :goto_4

    :cond_5
    div-double/2addr v8, v14

    goto :goto_5

    :cond_6
    :goto_4
    move-wide/from16 v8, v24

    move-wide/from16 v18, v8

    :goto_5
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpl-double v14, v14, v22

    if-lez v14, :cond_7

    add-double v14, v6, v8

    :goto_6
    move-wide/from16 p1, v0

    :goto_7
    move-object/from16 v0, p0

    goto :goto_8

    :cond_7
    cmpl-double v14, v24, v2

    if-lez v14, :cond_8

    add-double v22, v6, v22

    move-wide/from16 p1, v0

    move-wide/from16 v14, v22

    goto :goto_7

    :cond_8
    sub-double v14, v6, v22

    goto :goto_6

    :goto_8
    invoke-virtual {v0, v14, v15}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v16

    cmpl-double v1, v16, v2

    if-lez v1, :cond_9

    cmpl-double v1, v10, v2

    if-gtz v1, :cond_a

    :cond_9
    cmpg-double v1, v16, v2

    if-gtz v1, :cond_b

    cmpg-double v1, v10, v2

    if-gtz v1, :cond_b

    :cond_a
    sub-double v1, v14, v6

    move-wide v8, v1

    move-wide/from16 v18, v8

    move-wide v1, v6

    move-wide v10, v12

    goto :goto_9

    :cond_b
    move-wide/from16 v1, p1

    :goto_9
    move-wide v0, v1

    move-wide/from16 v2, v28

    move-wide/from16 v39, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v8

    move-wide v8, v14

    move-wide/from16 v14, v39

    goto/16 :goto_0

    :cond_c
    :goto_a
    return-wide v6
.end method

.method public doSolve()D
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoBracketingException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getMin()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getMax()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getStartValue()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getFunctionValueAccuracy()D

    move-result-wide v14

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v12

    move-wide v5, v10

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->verifySequence(DDD)V

    invoke-virtual {v7, v12, v13}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v14

    if-gtz v0, :cond_0

    return-wide v12

    :cond_0
    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v14

    if-gtz v0, :cond_1

    return-wide v8

    :cond_1
    mul-double v0, v16, v5

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->a(DDDD)D

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-virtual {v7, v10, v11}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v14

    if-gtz v0, :cond_3

    return-wide v10

    :cond_3
    mul-double v0, v16, v18

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v10

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->a(DDDD)D

    move-result-wide v0

    return-wide v0

    :cond_4
    new-instance v12, Lorg/apache/commons/math3/exception/NoBracketingException;

    move-object v0, v12

    move-wide v1, v8

    move-wide v3, v10

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v12
.end method
