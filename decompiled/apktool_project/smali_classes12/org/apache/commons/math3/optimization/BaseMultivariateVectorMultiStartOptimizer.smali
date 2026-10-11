.class public Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<",
        "TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<",
            "TFUNC;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:Lorg/apache/commons/math3/random/RandomVectorGenerator;

.field public f:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;ILorg/apache/commons/math3/random/RandomVectorGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<",
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

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->a:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    iput p2, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->d:I

    iput-object p3, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->e:Lorg/apache/commons/math3/random/RandomVectorGenerator;

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
.method public final a([D[D)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    new-instance v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$a;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer$a;-><init>(Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;[D[D)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->a:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    invoke-interface {p0}, Lorg/apache/commons/math3/optimization/BaseOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object p0

    return-object p0
.end method

.method public getEvaluations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->c:I

    return p0
.end method

.method public getMaxEvaluations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->b:I

    return p0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Lorg/apache/commons/math3/optimization/PointVectorValuePair;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    move-object v1, p0

    move v2, p1

    iput v2, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->b:I

    iget v0, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->d:I

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    iput-object v0, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    const/4 v3, 0x0

    iput v3, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->c:I

    const/4 v4, 0x0

    move v5, v3

    move-object v0, v4

    :goto_0
    iget v6, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->d:I

    if-ge v5, v6, :cond_1

    :try_start_0
    iget-object v6, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    iget-object v7, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->a:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    iget v8, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->c:I

    sub-int v8, v2, v8

    if-nez v5, :cond_0

    move-object/from16 v12, p5

    goto :goto_1

    :cond_0
    iget-object v9, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->e:Lorg/apache/commons/math3/random/RandomVectorGenerator;

    invoke-interface {v9}, Lorg/apache/commons/math3/random/RandomVectorGenerator;->nextVector()[D

    move-result-object v9

    move-object v12, v9

    :goto_1
    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-interface/range {v7 .. v12}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;->optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v7

    aput-object v7, v6, v5
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/ConvergenceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v6, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    aput-object v4, v6, v5

    goto :goto_2

    :catch_1
    iget-object v6, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    aput-object v4, v6, v5

    :goto_2
    iget v6, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->c:I

    iget-object v7, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->a:Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;

    invoke-interface {v7}, Lorg/apache/commons/math3/optimization/BaseOptimizer;->getEvaluations()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->c:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->a([D[D)V

    iget-object v1, v1, Lorg/apache/commons/math3/optimization/BaseMultivariateVectorMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    throw v0
.end method
