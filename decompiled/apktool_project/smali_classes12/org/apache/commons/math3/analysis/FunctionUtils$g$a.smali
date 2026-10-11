.class public Lorg/apache/commons/math3/analysis/FunctionUtils$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$g;->partialDerivative(I)Lorg/apache/commons/math3/analysis/MultivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lorg/apache/commons/math3/analysis/FunctionUtils$g;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$g;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$g$a;->f:Lorg/apache/commons/math3/analysis/FunctionUtils$g;

    iput p2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$g$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 11

    array-length v0, p1

    new-array v1, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    iget v4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$g$a;->e:I

    if-ne v2, v4, :cond_0

    new-instance v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-wide v9, p1, v2

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v3, v1, v2

    goto :goto_1

    :cond_0
    new-instance v4, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    aget-wide v5, p1, v2

    invoke-direct {v4, v3, v3, v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$g$a;->f:Lorg/apache/commons/math3/analysis/FunctionUtils$g;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$g;->e:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {p0, v1}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    filled-new-array {v3}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide p0

    return-wide p0
.end method
