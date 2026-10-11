.class public abstract Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/integration/UnivariateIntegrator;


# static fields
.field public static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-15

.field public static final DEFAULT_MAX_ITERATIONS_COUNT:I = 0x7fffffff

.field public static final DEFAULT_MIN_ITERATIONS_COUNT:I = 0x3

.field public static final DEFAULT_RELATIVE_ACCURACY:D = 1.0E-6


# instance fields
.field public a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field public final b:D

.field public final c:D

.field public final d:I

.field public e:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field public f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field public g:D

.field public h:D

.field protected iterations:Lorg/apache/commons/math3/util/Incrementor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(DD)V
    .locals 7

    const/4 v5, 0x3

    const v6, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 11
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    return-void
.end method

.method public constructor <init>(DDII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->c:D

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->b:D

    if-lez p5, :cond_1

    if-le p6, p5, :cond_0

    .line 4
    iput p5, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->d:I

    .line 5
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    invoke-virtual {p1, p6}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 6
    invoke-static {p1}, Lorg/apache/commons/math3/util/Incrementor;->wrap(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;)Lorg/apache/commons/math3/util/Incrementor;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    .line 8
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->e:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method

.method public constructor <init>(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide v3, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v0, p0

    move v5, p1

    move v6, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    return-void
.end method


# virtual methods
.method public computeObjectiveValue(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->e:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method

.method public abstract doIntegrate()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method public getAbsoluteAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->b:D

    return-wide v0
.end method

.method public getEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->e:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result p0

    return p0
.end method

.method public getIterations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result p0

    return p0
.end method

.method public getMax()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->h:D

    return-wide v0
.end method

.method public getMaximalIterationCount()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result p0

    return p0
.end method

.method public getMin()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->g:D

    return-wide v0
.end method

.method public getMinimalIterationCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->d:I

    return p0
.end method

.method public getRelativeAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->c:D

    return-wide v0
.end method

.method public incrementCount()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    return-void
.end method

.method public integrate(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->doIntegrate()D

    move-result-wide p0

    return-wide p0
.end method

.method public setup(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3, p4, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->g:D

    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->h:D

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->f:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    iget-object p2, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->e:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->e:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;->a:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void
.end method
