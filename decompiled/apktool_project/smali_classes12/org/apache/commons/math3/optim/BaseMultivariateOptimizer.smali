.class public abstract Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/math3/optim/BaseOptimizer<",
        "TPAIR;>;"
    }
.end annotation


# instance fields
.field public b:[D

.field public c:[D

.field public d:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "TPAIR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->b:[D

    if-eqz v0, :cond_5

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->c:[D

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    array-length v1, v1

    if-ne v1, v0, :cond_1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->b:[D

    aget-wide v4, v4, v1

    iget-object v6, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->c:[D

    aget-wide v6, v6, v1

    cmpg-double v8, v4, v6

    if-ltz v8, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object p0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->c:[D

    array-length p0, p0

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->d:[D

    if-eqz v1, :cond_5

    array-length v1, v1

    if-ne v1, v0, :cond_4

    :goto_1
    if-ge v2, v0, :cond_5

    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->b:[D

    aget-wide v4, v1, v2

    iget-object v1, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->d:[D

    aget-wide v6, v1, v2

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object p0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->d:[D

    array-length p0, p0

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_5
    return-void
.end method

.method public getLowerBound()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->c:[D

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    :goto_0
    return-object p0
.end method

.method public getStartPoint()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->b:[D

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    :goto_0
    return-object p0
.end method

.method public getUpperBound()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->d:[D

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    :goto_0
    return-object p0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/optim/OptimizationData;",
            ")TPAIR;"
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/commons/math3/optim/InitialGuess;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/commons/math3/optim/InitialGuess;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/InitialGuess;->getInitialGuess()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->b:[D

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/SimpleBounds;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/commons/math3/optim/SimpleBounds;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/SimpleBounds;->getLower()[D

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->c:[D

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/SimpleBounds;->getUpper()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->d:[D

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->a()V

    return-void
.end method
