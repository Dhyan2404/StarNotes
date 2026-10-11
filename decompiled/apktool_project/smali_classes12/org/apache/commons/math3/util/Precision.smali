.class public Lorg/apache/commons/math3/util/Precision;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EPSILON:D

.field public static final SAFE_MIN:D

.field public static final a:J = 0x3ffL

.field public static final b:J = -0x8000000000000000L

.field public static final c:I = -0x80000000

.field public static final d:D

.field public static final e:J

.field public static final f:J

.field public static final g:I

.field public static final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->e:J

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->f:J

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/apache/commons/math3/util/Precision;->g:I

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/apache/commons/math3/util/Precision;->h:I

    const-wide/high16 v0, 0x3ca0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    const-wide/high16 v0, 0x10000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DDI)D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-wide/from16 v0, p0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    packed-switch p4, :pswitch_data_0

    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_ROUNDING_METHOD:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ROUND_CEILING"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ROUND_DOWN"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ROUND_FLOOR"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "ROUND_HALF_DOWN"

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "ROUND_HALF_EVEN"

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "ROUND_HALF_UP"

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "ROUND_UNNECESSARY"

    const/16 v16, 0x7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string v17, "ROUND_UP"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw v0

    :pswitch_1
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    goto/16 :goto_0

    :cond_1
    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    goto/16 :goto_0

    :cond_2
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v6

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    goto/16 :goto_0

    :cond_3
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    goto/16 :goto_0

    :pswitch_2
    invoke-static {v0, v1, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_4
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_5

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_5
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_4
    cmpl-double v2, p2, v2

    if-nez v2, :cond_6

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_6
    invoke-static {v0, v1, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_5
    cmpl-double v2, p2, v2

    if-nez v2, :cond_7

    invoke-static {v0, v1, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    goto :goto_0

    :cond_7
    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v1, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_7
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_8

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->nextAfter(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    :cond_8
    :goto_0
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static compareTo(DDD)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpg-double p0, p0, p2

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static compareTo(DDI)I
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpg-double p0, p0, p2

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static equals(DD)Z
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result p0

    return p0
.end method

.method public static equals(DDD)Z
    .locals 2

    const/4 v0, 0x1

    .line 12
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-nez v1, :cond_1

    sub-double/2addr p2, p0

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, p4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static equals(DDI)Z
    .locals 11

    .line 13
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 14
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    xor-long v4, v0, v2

    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    sub-long/2addr v0, v2

    .line 15
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v0

    int-to-long v2, p4

    cmp-long p4, v0, v2

    if-gtz p4, :cond_2

    :goto_0
    move p4, v5

    goto :goto_2

    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 16
    sget-wide v7, Lorg/apache/commons/math3/util/Precision;->e:J

    sub-long/2addr v2, v7

    .line 17
    sget-wide v7, Lorg/apache/commons/math3/util/Precision;->f:J

    sub-long/2addr v0, v7

    goto :goto_1

    .line 18
    :cond_1
    sget-wide v7, Lorg/apache/commons/math3/util/Precision;->e:J

    sub-long/2addr v0, v7

    .line 19
    sget-wide v7, Lorg/apache/commons/math3/util/Precision;->f:J

    sub-long/2addr v2, v7

    move-wide v9, v0

    move-wide v0, v2

    move-wide v2, v9

    :goto_1
    int-to-long v7, p4

    cmp-long p4, v2, v7

    if-lez p4, :cond_3

    :cond_2
    move p4, v6

    goto :goto_2

    :cond_3
    sub-long/2addr v7, v2

    cmp-long p4, v0, v7

    if-gtz p4, :cond_2

    goto :goto_0

    :goto_2
    if-eqz p4, :cond_4

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    :goto_3
    return v5
.end method

.method public static equals(FF)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result p0

    return p0
.end method

.method public static equals(FFF)Z
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v1

    if-nez v1, :cond_1

    sub-float/2addr p1, p0

    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static equals(FFI)Z
    .locals 6

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    xor-int v2, v0, v1

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    sub-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v0

    if-gt v0, p2, :cond_2

    :goto_0
    move p2, v3

    goto :goto_2

    :cond_0
    if-ge v0, v1, :cond_1

    .line 6
    sget v2, Lorg/apache/commons/math3/util/Precision;->g:I

    sub-int/2addr v1, v2

    .line 7
    sget v2, Lorg/apache/commons/math3/util/Precision;->h:I

    sub-int/2addr v0, v2

    goto :goto_1

    .line 8
    :cond_1
    sget v2, Lorg/apache/commons/math3/util/Precision;->g:I

    sub-int/2addr v0, v2

    .line 9
    sget v2, Lorg/apache/commons/math3/util/Precision;->h:I

    sub-int/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_1
    if-le v1, p2, :cond_3

    :cond_2
    move p2, v4

    goto :goto_2

    :cond_3
    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_2

    goto :goto_0

    :goto_2
    if-eqz p2, :cond_4

    .line 10
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    return v3
.end method

.method public static equalsIncludingNaN(DD)Z
    .locals 3

    cmpl-double v0, p0, p0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    cmpl-double v2, p2, p2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2, p3, v1}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    goto :goto_3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    if-eqz v0, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, p0

    :goto_1
    cmpl-double p2, p2, p2

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_2

    :cond_3
    move p2, p0

    :goto_2
    xor-int/2addr p1, p2

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, p0

    :goto_3
    return v1
.end method

.method public static equalsIncludingNaN(DDD)Z
    .locals 1

    .line 5
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v0

    if-nez v0, :cond_1

    sub-double/2addr p2, p0

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, p4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static equalsIncludingNaN(DDI)Z
    .locals 2

    cmpl-double v0, p0, p0

    if-nez v0, :cond_1

    cmpl-double v1, p2, p2

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result p0

    goto :goto_3

    :cond_1
    :goto_0
    const/4 p0, 0x1

    const/4 p1, 0x0

    if-eqz v0, :cond_2

    move p4, p0

    goto :goto_1

    :cond_2
    move p4, p1

    :goto_1
    cmpl-double p2, p2, p2

    if-eqz p2, :cond_3

    move p2, p0

    goto :goto_2

    :cond_3
    move p2, p1

    :goto_2
    xor-int/2addr p2, p4

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    move p0, p1

    :goto_3
    return p0
.end method

.method public static equalsIncludingNaN(FF)Z
    .locals 3

    cmpl-float v0, p0, p0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    cmpl-float v2, p1, p1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result v1

    goto :goto_3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, p0

    :goto_1
    cmpl-float p1, p1, p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, p0

    :goto_2
    xor-int/2addr p1, v0

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, p0

    :goto_3
    return v1
.end method

.method public static equalsIncludingNaN(FFF)Z
    .locals 1

    .line 2
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v0

    if-nez v0, :cond_1

    sub-float/2addr p1, p0

    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static equalsIncludingNaN(FFI)Z
    .locals 2

    cmpl-float v0, p0, p0

    if-nez v0, :cond_1

    cmpl-float v1, p1, p1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/Precision;->equals(FFI)Z

    move-result p0

    goto :goto_3

    :cond_1
    :goto_0
    const/4 p0, 0x1

    const/4 p2, 0x0

    if-eqz v0, :cond_2

    move v0, p0

    goto :goto_1

    :cond_2
    move v0, p2

    :goto_1
    cmpl-float p1, p1, p1

    if-eqz p1, :cond_3

    move p1, p0

    goto :goto_2

    :cond_3
    move p1, p2

    :goto_2
    xor-int/2addr p1, v0

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move p0, p2

    :goto_3
    return p0
.end method

.method public static equalsWithRelativeTolerance(DDD)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    sub-double/2addr p0, p2

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, p4

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static representableDelta(DD)D
    .locals 0

    add-double/2addr p2, p0

    sub-double/2addr p2, p0

    return-wide p2
.end method

.method public static round(DI)D
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/Precision;->round(DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static round(DII)D
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    mul-double p2, p0, v0

    :cond_0
    return-wide p2

    .line 3
    :catch_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-eqz p2, :cond_1

    return-wide p0

    :cond_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static round(FI)F
    .locals 1

    const/4 v0, 0x4

    .line 4
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/util/Precision;->round(FII)F

    move-result p0

    return p0
.end method

.method public static round(FII)F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v0, p0}, Lorg/apache/commons/math3/util/FastMath;->copySign(FF)F

    move-result v0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 6
    invoke-static {v1, v2, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr p1, v0

    mul-float/2addr p0, p1

    float-to-double v1, p0

    float-to-double v3, v0

    .line 7
    invoke-static {v1, v2, v3, v4, p2}, Lorg/apache/commons/math3/util/Precision;->a(DDI)D

    move-result-wide v0

    double-to-float p0, v0

    div-float/2addr p0, p1

    return p0
.end method
