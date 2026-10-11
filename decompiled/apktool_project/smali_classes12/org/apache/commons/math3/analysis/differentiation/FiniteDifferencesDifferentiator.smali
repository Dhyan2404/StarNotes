.class public Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateFunctionDifferentiator;
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateVectorFunctionDifferentiator;
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateMatrixFunctionDifferentiator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1330555L


# instance fields
.field private final halfSampleSpan:D

.field private final nbPoints:I

.field private final stepSize:D

.field private final tMax:D

.field private final tMin:D


# direct methods
.method public constructor <init>(ID)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;-><init>(IDDD)V

    return-void
.end method

.method public constructor <init>(IDDD)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 3
    iput p1, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    const-wide/16 v2, 0x0

    cmpg-double v2, p2, v2

    if-lez v2, :cond_1

    .line 4
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p2, v2

    sub-int/2addr p1, v1

    int-to-double v1, p1

    mul-double/2addr p2, v1

    .line 5
    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v3, p2, v1

    sub-double v5, p6, p4

    cmpl-double p1, v3, v5

    if-gez p1, :cond_0

    .line 6
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    add-double/2addr p4, p2

    add-double/2addr p4, v0

    .line 7
    iput-wide p4, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMin:D

    sub-double/2addr p6, p2

    sub-double/2addr p6, v0

    .line 8
    iput-wide p6, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMax:D

    return-void

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    mul-double/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public static synthetic access$000(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMax:D

    return-wide v0
.end method

.method public static synthetic access$200(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->tMin:D

    return-wide v0
.end method

.method public static synthetic access$300(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->halfSampleSpan:D

    return-wide v0
.end method

.method public static synthetic access$400(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    return-wide v0
.end method

.method public static synthetic access$500(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->evaluate(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p0

    return-object p0
.end method

.method private evaluate(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;D[D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    move-object v0, p0

    iget v1, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    new-array v2, v1, [D

    new-array v1, v1, [D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    if-ge v4, v5, :cond_1

    aget-wide v5, p4, v4

    aput-wide v5, v1, v4

    const/4 v5, 0x1

    :goto_1
    if-gt v5, v4, :cond_0

    sub-int v6, v4, v5

    add-int/lit8 v7, v6, 0x1

    aget-wide v7, v1, v7

    aget-wide v9, v1, v6

    sub-double/2addr v7, v9

    int-to-double v9, v5

    iget-wide v11, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    mul-double/2addr v9, v11

    div-double/2addr v7, v9

    aput-wide v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    aget-wide v5, v1, v3

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getAllDerivatives()[D

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v6

    sub-double v6, v6, p2

    new-instance v8, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const-wide/16 v9, 0x0

    invoke-direct {v8, v4, v1, v9, v10}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    const/4 v9, 0x0

    move v10, v3

    :goto_2
    iget v11, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    if-ge v10, v11, :cond_3

    if-nez v10, :cond_2

    new-instance v9, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-direct {v9, v4, v1, v11, v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v10, -0x1

    int-to-double v11, v11

    iget-wide v13, v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    mul-double/2addr v11, v13

    sub-double v11, v6, v11

    aput-wide v11, v5, v3

    new-instance v11, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v11, v4, v1, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v9

    :goto_3
    aget-wide v11, v2, v10

    invoke-virtual {v9, v11, v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    return-object v8
.end method


# virtual methods
.method public differentiate(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$a;-><init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateFunction;)V

    return-object v0
.end method

.method public differentiate(Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableMatrixFunction;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$c;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$c;-><init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateMatrixFunction;)V

    return-object v0
.end method

.method public differentiate(Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator$b;-><init>(Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;Lorg/apache/commons/math3/analysis/UnivariateVectorFunction;)V

    return-object v0
.end method

.method public getNbPoints()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->nbPoints:I

    return p0
.end method

.method public getStepSize()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/differentiation/FiniteDifferencesDifferentiator;->stepSize:D

    return-wide v0
.end method
