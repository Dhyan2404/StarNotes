.class public Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->differentiate(Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;

.field public final synthetic b:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->b:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->a:Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)[D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->a:Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;->value(D)[D

    move-result-object p0

    return-object p0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->b:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->b:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$100(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->b:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$200(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->b:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v3}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$300(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v3

    sub-double/2addr v0, v3

    const/4 v3, 0x0

    move v4, v2

    .line 4
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->b:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v5}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 5
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->a:Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;

    int-to-double v6, v4

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->b:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v8}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$400(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v6, v0

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;->value(D)[D

    move-result-object v5

    if-nez v4, :cond_0

    .line 6
    array-length v3, v5

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->b:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {v6}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result v6

    filled-new-array {v3, v6}, [I

    move-result-object v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    :cond_0
    move v6, v2

    .line 7
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 8
    aget-object v7, v3, v6

    aget-wide v8, v5, v6

    aput-wide v8, v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    array-length v4, v3

    new-array v5, v4, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    :goto_2
    if-ge v2, v4, :cond_3

    .line 10
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->b:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    aget-object v7, v3, v2

    invoke-static {v6, p1, v0, v1, v7}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$500(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v5

    .line 11
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;->b:Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;

    invoke-static {p0}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p1, p0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method
