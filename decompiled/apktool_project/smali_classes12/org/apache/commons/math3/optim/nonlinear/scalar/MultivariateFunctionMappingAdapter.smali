.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$c;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$f;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$b;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$e;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;
    }
.end annotation


# instance fields
.field public final e:Lorg/apache/commons/math3/analysis/MultivariateFunction;

.field public final f:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateFunction;[D[D)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-wide v2, p3, v1

    aget-wide v4, p2, v1

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    aget-wide v2, p3, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aget-wide p2, p2, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->e:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    array-length p1, p2

    new-array p1, p1, [Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->f:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;

    :goto_1
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->f:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;

    array-length p1, p1

    if-ge v0, p1, :cond_5

    aget-wide v1, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_3

    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->f:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;

    new-instance v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$e;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$a;)V

    aput-object v1, p1, v0

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->f:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;

    new-instance v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$f;

    aget-wide v2, p3, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$f;-><init>(D)V

    aput-object v1, p1, v0

    goto :goto_2

    :cond_3
    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->f:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;

    new-instance v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$b;

    aget-wide v2, p2, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$b;-><init>(D)V

    aput-object v1, p1, v0

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->f:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;

    new-instance v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$c;

    aget-wide v2, p2, v0

    aget-wide v4, p3, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$c;-><init>(DD)V

    aput-object v1, p1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p2

    array-length p2, p3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method


# virtual methods
.method public boundedToUnbounded([D)[D
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->f:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;

    array-length v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->f:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    aget-wide v3, p1, v1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;->b(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public unboundedToBounded([D)[D
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->f:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;

    array-length v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->f:[Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    aget-wide v3, p1, v1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter$d;->a(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public value([D)D
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->e:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionMappingAdapter;->unboundedToBounded([D)[D

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide p0

    return-wide p0
.end method
