.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# instance fields
.field public final e:Lorg/apache/commons/math3/analysis/MultivariateFunction;

.field public final f:[D

.field public final g:[D

.field public final h:D

.field public final i:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateFunction;[D[DD[D)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p6}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_3

    array-length v0, p2

    array-length v1, p6

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-wide v1, p3, v0

    aget-wide v3, p2, v0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    aget-wide p3, p3, v0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aget-wide p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->e:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->f:[D

    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->g:[D

    iput-wide p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->h:D

    invoke-virtual {p6}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->i:[D

    return-void

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p2

    array-length p2, p6

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p2

    array-length p2, p3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method


# virtual methods
.method public value([D)D
    .locals 12

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->i:[D

    array-length v1, v1

    if-ge v0, v1, :cond_5

    aget-wide v1, p1, v0

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->f:[D

    aget-wide v3, v3, v0

    cmpg-double v3, v1, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->g:[D

    aget-wide v3, v3, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_2
    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->i:[D

    array-length v6, v5

    if-ge v0, v6, :cond_4

    aget-wide v6, p1, v0

    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->f:[D

    aget-wide v8, v8, v0

    cmpg-double v10, v6, v8

    if-gez v10, :cond_2

    aget-wide v10, v5, v0

    sub-double/2addr v8, v6

    mul-double/2addr v10, v8

    goto :goto_3

    :cond_2
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->g:[D

    aget-wide v8, v8, v0

    cmpl-double v10, v6, v8

    if-lez v10, :cond_3

    aget-wide v10, v5, v0

    sub-double/2addr v6, v8

    mul-double/2addr v10, v6

    goto :goto_3

    :cond_3
    move-wide v10, v1

    :goto_3
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-wide p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->h:D

    add-double/2addr p0, v3

    return-wide p0

    :cond_5
    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateFunctionPenaltyAdapter;->e:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide p0

    return-wide p0
.end method
