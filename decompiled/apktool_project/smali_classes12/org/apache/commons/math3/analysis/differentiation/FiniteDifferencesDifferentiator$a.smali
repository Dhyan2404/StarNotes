.class public Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->differentiate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field public final synthetic f:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->f:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->e:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->e:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->f:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->f:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$100(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->f:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$200(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->f:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$300(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    sub-double/2addr v0, v3

    .line 4
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->f:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v3

    new-array v3, v3, [D

    .line 5
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->f:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v4}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 6
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->e:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    int-to-double v5, v2

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->f:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v7}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$400(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v5, v0

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->f:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {p0, p1, v0, v1, v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$500(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;->f:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {p0}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p1, p0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method
