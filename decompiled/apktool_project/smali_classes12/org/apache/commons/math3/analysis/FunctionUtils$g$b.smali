.class public Lorg/apache/commons/math3/analysis/FunctionUtils$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$g;->gradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/analysis/FunctionUtils$g;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$g;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$g$b;->a:Lorg/apache/commons/math3/analysis/FunctionUtils$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[D
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
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$g$b;->a:Lorg/apache/commons/math3/analysis/FunctionUtils$g;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$g;->e:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {p0, v7}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    new-array p1, v6, [D

    new-array v0, v6, [I

    move v1, v8

    :goto_1
    if-ge v1, v6, :cond_1

    const/4 v2, 0x1

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v2

    aput-wide v2, p1, v1

    aput v8, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method
