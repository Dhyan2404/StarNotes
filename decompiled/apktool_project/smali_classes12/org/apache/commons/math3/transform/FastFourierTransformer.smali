.class public Lorg/apache/commons/math3/transform/FastFourierTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/transform/FastFourierTransformer$b;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final W_SUB_N_I:[D

.field private static final W_SUB_N_R:[D

.field static final serialVersionUID:J = 0x1330292L


# instance fields
.field private final normalization:Lorg/apache/commons/math3/transform/DftNormalization;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x3f

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/transform/FastFourierTransformer;->W_SUB_N_R:[D

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/math3/transform/FastFourierTransformer;->W_SUB_N_I:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        -0x4010000000000000L    # -1.0
        0x3c91a62633145c07L    # 6.123233995736766E-17
        0x3fe6a09e667f3bcdL    # 0.7071067811865476
        0x3fed906bcf328d46L    # 0.9238795325112867
        0x3fef6297cff75cb0L    # 0.9807852804032304
        0x3fefd88da3d12526L    # 0.9951847266721969
        0x3feff621e3796d7eL    # 0.9987954562051724
        0x3feffd886084cd0dL    # 0.9996988186962042
        0x3fefff62169b92dbL    # 0.9999247018391445
        0x3fefffd8858e8a92L    # 0.9999811752826011
        0x3feffff621621d02L    # 0.9999952938095762
        0x3feffffd88586ee6L    # 0.9999988234517019
        0x3fefffff62161a34L    # 0.9999997058628822
        0x3fefffffd8858675L    # 0.9999999264657179
        0x3feffffff621619cL    # 0.9999999816164293
        0x3feffffffd885867L    # 0.9999999954041073
        0x3fefffffff62161aL    # 0.9999999988510269
        0x3fefffffffd88586L    # 0.9999999997127567
        0x3feffffffff62162L    # 0.9999999999281892
        0x3feffffffffd8858L    # 0.9999999999820472
        0x3fefffffffff6216L    # 0.9999999999955118
        0x3fefffffffffd886L    # 0.999999999998878
        0x3feffffffffff621L    # 0.9999999999997194
        0x3feffffffffffd88L    # 0.9999999999999298
        0x3fefffffffffff62L    # 0.9999999999999825
        0x3fefffffffffffd9L    # 0.9999999999999957
        0x3feffffffffffff6L    # 0.9999999999999989
        0x3feffffffffffffeL    # 0.9999999999999998
        0x3fefffffffffffffL    # 0.9999999999999999
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3cb1a62633145c07L    # 2.4492935982947064E-16
        -0x435e59d9cceba3f9L    # -1.2246467991473532E-16
        -0x4010000000000000L    # -1.0
        -0x40195f619980c434L    # -0.7071067811865475
        -0x4027821d5951569dL    # -0.3826834323650898
        -0x40370747c39659f6L    # -0.19509032201612825
        -0x4046e85943d64bd4L    # -0.0980171403295606
        -0x4056e09a0ef227ecL    # -0.049067674327418015
        -0x4066deaa085c9982L    # -0.024541228522912288
        -0x4076de2e0321387cL    # -0.012271538285719925
        -0x4086de0f0198ff8fL    # -0.006135884649154475
        -0x4096de0741335b46L    # -0.003067956762965976
        -0x40a6de055119b8d3L    # -0.0015339801862847655
        -0x40b6de04d5134ca0L    # -7.669903187427045E-4
        -0x40c6de04b611b15aL    # -3.8349518757139556E-4
        -0x40d6de04ae514a85L    # -1.917475973107033E-4
        -0x40e6de04ac6130cfL    # -9.587379909597734E-5
        -0x40f6de04abe52a62L    # -4.793689960306688E-5
        -0x4106de04abc628c6L    # -2.396844980841822E-5
        -0x4116de04abbe6860L    # -1.1984224905069705E-5
        -0x4126de04abbc7846L    # -5.9921124526424275E-6
        -0x4136de04abbbfc3fL    # -2.996056226334661E-6
        -0x4146de04abbbdd3eL    # -1.4980281131690111E-6
        -0x4156de04abbbd57dL    # -7.490140565847157E-7
        -0x4166de04abbbd38dL    # -3.7450702829238413E-7
        -0x4176de04abbbd311L    # -1.8725351414619535E-7
        -0x4186de04abbbd2f2L    # -9.362675707309808E-8
        -0x4196de04abbbd2ebL    # -4.681337853654909E-8
        -0x41a6de04abbbd2e9L    # -2.340668926827455E-8
        -0x41b6de04abbbd2e8L    # -1.1703344634137277E-8
        -0x41c6de04abbbd2e8L    # -5.8516723170686385E-9
        -0x41d6de04abbbd2e8L    # -2.9258361585343192E-9
        -0x41e6de04abbbd2e8L    # -1.4629180792671596E-9
        -0x41f6de04abbbd2e8L    # -7.314590396335798E-10
        -0x4206de04abbbd2e8L    # -3.657295198167899E-10
        -0x4216de04abbbd2e8L    # -1.8286475990839495E-10
        -0x4226de04abbbd2e8L    # -9.143237995419748E-11
        -0x4236de04abbbd2e8L    # -4.571618997709874E-11
        -0x4246de04abbbd2e8L    # -2.285809498854937E-11
        -0x4256de04abbbd2e8L    # -1.1429047494274685E-11
        -0x4266de04abbbd2e8L    # -5.714523747137342E-12
        -0x4276de04abbbd2e8L
        -0x4286de04abbbd2e8L    # -1.4286309367843356E-12
        -0x4296de04abbbd2e8L    # -7.143154683921678E-13
        -0x42a6de04abbbd2e8L    # -3.571577341960839E-13
        -0x42b6de04abbbd2e8L    # -1.7857886709804195E-13
        -0x42c6de04abbbd2e8L    # -8.928943354902097E-14
        -0x42d6de04abbbd2e8L    # -4.4644716774510487E-14
        -0x42e6de04abbbd2e8L    # -2.2322358387255243E-14
        -0x42f6de04abbbd2e8L    # -1.1161179193627622E-14
        -0x4306de04abbbd2e8L    # -5.580589596813811E-15
        -0x4316de04abbbd2e8L
        -0x4326de04abbbd2e8L    # -1.3951473992034527E-15
        -0x4336de04abbbd2e8L    # -6.975736996017264E-16
        -0x4346de04abbbd2e8L    # -3.487868498008632E-16
        -0x4356de04abbbd2e8L    # -1.743934249004316E-16
        -0x4366de04abbbd2e8L    # -8.71967124502158E-17
        -0x4376de04abbbd2e8L    # -4.35983562251079E-17
        -0x4386de04abbbd2e8L    # -2.179917811255395E-17
        -0x4396de04abbbd2e8L    # -1.0899589056276974E-17
        -0x43a6de04abbbd2e8L    # -5.449794528138487E-18
        -0x43b6de04abbbd2e8L
        -0x43c6de04abbbd2e8L    # -1.3624486320346218E-18
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/commons/math3/transform/DftNormalization;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer;->normalization:Lorg/apache/commons/math3/transform/DftNormalization;

    return-void
.end method

.method private static bitReversalShuffle2([D[D)V
    .locals 8

    array-length v0, p0

    shr-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    if-ge v2, v3, :cond_0

    aget-wide v4, p0, v2

    aget-wide v6, p0, v3

    aput-wide v6, p0, v2

    aput-wide v4, p0, v3

    aget-wide v4, p1, v2

    aget-wide v6, p1, v3

    aput-wide v6, p1, v2

    aput-wide v4, p1, v3

    :cond_0
    move v4, v1

    :goto_1
    if-gt v4, v3, :cond_1

    if-lez v4, :cond_1

    sub-int/2addr v3, v4

    shr-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private mdfft(Lorg/apache/commons/math3/transform/FastFourierTransformer$b;Lorg/apache/commons/math3/transform/TransformType;I[I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->d()[I

    move-result-object v0

    .line 7
    array-length v1, p4

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 8
    aget v1, v0, p3

    new-array v1, v1, [Lorg/apache/commons/math3/complex/Complex;

    move v2, v3

    .line 9
    :goto_0
    aget v4, v0, p3

    if-ge v2, v4, :cond_0

    .line 10
    aput v2, p4, p3

    .line 11
    invoke-virtual {p1, p4}, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->b([I)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transform([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p0

    .line 13
    :goto_1
    aget p2, v0, p3

    if-ge v3, p2, :cond_3

    .line 14
    aput v3, p4, p3

    .line 15
    aget-object p2, p0, v3

    invoke-virtual {p1, p2, p4}, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->e(Lorg/apache/commons/math3/complex/Complex;[I)Lorg/apache/commons/math3/complex/Complex;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_1
    array-length v1, p4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 17
    array-length v2, p4

    invoke-static {p4, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    array-length v2, p4

    if-ne v2, p3, :cond_2

    .line 19
    aput v3, v1, p3

    .line 20
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->mdfft(Lorg/apache/commons/math3/transform/FastFourierTransformer$b;Lorg/apache/commons/math3/transform/TransformType;I[I)V

    goto :goto_3

    .line 21
    :cond_2
    :goto_2
    array-length v2, p4

    aget v2, v0, v2

    if-ge v3, v2, :cond_3

    .line 22
    array-length v2, p4

    aput v3, v1, v2

    .line 23
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->mdfft(Lorg/apache/commons/math3/transform/FastFourierTransformer$b;Lorg/apache/commons/math3/transform/TransformType;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private static normalizeTransformedData([[DLorg/apache/commons/math3/transform/DftNormalization;Lorg/apache/commons/math3/transform/TransformType;)V
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-object p0, p0, v2

    array-length v3, v1

    sget-object v4, Lorg/apache/commons/math3/transform/FastFourierTransformer$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eq p1, v2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    int-to-double p1, v3

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p1

    div-double/2addr v4, p1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-wide p1, v1, v0

    mul-double/2addr p1, v4

    aput-wide p1, v1, v0

    aget-wide p1, p0, v0

    mul-double/2addr p1, v4

    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw p0

    :cond_1
    sget-object p1, Lorg/apache/commons/math3/transform/TransformType;->INVERSE:Lorg/apache/commons/math3/transform/TransformType;

    if-ne p2, p1, :cond_2

    int-to-double p1, v3

    div-double/2addr v4, p1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-wide p1, v1, v0

    mul-double/2addr p1, v4

    aput-wide p1, v1, v0

    aget-wide p1, p0, v0

    mul-double/2addr p1, v4

    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static transformInPlace([[DLorg/apache/commons/math3/transform/DftNormalization;Lorg/apache/commons/math3/transform/TransformType;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    const/4 v2, 0x0

    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v6, v0, v5

    array-length v7, v4

    array-length v8, v6

    if-ne v7, v8, :cond_9

    array-length v7, v4

    int-to-long v8, v7

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v8

    if-eqz v8, :cond_8

    if-ne v7, v5, :cond_0

    return-void

    :cond_0
    if-ne v7, v3, :cond_1

    aget-wide v7, v4, v2

    aget-wide v9, v6, v2

    aget-wide v11, v4, v5

    aget-wide v13, v6, v5

    add-double v15, v7, v11

    aput-wide v15, v4, v2

    add-double v15, v9, v13

    aput-wide v15, v6, v2

    sub-double/2addr v7, v11

    aput-wide v7, v4, v5

    sub-double/2addr v9, v13

    aput-wide v9, v6, v5

    invoke-static/range {p0 .. p2}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->normalizeTransformedData([[DLorg/apache/commons/math3/transform/DftNormalization;Lorg/apache/commons/math3/transform/TransformType;)V

    return-void

    :cond_1
    invoke-static {v4, v6}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->bitReversalShuffle2([D[D)V

    sget-object v8, Lorg/apache/commons/math3/transform/TransformType;->INVERSE:Lorg/apache/commons/math3/transform/TransformType;

    if-ne v1, v8, :cond_2

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_3

    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v10, v8, 0x2

    add-int/lit8 v11, v8, 0x3

    aget-wide v12, v4, v8

    aget-wide v14, v6, v8

    aget-wide v16, v4, v10

    aget-wide v18, v6, v10

    aget-wide v20, v4, v9

    aget-wide v22, v6, v9

    aget-wide v24, v4, v11

    aget-wide v26, v6, v11

    add-double v28, v12, v16

    add-double v28, v28, v20

    add-double v28, v28, v24

    aput-wide v28, v4, v8

    add-double v28, v14, v18

    add-double v28, v28, v22

    add-double v28, v28, v26

    aput-wide v28, v6, v8

    sub-double v28, v12, v20

    sub-double v30, v26, v18

    add-double v30, v28, v30

    aput-wide v30, v4, v9

    sub-double v30, v14, v22

    sub-double v32, v16, v24

    add-double v32, v30, v32

    aput-wide v32, v6, v9

    sub-double v12, v12, v16

    add-double v12, v12, v20

    sub-double v12, v12, v24

    aput-wide v12, v4, v10

    sub-double v14, v14, v18

    add-double v14, v14, v22

    sub-double v14, v14, v26

    aput-wide v14, v6, v10

    sub-double v18, v18, v26

    add-double v28, v28, v18

    aput-wide v28, v4, v11

    sub-double v24, v24, v16

    add-double v30, v30, v24

    aput-wide v30, v6, v11

    add-int/lit8 v8, v8, 0x4

    goto :goto_0

    :cond_2
    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_3

    add-int/lit8 v9, v8, 0x1

    add-int/lit8 v10, v8, 0x2

    add-int/lit8 v11, v8, 0x3

    aget-wide v12, v4, v8

    aget-wide v14, v6, v8

    aget-wide v16, v4, v10

    aget-wide v18, v6, v10

    aget-wide v20, v4, v9

    aget-wide v22, v6, v9

    aget-wide v24, v4, v11

    aget-wide v26, v6, v11

    add-double v28, v12, v16

    add-double v28, v28, v20

    add-double v28, v28, v24

    aput-wide v28, v4, v8

    add-double v28, v14, v18

    add-double v28, v28, v22

    add-double v28, v28, v26

    aput-wide v28, v6, v8

    sub-double v28, v12, v20

    sub-double v30, v18, v26

    add-double v30, v28, v30

    aput-wide v30, v4, v9

    sub-double v30, v14, v22

    sub-double v32, v24, v16

    add-double v32, v30, v32

    aput-wide v32, v6, v9

    sub-double v12, v12, v16

    add-double v12, v12, v20

    sub-double v12, v12, v24

    aput-wide v12, v4, v10

    sub-double v14, v14, v18

    add-double v14, v14, v22

    sub-double v14, v14, v26

    aput-wide v14, v6, v10

    sub-double v26, v26, v18

    add-double v28, v28, v26

    aput-wide v28, v4, v11

    sub-double v16, v16, v24

    add-double v30, v30, v16

    aput-wide v30, v6, v11

    add-int/lit8 v8, v8, 0x4

    goto :goto_1

    :cond_3
    const/4 v8, 0x4

    :goto_2
    if-ge v8, v7, :cond_7

    shl-int/lit8 v9, v8, 0x1

    add-int/2addr v3, v5

    sget-object v10, Lorg/apache/commons/math3/transform/FastFourierTransformer;->W_SUB_N_R:[D

    aget-wide v10, v10, v3

    sget-object v12, Lorg/apache/commons/math3/transform/FastFourierTransformer;->W_SUB_N_I:[D

    aget-wide v12, v12, v3

    sget-object v14, Lorg/apache/commons/math3/transform/TransformType;->INVERSE:Lorg/apache/commons/math3/transform/TransformType;

    if-ne v1, v14, :cond_4

    neg-double v12, v12

    :cond_4
    move v14, v2

    :goto_3
    if-ge v14, v7, :cond_6

    add-int v15, v14, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/16 v18, 0x0

    :goto_4
    if-ge v2, v8, :cond_5

    add-int v21, v14, v2

    aget-wide v22, v4, v21

    aget-wide v24, v6, v21

    add-int v26, v15, v2

    aget-wide v27, v4, v26

    aget-wide v29, v6, v26

    mul-double v31, v16, v27

    add-double v33, v22, v31

    mul-double v35, v18, v29

    sub-double v33, v33, v35

    aput-wide v33, v4, v21

    mul-double v29, v29, v16

    add-double v33, v24, v29

    mul-double v27, v27, v18

    add-double v33, v33, v27

    aput-wide v33, v6, v21

    sub-double v31, v31, v35

    sub-double v22, v22, v31

    aput-wide v22, v4, v26

    add-double v29, v29, v27

    sub-double v24, v24, v29

    aput-wide v24, v6, v26

    mul-double v21, v16, v10

    mul-double v23, v18, v12

    sub-double v21, v21, v23

    mul-double v16, v16, v12

    mul-double v18, v18, v10

    add-double v18, v16, v18

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v16, v21

    goto :goto_4

    :cond_5
    add-int/2addr v14, v9

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move v8, v9

    goto :goto_2

    :cond_7
    invoke-static/range {p0 .. p2}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->normalizeTransformedData([[DLorg/apache/commons/math3/transform/DftNormalization;Lorg/apache/commons/math3/transform/TransformType;)V

    return-void

    :cond_8
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO_CONSIDER_PADDING:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_9
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v6

    array-length v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_a
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    invoke-direct {v1, v0, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method


# virtual methods
.method public mdfft(Ljava/lang/Object;Lorg/apache/commons/math3/transform/TransformType;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->d()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-array v3, v1, [I

    .line 4
    invoke-direct {p0, p1, p2, v2, v3}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->mdfft(Lorg/apache/commons/math3/transform/FastFourierTransformer$b;Lorg/apache/commons/math3/transform/TransformType;I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/transform/FastFourierTransformer$b;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;
    .locals 0

    .line 4
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p7}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p0

    return-object p0
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [[D

    .line 1
    array-length v1, p1

    invoke-static {p1, v1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    array-length p1, p1

    new-array p1, p1, [D

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer;->normalization:Lorg/apache/commons/math3/transform/DftNormalization;

    invoke-static {v0, p0, p2}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transformInPlace([[DLorg/apache/commons/math3/transform/DftNormalization;Lorg/apache/commons/math3/transform/TransformType;)V

    .line 3
    invoke-static {v0}, Lorg/apache/commons/math3/transform/TransformUtils;->createComplexArray([[D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p0

    return-object p0
.end method

.method public transform([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;
    .locals 0

    .line 6
    invoke-static {p1}, Lorg/apache/commons/math3/transform/TransformUtils;->createRealImaginaryArray([Lorg/apache/commons/math3/complex/Complex;)[[D

    move-result-object p1

    .line 7
    iget-object p0, p0, Lorg/apache/commons/math3/transform/FastFourierTransformer;->normalization:Lorg/apache/commons/math3/transform/DftNormalization;

    invoke-static {p1, p0, p2}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transformInPlace([[DLorg/apache/commons/math3/transform/DftNormalization;Lorg/apache/commons/math3/transform/TransformType;)V

    .line 8
    invoke-static {p1}, Lorg/apache/commons/math3/transform/TransformUtils;->createComplexArray([[D)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object p0

    return-object p0
.end method
