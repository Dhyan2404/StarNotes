.class public Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer<",
        "TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer<",
            "TFUNC;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:Lorg/apache/commons/math3/random/RandomGenerator;

.field public f:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer<",
            "TFUNC;>;I",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->a:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    iput p2, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->d:I

    iput-object p3, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->e:Lorg/apache/commons/math3/random/RandomGenerator;

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

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    new-instance v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer$a;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer$a;-><init>(Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;Lorg/apache/commons/math3/optimization/GoalType;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
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

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->a:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    invoke-interface {p0}, Lorg/apache/commons/math3/optimization/BaseOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object p0

    return-object p0
.end method

.method public getEvaluations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->c:I

    return p0
.end method

.method public getMaxEvaluations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->b:I

    return p0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "DD)",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;"
        }
    .end annotation

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

    .line 1
    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "DDD)",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2
    iget v0, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->d:I

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    iput-object v0, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    const/4 v12, 0x0

    .line 3
    iput v12, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->c:I

    const/4 v13, 0x0

    move v14, v12

    move-object v0, v13

    .line 4
    :goto_0
    iget v2, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->d:I

    if-ge v14, v2, :cond_1

    if-nez v14, :cond_0

    move-wide/from16 v10, p8

    goto :goto_1

    .line 5
    :cond_0
    :try_start_0
    iget-object v2, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->e:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    sub-double v4, p6, p4

    mul-double/2addr v2, v4

    add-double v2, p4, v2

    move-wide v10, v2

    .line 6
    :goto_1
    iget-object v15, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    iget-object v2, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->a:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    iget v3, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->c:I

    sub-int v3, p1, v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-interface/range {v2 .. v11}, Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;->optimize(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DDD)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v2

    aput-object v2, v15, v14
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 7
    iget-object v2, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    aput-object v13, v2, v14

    .line 8
    :goto_2
    iget v2, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->c:I

    iget-object v3, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->a:Lorg/apache/commons/math3/optimization/univariate/BaseUnivariateOptimizer;

    invoke-interface {v3}, Lorg/apache/commons/math3/optimization/BaseOptimizer;->getEvaluations()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->c:I

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p3

    .line 9
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->a(Lorg/apache/commons/math3/optimization/GoalType;)V

    .line 10
    iget-object v1, v1, Lorg/apache/commons/math3/optimization/univariate/UnivariateMultiStartOptimizer;->f:[Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    aget-object v1, v1, v12

    if-eqz v1, :cond_2

    return-object v1

    .line 11
    :cond_2
    throw v0
.end method
