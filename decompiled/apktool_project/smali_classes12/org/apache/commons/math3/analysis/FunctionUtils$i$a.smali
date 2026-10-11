.class public Lorg/apache/commons/math3/analysis/FunctionUtils$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$i;->jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/analysis/FunctionUtils$i;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$i;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$i$a;->a:Lorg/apache/commons/math3/analysis/FunctionUtils$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[[D
    .locals 11

    array-length v6, p1

    new-array v7, v6, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v6, :cond_0

    new-instance v10, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v2, 0x1

    aget-wide v4, p1, v9

    move-object v0, v10

    move v1, v6

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$i$a;->a:Lorg/apache/commons/math3/analysis/FunctionUtils$i;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$i;->a:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {p0, v7}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    array-length p1, p0

    filled-new-array {p1, v6}, [I

    move-result-object p1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    new-array v0, v6, [I

    move v1, v8

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    move v2, v8

    :goto_2
    if-ge v2, v6, :cond_1

    const/4 v3, 0x1

    aput v3, v0, v2

    aget-object v3, p1, v1

    aget-object v4, p0, v1

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v4

    aput-wide v4, v3, v2

    aput v8, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method
