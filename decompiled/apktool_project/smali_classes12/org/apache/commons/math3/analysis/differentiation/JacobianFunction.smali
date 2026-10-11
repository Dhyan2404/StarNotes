.class public Lorg/apache/commons/math3/analysis/differentiation/JacobianFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# instance fields
.field public final a:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/JacobianFunction;->a:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    return-void
.end method


# virtual methods
.method public value([D)[[D
    .locals 10

    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    array-length v2, p1

    if-ge v8, v2, :cond_0

    new-instance v9, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v3, p1

    const/4 v4, 0x1

    aget-wide v6, p1, v8

    move-object v2, v9

    move v5, v8

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v9, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/JacobianFunction;->a:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    array-length v0, p0

    array-length v2, p1

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    array-length v2, p1

    new-array v2, v2, [I

    move v3, v1

    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_2

    move v4, v1

    :goto_2
    array-length v5, p1

    if-ge v4, v5, :cond_1

    const/4 v5, 0x1

    aput v5, v2, v4

    aget-object v5, v0, v3

    aget-object v6, p0, v3

    invoke-virtual {v6, v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v6

    aput-wide v6, v5, v4

    aput v1, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method
