.class public Lorg/apache/commons/math3/random/StableRandomGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/random/NormalizedRandomGenerator;


# instance fields
.field public final a:Lorg/apache/commons/math3/random/RandomGenerator;

.field public final b:D

.field public final c:D

.field public final d:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v4, p2, v2

    if-gtz v4, :cond_2

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v5, p4, v5

    if-ltz v5, :cond_1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, p4, v5

    if-gtz v5, :cond_1

    iput-object p1, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    iput-wide p2, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->b:D

    iput-wide p4, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->c:D

    if-gez v4, :cond_0

    cmpl-double p1, p4, v0

    if-eqz p1, :cond_0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p2, v0

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide p1

    mul-double/2addr p4, p1

    iput-wide p4, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->d:D

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->d:D

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_LEFT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public nextNormalizedDouble()D
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    neg-double v1, v1

    iget-object v3, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    iget-wide v7, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->b:D

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    cmpl-double v11, v7, v9

    if-nez v11, :cond_0

    mul-double/2addr v1, v9

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v11, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->c:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-nez v11, :cond_2

    cmpl-double v5, v7, v12

    if-nez v5, :cond_1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v0

    goto/16 :goto_0

    :cond_1
    sub-double v5, v12, v7

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->b:D

    div-double v5, v12, v5

    sub-double/2addr v5, v12

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->b:D

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v3

    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->b:D

    div-double/2addr v12, v5

    invoke-static {v3, v4, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    div-double v0, v1, v3

    goto :goto_0

    :cond_2
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    iget-wide v14, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->b:D

    sub-double/2addr v14, v12

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v11, v14, v16

    if-lez v11, :cond_3

    iget-wide v5, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->b:D

    mul-double/2addr v5, v3

    sub-double/2addr v3, v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    iget-wide v14, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->d:D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v5

    mul-double/2addr v14, v5

    add-double/2addr v9, v14

    div-double/2addr v9, v7

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v5

    iget-wide v14, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->d:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v3

    mul-double/2addr v14, v3

    add-double/2addr v5, v14

    mul-double/2addr v9, v5

    mul-double/2addr v1, v7

    iget-wide v3, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->b:D

    sub-double/2addr v12, v3

    div-double/2addr v12, v3

    invoke-static {v1, v2, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    div-double v0, v9, v0

    goto :goto_0

    :cond_3
    iget-wide v14, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->c:D

    mul-double/2addr v14, v3

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v14, v14, v16

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v3

    mul-double/2addr v3, v14

    iget-wide v9, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->c:D

    mul-double v1, v1, v16

    mul-double/2addr v1, v7

    div-double/2addr v1, v14

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    mul-double/2addr v9, v1

    sub-double/2addr v3, v9

    const-wide v1, 0x3fe45f306dc9c883L    # 0.6366197723675814

    mul-double/2addr v1, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->b:D

    cmpl-double v7, v3, v12

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->c:D

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v3

    mul-double/2addr v7, v3

    add-double v0, v1, v7

    goto :goto_0

    :cond_4
    move-wide v0, v1

    :goto_0
    return-wide v0
.end method
