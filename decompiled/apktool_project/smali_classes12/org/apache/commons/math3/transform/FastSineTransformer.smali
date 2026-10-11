.class public Lorg/apache/commons/math3/transform/FastSineTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/transform/RealTransformer;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1330293L


# instance fields
.field private final normalization:Lorg/apache/commons/math3/transform/DstNormalization;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/transform/DstNormalization;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastSineTransformer;->normalization:Lorg/apache/commons/math3/transform/DstNormalization;

    return-void
.end method


# virtual methods
.method public fst([D)[D
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p1

    array-length v1, v0

    new-array v1, v1, [D

    array-length v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    aput-wide v5, v1, v2

    return-object v1

    :cond_0
    new-array v7, v3, [D

    aput-wide v5, v7, v2

    shr-int/lit8 v8, v3, 0x1

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    aget-wide v11, v0, v8

    mul-double/2addr v11, v9

    aput-wide v11, v7, v8

    move v9, v4

    :goto_0
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-ge v9, v8, :cond_1

    int-to-double v12, v9

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v14

    int-to-double v14, v3

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v12

    aget-wide v14, v0, v9

    sub-int v16, v3, v9

    aget-wide v17, v0, v16

    add-double v19, v14, v17

    mul-double v12, v12, v19

    sub-double v14, v14, v17

    mul-double/2addr v14, v10

    add-double v10, v12, v14

    aput-wide v10, v7, v9

    sub-double/2addr v12, v14

    aput-wide v12, v7, v16

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/transform/FastFourierTransformer;

    sget-object v3, Lorg/apache/commons/math3/transform/DftNormalization;->STANDARD:Lorg/apache/commons/math3/transform/DftNormalization;

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/transform/FastFourierTransformer;-><init>(Lorg/apache/commons/math3/transform/DftNormalization;)V

    sget-object v3, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    invoke-virtual {v0, v7, v3}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    aput-wide v5, v1, v2

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    mul-double/2addr v2, v10

    aput-wide v2, v1, v4

    move v2, v4

    :goto_1
    if-ge v2, v8, :cond_2

    mul-int/lit8 v3, v2, 0x2

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v5

    neg-double v5, v5

    aput-wide v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v6, v0, v2

    invoke-virtual {v6}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v6

    sub-int/2addr v3, v4

    aget-wide v9, v1, v3

    add-double/2addr v6, v9

    aput-wide v6, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FIRST_ELEMENT_NOT_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-wide v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO_CONSIDER_PADDING:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

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

    .line 8
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object p1

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    .line 9
    aput-wide p3, p1, p2

    .line 10
    invoke-virtual {p0, p1, p7}, Lorg/apache/commons/math3/transform/FastSineTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[D

    move-result-object p0

    return-object p0
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[D
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/transform/FastSineTransformer;->normalization:Lorg/apache/commons/math3/transform/DstNormalization;

    sget-object v1, Lorg/apache/commons/math3/transform/DstNormalization;->ORTHOGONAL_DST_I:Lorg/apache/commons/math3/transform/DstNormalization;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    if-ne v0, v1, :cond_0

    .line 2
    array-length p2, p1

    int-to-double v0, p2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastSineTransformer;->fst([D)[D

    move-result-object p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    if-ne p2, v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastSineTransformer;->fst([D)[D

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    array-length p2, p1

    int-to-double v0, p2

    div-double/2addr v2, v0

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastSineTransformer;->fst([D)[D

    move-result-object p0

    invoke-static {p0, v2, v3}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object p0

    return-object p0
.end method
