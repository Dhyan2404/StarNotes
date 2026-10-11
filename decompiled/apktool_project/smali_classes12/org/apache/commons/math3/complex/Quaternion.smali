.class public final Lorg/apache/commons/math3/complex/Quaternion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final I:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final IDENTITY:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final J:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final K:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final ZERO:Lorg/apache/commons/math3/complex/Quaternion;

.field private static final serialVersionUID:J = 0x132946cL


# instance fields
.field private final q0:D

.field private final q1:D

.field private final q2:D

.field private final q3:D


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v9, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v9, Lorg/apache/commons/math3/complex/Quaternion;->IDENTITY:Lorg/apache/commons/math3/complex/Quaternion;

    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Quaternion;->ZERO:Lorg/apache/commons/math3/complex/Quaternion;

    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Quaternion;->I:Lorg/apache/commons/math3/complex/Quaternion;

    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Quaternion;->J:Lorg/apache/commons/math3/complex/Quaternion;

    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Quaternion;->K:Lorg/apache/commons/math3/complex/Quaternion;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    .line 4
    iput-wide p5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    .line 5
    iput-wide p7, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    return-void
.end method

.method public constructor <init>(D[D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 8
    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    const/4 p1, 0x0

    .line 9
    aget-wide p1, p3, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    const/4 p1, 0x1

    .line 10
    aget-wide p1, p3, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    const/4 p1, 0x2

    .line 11
    aget-wide p1, p3, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    return-void

    .line 12
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p3

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public constructor <init>([D)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(D[D)V

    return-void
.end method

.method public static add(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 10

    .line 1
    new-instance v9, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    add-double v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide p0

    add-double/2addr v7, p0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public static dotProduct(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)D
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide p0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static multiply(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 29

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v6

    .line 5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v10

    .line 7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v12

    .line 8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v14

    mul-double v16, v0, v8

    mul-double v18, v2, v10

    sub-double v16, v16, v18

    mul-double v18, v4, v12

    sub-double v16, v16, v18

    mul-double v18, v6, v14

    sub-double v21, v16, v18

    mul-double v16, v0, v10

    mul-double v18, v2, v8

    add-double v16, v16, v18

    mul-double v18, v4, v14

    add-double v16, v16, v18

    mul-double v18, v6, v12

    sub-double v23, v16, v18

    mul-double v16, v0, v12

    mul-double v18, v2, v14

    sub-double v16, v16, v18

    mul-double v18, v4, v8

    add-double v16, v16, v18

    mul-double v18, v6, v10

    add-double v25, v16, v18

    mul-double/2addr v0, v14

    mul-double/2addr v2, v12

    add-double/2addr v0, v2

    mul-double/2addr v4, v10

    sub-double/2addr v0, v4

    mul-double/2addr v6, v8

    add-double v27, v0, v6

    .line 9
    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v28}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v0
.end method

.method public static subtract(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 10

    .line 1
    new-instance v9, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    sub-double v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide p0

    sub-double/2addr v7, p0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v9
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->add(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public dotProduct(Lorg/apache/commons/math3/complex/Quaternion;)D
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->dotProduct(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)D

    move-result-wide p0

    return-wide p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/complex/Quaternion;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lorg/apache/commons/math3/complex/Quaternion;

    .line 3
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide p0

    cmpl-double p0, v3, p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public equals(Lorg/apache/commons/math3/complex/Quaternion;D)Z
    .locals 7

    .line 4
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v3

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v3

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v3

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getConjugate()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 10

    new-instance v9, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    neg-double v3, v3

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    neg-double v5, v5

    iget-wide v7, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    neg-double v7, v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public getInverse()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 20

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    mul-double v3, v1, v1

    iget-wide v5, v0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    mul-double v7, v5, v5

    add-double/2addr v3, v7

    iget-wide v7, v0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    mul-double v9, v7, v7

    add-double/2addr v3, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    mul-double v11, v9, v9

    add-double/2addr v3, v11

    sget-wide v11, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v0, v3, v11

    if-ltz v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/complex/Quaternion;

    div-double v12, v1, v3

    neg-double v1, v5

    div-double v14, v1, v3

    neg-double v1, v7

    div-double v16, v1, v3

    neg-double v1, v9

    div-double v18, v1, v3

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getNorm()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPositivePolarForm()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 10

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->normalize()Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object p0

    new-instance v9, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    neg-double v1, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v7

    neg-double v7, v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v9

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->normalize()Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public getQ0()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    return-wide v0
.end method

.method public getQ1()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    return-wide v0
.end method

.method public getQ2()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    return-wide v0
.end method

.method public getQ3()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    return-wide v0
.end method

.method public getScalarPart()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    return-wide v0
.end method

.method public getVectorPart()[D
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [D

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/4 v2, 0x1

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    aput-wide v5, v1, v2

    const/4 v2, 0x2

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    aput-wide v5, v1, v2

    const/4 v2, 0x3

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    aput-wide v5, v1, v2

    const/16 p0, 0x11

    :goto_0
    if-ge v4, v0, :cond_0

    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v2

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public isPureQuaternion(D)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double p0, v0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnitQuaternion(D)Z
    .locals 6

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getNorm()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p0

    return p0
.end method

.method public multiply(D)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 10

    .line 11
    new-instance v9, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    mul-double v1, p1, v0

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    mul-double/2addr v3, p1

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    mul-double/2addr v5, p1

    iget-wide v7, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    mul-double/2addr v7, p1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v9
.end method

.method public multiply(Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->multiply(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public normalize()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 12

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getNorm()D

    move-result-wide v0

    sget-wide v2, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    new-instance v2, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    div-double v4, v3, v0

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    div-double/2addr v6, v0

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    div-double/2addr v8, v0

    iget-wide v10, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    div-double/2addr v10, v0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v2

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public subtract(Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->subtract(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
