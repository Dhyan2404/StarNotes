.class public abstract Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver<",
        "TFUNC;>;"
    }
.end annotation


# static fields
.field public static final i:D = 1.0E-14

.field public static final j:D = 1.0E-15


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field public e:D

.field public f:D

.field public g:D

.field public h:Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFUNC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(D)V
    .locals 7

    const-wide v1, 0x3d06849b86a12b9bL    # 1.0E-14

    const-wide v5, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move-wide v3, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7

    const-wide v5, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->b:D

    .line 5
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->c:D

    .line 6
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->a:D

    .line 7
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void
.end method


# virtual methods
.method public computeObjectiveValue(D)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->incrementEvaluationCount()V

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->h:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public abstract doSolve()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method public getAbsoluteAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->b:D

    return-wide v0
.end method

.method public getEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result p0

    return p0
.end method

.method public getFunctionValueAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->a:D

    return-wide v0
.end method

.method public getMax()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->f:D

    return-wide v0
.end method

.method public getMaxEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result p0

    return p0
.end method

.method public getMin()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->e:D

    return-wide v0
.end method

.method public getRelativeAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->c:D

    return-wide v0
.end method

.method public getStartValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->g:D

    return-wide v0
.end method

.method public incrementEvaluationCount()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public isBracketing(DD)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->h:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->isBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Z

    move-result p0

    return p0
.end method

.method public isSequence(DDD)Z
    .locals 0

    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->isSequence(DDD)Z

    move-result p0

    return p0
.end method

.method public setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DDD)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->e:D

    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->f:D

    iput-wide p7, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->g:D

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->h:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    iget-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;D)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;D)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v7, p3

    .line 4
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DD)D"
        }
    .end annotation

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p5, p3

    mul-double/2addr v2, v0

    add-double v7, p3, v2

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 3
    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;DDD)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->doSolve()D

    move-result-wide p0

    return-wide p0
.end method

.method public verifyBracketing(DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->h:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)V

    return-void
.end method

.method public verifyInterval(DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    return-void
.end method

.method public verifySequence(DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifySequence(DDD)V

    return-void
.end method
