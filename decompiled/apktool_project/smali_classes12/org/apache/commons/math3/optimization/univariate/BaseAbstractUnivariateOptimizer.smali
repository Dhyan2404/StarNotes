.class public abstract Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/univariate/UnivariateOptimizer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lorg/apache/commons/math3/util/Incrementor;

.field public c:Lorg/apache/commons/math3/optimization/GoalType;

.field public d:D

.field public e:D

.field public f:D

.field public g:Lorg/apache/commons/math3/analysis/UnivariateFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->b:Lorg/apache/commons/math3/util/Incrementor;

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->a:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-void
.end method


# virtual methods
.method public computeObjectiveValue(D)D
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->b:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->g:Lorg/apache/commons/math3/analysis/UnivariateFunction;

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

.method public abstract doOptimize()Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->a:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-object p0
.end method

.method public getEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->b:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result p0

    return p0
.end method

.method public getGoalType()Lorg/apache/commons/math3/optimization/GoalType;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->c:Lorg/apache/commons/math3/optimization/GoalType;

    return-object p0
.end method

.method public getMax()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->e:D

    return-wide v0
.end method

.method public getMaxEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->b:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result p0

    return p0
.end method

.method public getMin()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->d:D

    return-wide v0
.end method

.method public getStartValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->f:D

    return-wide v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 10

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p6, p4

    mul-double/2addr v2, v0

    add-double v8, p4, v2

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 11
    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->d:D

    .line 2
    iput-wide p6, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->e:D

    .line 3
    iput-wide p8, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->f:D

    .line 4
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->c:Lorg/apache/commons/math3/optimization/GoalType;

    .line 5
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->g:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    .line 6
    iget-object p2, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->b:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 7
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->b:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method
