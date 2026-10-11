.class public Lorg/apache/commons/math3/transform/FastCosineTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/transform/RealTransformer;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1330294L


# instance fields
.field private final normalization:Lorg/apache/commons/math3/transform/DctNormalization;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/transform/DctNormalization;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastCosineTransformer;->normalization:Lorg/apache/commons/math3/transform/DctNormalization;

    return-void
.end method


# virtual methods
.method public fct([D)[D
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p1

    array-length v1, v0

    new-array v1, v1, [D

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x0

    if-ne v2, v3, :cond_0

    aget-wide v7, v0, v6

    aget-wide v9, v0, v3

    add-double/2addr v7, v9

    mul-double/2addr v7, v4

    aput-wide v7, v1, v6

    aget-wide v6, v0, v6

    sub-double/2addr v6, v9

    mul-double/2addr v6, v4

    aput-wide v6, v1, v3

    return-object v1

    :cond_0
    new-array v7, v2, [D

    aget-wide v8, v0, v6

    aget-wide v10, v0, v2

    add-double/2addr v8, v10

    mul-double/2addr v8, v4

    aput-wide v8, v7, v6

    shr-int/lit8 v8, v2, 0x1

    aget-wide v9, v0, v8

    aput-wide v9, v7, v8

    aget-wide v9, v0, v6

    aget-wide v11, v0, v2

    sub-double/2addr v9, v11

    mul-double/2addr v9, v4

    move v11, v3

    :goto_0
    if-ge v11, v8, :cond_1

    aget-wide v12, v0, v11

    sub-int v14, v2, v11

    aget-wide v15, v0, v14

    add-double/2addr v12, v15

    mul-double/2addr v12, v4

    int-to-double v4, v11

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v17

    move-object/from16 v17, v7

    int-to-double v6, v2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v6

    aget-wide v18, v0, v11

    aget-wide v20, v0, v14

    sub-double v18, v18, v20

    mul-double v6, v6, v18

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    aget-wide v18, v0, v11

    aget-wide v20, v0, v14

    sub-double v18, v18, v20

    mul-double v4, v4, v18

    sub-double v18, v12, v6

    aput-wide v18, v17, v11

    add-double/2addr v12, v6

    aput-wide v12, v17, v14

    add-double/2addr v9, v4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v17

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v17, v7

    new-instance v0, Lorg/apache/commons/math3/transform/FastFourierTransformer;

    sget-object v4, Lorg/apache/commons/math3/transform/DftNormalization;->STANDARD:Lorg/apache/commons/math3/transform/DftNormalization;

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/transform/FastFourierTransformer;-><init>(Lorg/apache/commons/math3/transform/DftNormalization;)V

    sget-object v4, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    move-object/from16 v5, v17

    invoke-virtual {v0, v5, v4}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v5

    aput-wide v5, v1, v4

    aput-wide v9, v1, v3

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_2

    mul-int/lit8 v5, v4, 0x2

    aget-object v6, v0, v4

    invoke-virtual {v6}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v6

    aput-wide v6, v1, v5

    add-int/lit8 v6, v5, 0x1

    sub-int/2addr v5, v3

    aget-wide v9, v1, v5

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v11

    sub-double/2addr v9, v11

    aput-wide v9, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    aget-object v0, v0, v8

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v3

    aput-wide v3, v1, v2

    return-object v1

    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO_PLUS_ONE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 10
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, p7}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[D

    move-result-object p0

    return-object p0
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-ne p2, v0, :cond_1

    .line 2
    iget-object p2, p0, Lorg/apache/commons/math3/transform/FastCosineTransformer;->normalization:Lorg/apache/commons/math3/transform/DctNormalization;

    sget-object v0, Lorg/apache/commons/math3/transform/DctNormalization;->ORTHOGONAL_DCT_I:Lorg/apache/commons/math3/transform/DctNormalization;

    if-ne p2, v0, :cond_0

    .line 3
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->fct([D)[D

    move-result-object p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->fct([D)[D

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    int-to-double v3, p2

    div-double/2addr v1, v3

    .line 7
    iget-object p2, p0, Lorg/apache/commons/math3/transform/FastCosineTransformer;->normalization:Lorg/apache/commons/math3/transform/DctNormalization;

    sget-object v0, Lorg/apache/commons/math3/transform/DctNormalization;->ORTHOGONAL_DCT_I:Lorg/apache/commons/math3/transform/DctNormalization;

    if-ne p2, v0, :cond_2

    .line 8
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->fct([D)[D

    move-result-object p0

    invoke-static {p0, v1, v2}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object p0

    return-object p0
.end method
