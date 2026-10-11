.class public final Lorg/apache/commons/math3/analysis/FunctionUtils$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$j;->a:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$j;->a:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object p0

    return-object p0
.end method

.method public value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v3

    .line 3
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v4

    .line 4
    array-length v5, v1

    const/4 v6, 0x1

    if-gt v4, v6, :cond_7

    move v7, v2

    :goto_0
    if-ge v7, v5, :cond_2

    .line 5
    aget-object v8, v1, v7

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v8

    if-ne v8, v3, :cond_1

    .line 6
    aget-object v8, v1, v7

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v8

    if-ne v8, v4, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v1

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 9
    :cond_2
    new-array v7, v5, [D

    move v8, v2

    :goto_1
    if-ge v8, v5, :cond_3

    .line 10
    aget-object v9, v1, v8

    invoke-virtual {v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$j;->a:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-interface {v8, v7}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object v8

    .line 12
    iget-object v0, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$j;->a:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;->jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;->value([D)[[D

    move-result-object v0

    .line 13
    array-length v7, v8

    new-array v9, v7, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move v10, v2

    :goto_2
    if-ge v10, v7, :cond_6

    add-int/lit8 v11, v3, 0x1

    .line 14
    new-array v11, v11, [D

    .line 15
    aget-wide v12, v8, v10

    aput-wide v12, v11, v2

    .line 16
    new-array v12, v3, [I

    move v13, v2

    :goto_3
    if-ge v13, v3, :cond_5

    .line 17
    aput v6, v12, v13

    move v14, v2

    :goto_4
    if-ge v14, v5, :cond_4

    add-int/lit8 v15, v13, 0x1

    .line 18
    aget-wide v16, v11, v15

    aget-object v18, v0, v10

    aget-wide v18, v18, v14

    aget-object v6, v1, v14

    invoke-virtual {v6, v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    aput-wide v16, v11, v15

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto :goto_4

    .line 19
    :cond_4
    aput v2, v12, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 20
    :cond_5
    new-instance v6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v6, v3, v4, v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    aput-object v6, v9, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    return-object v9

    .line 21
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method
