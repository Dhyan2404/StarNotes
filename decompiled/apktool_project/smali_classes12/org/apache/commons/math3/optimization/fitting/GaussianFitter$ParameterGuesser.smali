.class public Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/fitting/GaussianFitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterGuesser"
.end annotation


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D


# direct methods
.method public constructor <init>([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->f([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->a([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[D

    move-result-object p1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->a:D

    aget-wide v0, p1, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->b:D

    const/4 v0, 0x2

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->c:D

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[D
    .locals 20

    move-object/from16 v6, p1

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->b([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)I

    move-result v7

    aget-object v0, v6, v7

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v8

    aget-object v0, v6, v7

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v10

    sub-double v0, v10, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v12

    add-double v14, v8, v0

    const/4 v3, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    move-wide v4, v14

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->d([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)D

    move-result-wide v18

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    move-wide v4, v14

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->d([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/OutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    sub-double v0, v0, v18

    goto :goto_0

    :catch_0
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v6, v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v0

    aget-object v2, v6, v16

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    :goto_0
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v12

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, v12

    div-double/2addr v0, v2

    const/4 v2, 0x3

    new-array v2, v2, [D

    aput-wide v8, v2, v16

    aput-wide v10, v2, v17

    const/4 v3, 0x2

    aput-wide v0, v2, v3

    return-object v2
.end method

.method public final b([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)I
    .locals 5

    const/4 p0, 0x0

    const/4 v0, 0x1

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v1

    aget-object v3, p1, p0

    invoke-virtual {v3}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    move p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public final c([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-eqz p3, :cond_4

    :cond_0
    add-int v0, p2, p3

    if-gez p3, :cond_1

    if-ltz v0, :cond_3

    goto :goto_0

    :cond_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    :goto_0
    aget-object v0, p1, p2

    add-int/2addr p2, p3

    aget-object v1, p1, p2

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v7

    move-object v2, p0

    move-wide v3, p4

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->e(DDD)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    const/4 p2, 0x2

    if-gez p3, :cond_2

    new-array p2, p2, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    aput-object v1, p2, p1

    aput-object v0, p2, p0

    return-object p2

    :cond_2
    new-array p2, p2, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    aput-object v0, p2, p1

    aput-object v1, p2, p0

    return-object p2

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-wide/high16 p2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-wide/high16 p3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw p0
.end method

.method public final d([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-eqz p3, :cond_2

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->c([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;IID)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p0, p1

    const/4 p2, 0x1

    aget-object p0, p0, p2

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide p2

    cmpl-double p2, p2, p4

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide p2

    cmpl-double p2, p2, p4

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide p2

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v0

    sub-double/2addr p4, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    mul-double/2addr p4, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->getY()D

    move-result-wide p0

    sub-double/2addr v0, p0

    div-double/2addr p4, v0

    add-double/2addr p2, p4

    return-wide p2

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw p0
.end method

.method public final e(DDD)Z
    .locals 0

    cmpl-double p0, p1, p3

    if-ltz p0, :cond_0

    cmpg-double p0, p1, p5

    if-lez p0, :cond_1

    :cond_0
    cmpl-double p0, p1, p5

    if-ltz p0, :cond_2

    cmpg-double p0, p1, p3

    if-gtz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f([Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;
    .locals 1

    invoke-virtual {p1}, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/optimization/fitting/WeightedObservedPoint;

    new-instance v0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser$a;-><init>(Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public guess()[D
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->a:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->b:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/fitting/GaussianFitter$ParameterGuesser;->c:D

    aput-wide v2, v0, v1

    return-object v0
.end method
