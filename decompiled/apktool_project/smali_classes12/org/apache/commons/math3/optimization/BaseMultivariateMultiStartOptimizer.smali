.class public Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer<",
        "TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer<",
            "TFUNC;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:Lorg/apache/commons/math3/random/RandomVectorGenerator;

.field public f:[Lorg/apache/commons/math3/optimization/PointValuePair;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer<",
            "TFUNC;>;I",
            "Lorg/apache/commons/math3/random/RandomVectorGenerator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->a:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;

    iput p2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->d:I

    iput-object p3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->e:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(Lorg/apache/commons/math3/optimization/GoalType;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointValuePair;

    new-instance v1, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$a;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer$a;-><init>(Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;Lorg/apache/commons/math3/optimization/GoalType;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->a:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;

    invoke-interface {p0}, Lorg/apache/commons/math3/optimization/BaseOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object p0

    return-object p0
.end method

.method public getEvaluations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->c:I

    return p0
.end method

.method public getMaxEvaluations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->b:I

    return p0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointValuePair;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Lorg/apache/commons/math3/optimization/PointValuePair;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/optimization/PointValuePair;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[D)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    iput p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->b:I

    iget v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->d:I

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/PointValuePair;

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointValuePair;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->c:I

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->d:I

    if-ge v2, v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->a:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;

    iget v6, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->c:I

    sub-int v6, p1, v6

    if-nez v2, :cond_0

    move-object v7, p4

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->e:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    invoke-interface {v7}, Lorg/apache/commons/math3/random/RandomVectorGenerator;->nextVector()[D

    move-result-object v7

    :goto_1
    invoke-interface {v5, v6, p2, p3, v7}, Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointValuePair;

    aput-object v1, v4, v2

    :goto_2
    iget v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->c:I

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->a:Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;

    invoke-interface {v5}, Lorg/apache/commons/math3/optimization/BaseOptimizer;->getEvaluations()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->a(Lorg/apache/commons/math3/optimization/GoalType;)V

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointValuePair;

    aget-object p0, p0, v0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    throw v3
.end method
