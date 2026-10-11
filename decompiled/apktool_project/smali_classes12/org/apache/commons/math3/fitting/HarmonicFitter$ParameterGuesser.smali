.class public Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/HarmonicFitter;
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
.method public constructor <init>([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->c([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->a([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D

    move-result-object v0

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->a:D

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->b:D

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->b([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->c:D

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, p1, v2, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method


# virtual methods
.method public final a([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[D
    .locals 35

    move-object/from16 v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide/from16 v21, v3

    move-wide v11, v7

    move-wide v13, v11

    move-wide v15, v13

    move-wide/from16 v17, v15

    move-wide/from16 v19, v17

    move-wide/from16 v23, v19

    move-wide/from16 v25, v23

    const/4 v10, 0x1

    :goto_0
    array-length v9, v0

    if-ge v10, v9, :cond_0

    aget-object v9, v0, v10

    invoke-virtual {v9}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v27

    aget-object v9, v0, v10

    invoke-virtual {v9}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v29

    sub-double v21, v27, v21

    sub-double v31, v29, v5

    mul-double v33, v5, v5

    mul-double v5, v5, v29

    add-double v33, v33, v5

    mul-double v5, v29, v29

    add-double v33, v33, v5

    mul-double v33, v33, v21

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double v33, v33, v5

    mul-double v31, v31, v31

    div-double v31, v31, v21

    sub-double v5, v27, v3

    add-double v23, v23, v33

    add-double v25, v25, v31

    mul-double v21, v5, v5

    add-double v19, v19, v21

    mul-double v21, v23, v23

    add-double v11, v11, v21

    mul-double v21, v5, v23

    add-double v15, v15, v21

    mul-double v5, v5, v25

    add-double/2addr v13, v5

    mul-double v5, v23, v25

    add-double v17, v17, v5

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v21, v27

    move-wide/from16 v5, v29

    goto :goto_0

    :cond_0
    mul-double v3, v11, v13

    mul-double v5, v15, v17

    sub-double/2addr v3, v5

    mul-double/2addr v13, v15

    mul-double v17, v17, v19

    sub-double v13, v13, v17

    mul-double v19, v19, v11

    mul-double/2addr v15, v15

    sub-double v19, v19, v15

    div-double/2addr v3, v13

    cmpg-double v5, v3, v7

    if-ltz v5, :cond_3

    div-double v5, v13, v19

    cmpg-double v9, v5, v7

    if-gez v9, :cond_1

    goto :goto_1

    :cond_1
    cmpl-double v0, v13, v7

    if-eqz v0, :cond_2

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    goto :goto_3

    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v4, 0x1

    array-length v3, v0

    sub-int/2addr v3, v4

    aget-object v3, v0, v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v5

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v9

    sub-double/2addr v5, v9

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_7

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v7, v5

    aput-wide v7, v1, v4

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v7, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move v9, v4

    :goto_2
    array-length v3, v0

    if-ge v9, v3, :cond_6

    aget-object v3, v0, v9

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v3

    cmpg-double v10, v3, v5

    if-gez v10, :cond_4

    move-wide v5, v3

    :cond_4
    cmpl-double v10, v3, v7

    if-lez v10, :cond_5

    move-wide v7, v3

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v7, v5

    mul-double/2addr v7, v3

    aput-wide v7, v1, v2

    :goto_3
    return-object v1

    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v0
.end method

.method public final b([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)D
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    move-wide v9, v7

    :goto_0
    array-length v11, v1

    if-ge v2, v11, :cond_0

    aget-object v11, v1, v2

    invoke-virtual {v11}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v11

    aget-object v13, v1, v2

    invoke-virtual {v13}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v13

    sub-double v5, v13, v5

    sub-double v3, v11, v3

    div-double/2addr v5, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->b:D

    mul-double/2addr v3, v11

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v15

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v3

    move-wide/from16 v17, v11

    iget-wide v11, v0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->b:D

    mul-double v19, v11, v13

    mul-double v19, v19, v15

    mul-double v21, v5, v3

    sub-double v19, v19, v21

    add-double v9, v9, v19

    mul-double/2addr v11, v13

    mul-double/2addr v11, v3

    mul-double/2addr v5, v15

    add-double/2addr v11, v5

    add-double/2addr v7, v11

    add-int/lit8 v2, v2, 0x1

    move-wide v5, v13

    move-wide/from16 v3, v17

    goto :goto_0

    :cond_0
    neg-double v0, v7

    invoke-static {v0, v1, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final c([Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)[Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
    .locals 7

    invoke-virtual {p1}, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    const/4 p1, 0x0

    aget-object p1, p0, p1

    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v4

    cmpg-double p1, v2, v4

    if-gez p1, :cond_2

    add-int/lit8 p1, v0, -0x1

    aget-object v2, p0, p1

    :goto_1
    if-ltz p1, :cond_1

    invoke-virtual {v1}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getX()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aput-object v2, p0, v3

    add-int/lit8 v3, p1, -0x1

    if-eqz p1, :cond_0

    aget-object v2, p0, v3

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    aput-object v1, p0, p1

    aget-object p1, p0, v0

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public guess()[D
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->a:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->b:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/apache/commons/math3/fitting/HarmonicFitter$ParameterGuesser;->c:D

    aput-wide v2, v0, v1

    return-object v0
.end method
