.class public Lorg/apache/commons/math3/transform/FastHadamardTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/transform/RealTransformer;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1330293L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fht([D)[D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    array-length p0, p1

    .line 2
    div-int/lit8 v0, p0, 0x2

    int-to-long v1, p0

    .line 3
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    new-array v1, p0, [D

    .line 5
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    if-ge v3, p0, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    mul-int/lit8 v5, v4, 0x2

    .line 6
    aget-wide v6, v1, v5

    add-int/2addr v5, v2

    aget-wide v8, v1, v5

    add-double/2addr v6, v8

    aput-wide v6, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_2
    if-ge v4, p0, :cond_1

    mul-int/lit8 v5, v4, 0x2

    sub-int/2addr v5, p0

    .line 7
    aget-wide v6, v1, v5

    add-int/2addr v5, v2

    aget-wide v8, v1, v5

    sub-double/2addr v6, v8

    aput-wide v6, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 8
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public fht([I)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 9
    array-length p0, p1

    .line 10
    div-int/lit8 v0, p0, 0x2

    int-to-long v1, p0

    .line 11
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    new-array v1, p0, [I

    .line 13
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    if-ge v3, p0, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    mul-int/lit8 v5, v4, 0x2

    .line 14
    aget v6, v1, v5

    add-int/2addr v5, v2

    aget v5, v1, v5

    add-int/2addr v6, v5

    aput v6, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_2
    if-ge v4, p0, :cond_1

    mul-int/lit8 v5, v4, 0x2

    sub-int/2addr v5, p0

    .line 15
    aget v6, v1, v5

    add-int/2addr v5, v2

    aget v5, v1, v5

    sub-int/2addr v6, v5

    aput v6, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 16
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[D
    .locals 0

    .line 4
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[D

    move-result-object p0

    return-object p0
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[D
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([D)[D

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([D)[D

    move-result-object p0

    array-length p1, p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object p0

    return-object p0
.end method

.method public transform([I)[I
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastHadamardTransformer;->fht([I)[I

    move-result-object p0

    return-object p0
.end method
