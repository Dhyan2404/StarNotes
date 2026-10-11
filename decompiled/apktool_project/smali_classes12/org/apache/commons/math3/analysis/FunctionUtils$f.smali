.class public final Lorg/apache/commons/math3/analysis/FunctionUtils$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toUnivariateDifferential(Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$f;->e:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$f;->e:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 4
    new-array v3, v3, [D

    .line 5
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$f;->e:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 6
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$f;->e:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-interface {p0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v4

    invoke-interface {p0, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    .line 7
    new-array p0, v0, [I

    move v6, v1

    :goto_0
    if-ge v6, v0, :cond_0

    .line 8
    aput v2, p0, v6

    add-int/lit8 v7, v6, 0x1

    .line 9
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v8

    mul-double/2addr v8, v4

    aput-wide v8, v3, v7

    .line 10
    aput v1, p0, v6

    move v6, v7

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object p0

    .line 12
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 13
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v2

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$f;->e:Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v3

    invoke-interface {p0, v3, v4}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    invoke-direct {v0, v2, v1, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method
