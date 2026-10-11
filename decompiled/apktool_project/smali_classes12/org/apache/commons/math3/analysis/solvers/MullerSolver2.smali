.class public Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "SourceFile"


# static fields
.field public static final k:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;-><init>(D)V

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


# virtual methods
.method public doSolve()D
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getMin()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getMax()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->verifyInterval(DD)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getFunctionValueAccuracy()D

    move-result-wide v9

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpg-double v13, v13, v9

    if-gez v13, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    cmpg-double v15, v15, v9

    if-gez v15, :cond_1

    return-wide v3

    :cond_1
    mul-double v15, v11, v13

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-gtz v15, :cond_9

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double v19, v1, v3

    move-wide/from16 v21, v13

    mul-double v13, v19, v15

    invoke-virtual {v0, v13, v14}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v15

    const-wide/high16 v19, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v25, v1

    move-wide/from16 v23, v3

    move-wide/from16 v27, v19

    move-wide/from16 v41, v11

    move-wide/from16 v11, v21

    move-wide/from16 v21, v15

    move-wide v15, v13

    move-wide/from16 v13, v41

    :goto_0
    sub-double v29, v15, v23

    sub-double v25, v23, v25

    div-double v25, v29, v25

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    add-double v33, v25, v31

    mul-double v35, v33, v11

    sub-double v35, v21, v35

    mul-double v37, v25, v13

    add-double v35, v35, v37

    mul-double v35, v35, v25

    const-wide/high16 v37, 0x4000000000000000L    # 2.0

    mul-double v39, v25, v37

    add-double v39, v39, v31

    mul-double v39, v39, v21

    mul-double v31, v33, v33

    mul-double v31, v31, v11

    sub-double v39, v39, v31

    mul-double v25, v25, v25

    mul-double v25, v25, v13

    add-double v39, v39, v25

    mul-double v33, v33, v21

    mul-double v13, v39, v39

    const-wide/high16 v25, 0x4010000000000000L    # 4.0

    mul-double v35, v35, v25

    mul-double v35, v35, v33

    sub-double v25, v13, v35

    cmpl-double v31, v25, v17

    if-ltz v31, :cond_3

    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    add-double v13, v39, v13

    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v25

    sub-double v39, v39, v25

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    invoke-static/range {v39 .. v40}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v31

    cmpl-double v25, v25, v31

    if-lez v25, :cond_2

    goto :goto_1

    :cond_2
    move-wide/from16 v13, v39

    goto :goto_1

    :cond_3
    sub-double v13, v13, v25

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    :goto_1
    cmpl-double v25, v13, v17

    if-eqz v25, :cond_5

    mul-double v33, v33, v37

    mul-double v33, v33, v29

    div-double v33, v33, v13

    sub-double v13, v15, v33

    :goto_2
    cmpl-double v25, v13, v23

    if-eqz v25, :cond_4

    cmpl-double v25, v13, v15

    if-nez v25, :cond_6

    :cond_4
    add-double/2addr v13, v7

    goto :goto_2

    :cond_5
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath;->random()D

    move-result-wide v13

    sub-double v25, v3, v1

    mul-double v13, v13, v25

    add-double/2addr v13, v1

    move-wide/from16 v27, v19

    :cond_6
    invoke-virtual {v0, v13, v14}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v25

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v29

    move-wide/from16 v31, v11

    mul-double v11, v5, v29

    invoke-static {v11, v12, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    sub-double v27, v13, v27

    invoke-static/range {v27 .. v28}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v27

    cmpg-double v11, v27, v11

    if-lez v11, :cond_8

    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpg-double v11, v11, v9

    if-gtz v11, :cond_7

    goto :goto_3

    :cond_7
    move-wide/from16 v27, v13

    move-wide/from16 v11, v21

    move-wide/from16 v21, v25

    move-wide/from16 v25, v23

    move-wide/from16 v13, v31

    move-wide/from16 v23, v15

    move-wide/from16 v15, v27

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-wide v13

    :cond_9
    move-wide/from16 v21, v13

    new-instance v9, Lorg/apache/commons/math3/exception/NoBracketingException;

    move-object v0, v9

    move-wide v5, v11

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v9
.end method
