.class public Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;
    }
.end annotation


# static fields
.field public static final m:D = 1.0E-6


# instance fields
.field public final l:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(D)V

    .line 3
    new-instance p1, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$a;)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->l:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(DD)V

    .line 5
    new-instance p1, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$a;)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->l:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;-><init>(DDD)V

    .line 7
    new-instance p1, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$a;)V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->l:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;

    return-void
.end method


# virtual methods
.method public doSolve()D
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
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

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->laguerre(DDDD)D

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

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->laguerre(DDDD)D

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

.method public laguerre(DDDD)D
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->getCoefficients()[D

    move-result-object p5

    invoke-static {p5}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p5

    new-instance p6, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 p7, 0x3fe0000000000000L    # 0.5

    add-double v0, p1, p3

    mul-double/2addr v0, p7

    const-wide/16 p7, 0x0

    invoke-direct {p6, v0, v1, p7, p8}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    iget-object p7, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->l:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;

    invoke-virtual {p7, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->b([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p7

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->l:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->a(DDLorg/apache/commons/math3/complex/Complex;)Z

    move-result p8

    if-eqz p8, :cond_0

    invoke-virtual {p7}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object p7, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->l:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;

    invoke-virtual {p7, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->c([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p5

    const/4 p6, 0x0

    :goto_0
    array-length p7, p5

    if-ge p6, p7, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->l:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;

    aget-object v5, p5, p6

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->a(DDLorg/apache/commons/math3/complex/Complex;)Z

    move-result p7

    if-eqz p7, :cond_1

    aget-object p0, p5, p6

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide p0

    goto :goto_1

    :cond_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_2
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :goto_1
    return-wide p0
.end method

.method public solveAllComplex([DD)[Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->solveAllComplex([DDI)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p0

    return-object p0
.end method

.method public solveAllComplex([DDI)[Lorg/apache/commons/math3/complex/Complex;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 2
    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p0

    move v1, p4

    move-wide v7, p2

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    .line 3
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->l:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;

    invoke-static {p1}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    new-instance p4, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v0, 0x0

    invoke-direct {p4, p2, p3, v0, v1}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {p0, p1, p4}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->c([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p0

    return-object p0
.end method

.method public solveComplex([DD)Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->solveComplex([DDI)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p0

    return-object p0
.end method

.method public solveComplex([DDI)Lorg/apache/commons/math3/complex/Complex;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 2
    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p0

    move v1, p4

    move-wide v7, p2

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/AbstractPolynomialSolver;->setup(ILorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;DDD)V

    .line 3
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->l:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;

    invoke-static {p1}, Lorg/apache/commons/math3/complex/ComplexUtils;->convertToComplex([D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    new-instance p4, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v0, 0x0

    invoke-direct {p4, p2, p3, v0, v1}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {p0, p1, p4}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->b([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p0

    return-object p0
.end method
