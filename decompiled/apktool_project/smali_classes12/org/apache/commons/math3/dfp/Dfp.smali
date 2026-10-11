.class public Lorg/apache/commons/math3/dfp/Dfp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/RealFieldElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "Lorg/apache/commons/math3/dfp/Dfp;",
        ">;"
    }
.end annotation


# static fields
.field public static final ERR_SCALE:I = 0x7ff8

.field public static final FINITE:B = 0x0t

.field public static final INFINITE:B = 0x1t

.field public static final MAX_EXP:I = 0x8000

.field public static final MIN_EXP:I = -0x7fff

.field public static final QNAN:B = 0x3t

.field public static final RADIX:I = 0x2710

.field public static final SNAN:B = 0x2t

.field public static final f:Ljava/lang/String; = "NaN"

.field public static final g:Ljava/lang/String; = "Infinity"

.field public static final h:Ljava/lang/String; = "-Infinity"

.field public static final i:Ljava/lang/String; = "add"

.field public static final j:Ljava/lang/String; = "multiply"

.field public static final k:Ljava/lang/String; = "divide"

.field public static final l:Ljava/lang/String; = "sqrt"

.field public static final m:Ljava/lang/String; = "align"

.field public static final n:Ljava/lang/String; = "trunc"

.field public static final o:Ljava/lang/String; = "nextAfter"

.field public static final p:Ljava/lang/String; = "lessThan"

.field public static final q:Ljava/lang/String; = "greaterThan"

.field public static final r:Ljava/lang/String; = "newInstance"


# instance fields
.field public final e:Lorg/apache/commons/math3/dfp/DfpField;

.field protected exp:I

.field protected mant:[I

.field protected nans:B

.field protected sign:B


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-object v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 47
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 48
    iget v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 49
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 50
    iget-object p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v0, 0x1

    .line 3
    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 5
    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 6
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;B)V
    .locals 2

    int-to-long v0, p2

    .line 7
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    .line 101
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 102
    iput-byte p2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 104
    iput-byte p3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;D)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v2, 0x1

    .line 25
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v3, 0x0

    .line 26
    iput v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 27
    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 28
    iput-object v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    .line 29
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide v6, 0xfffffffffffffL

    and-long v8, v4, v6

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v10, v4

    const/16 v12, 0x34

    shr-long/2addr v10, v12

    long-to-int v10, v10

    add-int/lit16 v10, v10, -0x3ff

    const/16 v11, -0x3ff

    const-wide/high16 v12, -0x8000000000000000L

    const-wide/high16 v14, 0x10000000000000L

    const-wide/16 v16, 0x0

    const/4 v3, -0x1

    const-wide/16 v18, 0x0

    if-ne v10, v11, :cond_3

    cmpl-double v11, p2, v16

    if-nez v11, :cond_1

    and-long v1, v4, v12

    cmp-long v1, v1, v18

    if-eqz v1, :cond_0

    .line 30
    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v10, v10, 0x1

    :goto_0
    and-long v20, v8, v14

    cmp-long v11, v20, v18

    if-nez v11, :cond_2

    add-int/lit8 v10, v10, -0x1

    shl-long/2addr v8, v2

    goto :goto_0

    :cond_2
    and-long/2addr v8, v6

    :cond_3
    const/16 v6, 0x400

    if-ne v10, v6, :cond_6

    cmpl-double v1, p2, p2

    if-eqz v1, :cond_4

    .line 31
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v1, 0x3

    .line 32
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_1

    :cond_4
    cmpg-double v1, p2, v16

    if-gez v1, :cond_5

    .line 33
    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 34
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_1

    .line 35
    :cond_5
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 36
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    :goto_1
    return-void

    .line 37
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, v1, v8, v9}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    .line 38
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, v1, v14, v15}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 39
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/DfpField;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1, v10}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    and-long v2, v4, v12

    cmp-long v2, v2, v18

    if-eqz v2, :cond_7

    .line 40
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 41
    :cond_7
    iget-object v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 43
    iget v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 44
    iget-byte v1, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;I)V
    .locals 2

    int-to-long v0, p2

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;J)V
    .locals 10

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v0, 0x0

    .line 11
    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 12
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long p1, p2, v1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_1

    const/4 v4, -0x1

    .line 13
    iput-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-long p2, p2

    goto :goto_1

    .line 14
    :cond_1
    iput-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 15
    :goto_1
    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    :goto_2
    cmp-long v4, p2, v2

    if-eqz v4, :cond_2

    .line 16
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    iget v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v5, v6

    array-length v7, v4

    sub-int/2addr v7, v1

    sub-int/2addr v7, v6

    invoke-static {v4, v5, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    sub-int/2addr v5, v1

    const-wide/16 v6, 0x2710

    rem-long v8, p2, v6

    long-to-int v8, v8

    aput v8, v4, v5

    .line 18
    div-long/2addr p2, v6

    .line 19
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    .line 20
    :goto_3
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length p2, p1

    sub-int/2addr p2, v1

    if-ge v0, p2, :cond_4

    .line 21
    aget p2, p1, v0

    if-eqz p2, :cond_3

    add-int/2addr p2, v1

    .line 22
    aput p2, p1, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v2, 0x1

    .line 53
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v3, 0x0

    .line 54
    iput v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 55
    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move-object/from16 v4, p1

    .line 56
    iput-object v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    .line 57
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getRadixDigits()I

    move-result v4

    const/4 v5, 0x4

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    new-array v6, v4, [C

    const-string v7, "Infinity"

    .line 58
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 59
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 60
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void

    :cond_0
    const-string v7, "-Infinity"

    .line 61
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_1

    .line 62
    iput-byte v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 63
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void

    :cond_1
    const-string v7, "NaN"

    .line 64
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x3

    if-eqz v7, :cond_2

    .line 65
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 66
    iput-byte v9, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return-void

    :cond_2
    const-string v7, "e"

    .line 67
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_3

    const-string v7, "E"

    .line 68
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    :cond_3
    const/16 v10, 0x39

    const/16 v11, 0x30

    if-eq v7, v8, :cond_8

    .line 69
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/2addr v7, v2

    .line 70
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move v7, v3

    move v13, v7

    move v14, v13

    .line 71
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v7, v15, :cond_6

    .line 72
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v5, 0x2d

    if-ne v15, v5, :cond_4

    move v13, v2

    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v11, :cond_5

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v10, :cond_5

    mul-int/lit8 v14, v14, 0xa

    .line 74
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v14, v5

    sub-int/2addr v14, v11

    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x4

    goto :goto_0

    :cond_6
    if-eqz v13, :cond_7

    neg-int v14, v14

    :cond_7
    move-object v1, v12

    goto :goto_2

    :cond_8
    move v14, v3

    :goto_2
    const-string v5, "-"

    .line 75
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_9

    .line 76
    iput-byte v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    :cond_9
    move v5, v3

    move v7, v5

    move v12, v7

    .line 77
    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x31

    const/16 v8, 0x2e

    if-lt v13, v15, :cond_a

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-gt v13, v10, :cond_a

    goto :goto_4

    :cond_a
    if-eqz v7, :cond_b

    .line 78
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_b

    add-int/lit8 v12, v12, -0x1

    .line 79
    :cond_b
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v8, :cond_c

    move v7, v2

    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v5, v13, :cond_1c

    .line 81
    :goto_4
    aput-char v11, v6, v3

    .line 82
    aput-char v11, v6, v2

    const/4 v13, 0x2

    .line 83
    aput-char v11, v6, v13

    .line 84
    aput-char v11, v6, v9

    move v9, v12

    const/4 v13, 0x4

    move v12, v3

    .line 85
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v5, v15, :cond_d

    const/4 v3, 0x4

    goto :goto_6

    .line 86
    :cond_d
    iget-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v15

    const/4 v3, 0x4

    mul-int/2addr v15, v3

    add-int/2addr v15, v3

    add-int/2addr v15, v2

    if-ne v13, v15, :cond_18

    :goto_6
    if-eqz v7, :cond_f

    if-eq v13, v3, :cond_f

    const/4 v15, -0x1

    :goto_7
    add-int/2addr v13, v15

    if-ne v13, v3, :cond_e

    goto :goto_8

    .line 87
    :cond_e
    aget-char v1, v6, v13

    if-ne v1, v11, :cond_f

    add-int/lit8 v12, v12, -0x1

    const/4 v3, 0x4

    goto :goto_7

    :cond_f
    :goto_8
    if-eqz v7, :cond_10

    if-nez v12, :cond_10

    const/4 v9, 0x0

    :cond_10
    const/4 v1, 0x4

    if-nez v7, :cond_11

    add-int/lit8 v9, v13, -0x4

    :cond_11
    sub-int/2addr v12, v2

    add-int/2addr v12, v1

    :goto_9
    if-le v12, v1, :cond_13

    .line 88
    aget-char v1, v6, v12

    if-eq v1, v11, :cond_12

    goto :goto_a

    :cond_12
    add-int/lit8 v12, v12, -0x1

    const/4 v1, 0x4

    goto :goto_9

    :cond_13
    :goto_a
    rsub-int v1, v9, 0x190

    .line 89
    rem-int/lit8 v3, v14, 0x4

    sub-int/2addr v1, v3

    const/4 v3, 0x4

    rem-int/2addr v1, v3

    rsub-int/lit8 v5, v1, 0x4

    add-int/2addr v9, v1

    :cond_14
    sub-int v1, v12, v5

    .line 90
    iget-object v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v7

    mul-int/2addr v8, v3

    if-ge v1, v8, :cond_15

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_14

    add-int/lit8 v12, v12, 0x1

    .line 91
    aput-char v11, v6, v12

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x4

    goto :goto_b

    .line 92
    :cond_15
    array-length v1, v7

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_16

    .line 93
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget-char v3, v6, v5

    sub-int/2addr v3, v11

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v7, v5, 0x1

    aget-char v7, v6, v7

    sub-int/2addr v7, v11

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v3, v7

    add-int/lit8 v7, v5, 0x2

    aget-char v7, v6, v7

    sub-int/2addr v7, v11

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v3, v7

    add-int/lit8 v7, v5, 0x3

    aget-char v7, v6, v7

    sub-int/2addr v7, v11

    add-int/2addr v3, v7

    aput v3, v2, v1

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_16
    add-int/2addr v9, v14

    const/4 v3, 0x4

    .line 94
    div-int/2addr v9, v3

    iput v9, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-ge v5, v4, :cond_17

    .line 95
    aget-char v1, v6, v5

    sub-int/2addr v1, v11

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    :cond_17
    return-void

    :cond_18
    const/4 v15, -0x1

    .line 96
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_19

    add-int/lit8 v5, v5, 0x1

    move v9, v12

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_5

    .line 97
    :cond_19
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v11, :cond_1b

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-le v2, v10, :cond_1a

    goto :goto_d

    .line 98
    :cond_1a
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v6, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_1b
    :goto_d
    add-int/lit8 v5, v5, 0x1

    :goto_e
    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_1c
    const/4 v8, -0x1

    goto/16 :goto_3
.end method

.method public static a(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, v0, v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v1

    sub-int/2addr v4, v2

    aget v1, v1, v4

    if-nez v1, :cond_0

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_0

    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-eq v1, v4, :cond_2

    const/4 p0, -0x1

    if-ne v1, p0, :cond_1

    return p0

    :cond_1
    return v2

    :cond_2
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v2, :cond_3

    iget-byte v6, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v6, :cond_3

    return v1

    :cond_3
    if-nez v5, :cond_4

    iget-byte v6, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v6, v2, :cond_4

    neg-int p0, v4

    return p0

    :cond_4
    if-ne v5, v2, :cond_5

    iget-byte v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v4, v2, :cond_5

    return v3

    :cond_5
    iget-object v4, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    sub-int/2addr v5, v2

    aget v5, v4, v5

    if-eqz v5, :cond_7

    array-length v4, v4

    sub-int/2addr v4, v2

    aget v4, v0, v4

    if-eqz v4, :cond_7

    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-ge v4, v5, :cond_6

    neg-int p0, v1

    return p0

    :cond_6
    if-le v4, v5, :cond_7

    return v1

    :cond_7
    array-length v0, v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_a

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v1, v1, v0

    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_8

    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return p0

    :cond_8
    if-ge v1, v2, :cond_9

    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int p0, p0

    return p0

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_a
    return v3
.end method

.method public static copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object p0
.end method


# virtual methods
.method public bridge synthetic abs()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public abs()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    const/4 v0, 0x1

    .line 3
    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object p0
.end method

.method public bridge synthetic acos()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->acos()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public acos()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->acos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic acosh()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->acosh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public acosh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic add(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public add(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    iget-object v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v3

    const/4 v4, 0x3

    const-string v5, "add"

    const/4 v6, 0x1

    if-eq v2, v3, :cond_0

    .line 4
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 6
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 7
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v2, :cond_1

    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v2, :cond_7

    .line 9
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    .line 10
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 11
    :cond_3
    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v2, v6, :cond_4

    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v3, :cond_4

    return-object v0

    .line 12
    :cond_4
    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v3, v6, :cond_5

    if-nez v2, :cond_5

    return-object v1

    :cond_5
    if-ne v3, v6, :cond_6

    if-ne v2, v6, :cond_6

    .line 13
    iget-byte v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v8, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v7, v8, :cond_6

    return-object v1

    :cond_6
    if-ne v3, v6, :cond_7

    if-ne v2, v6, :cond_7

    .line 14
    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-eq v2, v3, :cond_7

    .line 15
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 17
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 18
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 19
    :cond_7
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 20
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 21
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 22
    iget-byte v7, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 23
    iget-byte v8, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 24
    iput-byte v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 25
    iput-byte v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 26
    invoke-static {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->a(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v9

    if-lez v9, :cond_8

    move v9, v7

    goto :goto_0

    :cond_8
    move v9, v8

    .line 27
    :goto_0
    iget-object v10, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v12, v11

    sub-int/2addr v12, v6

    aget v10, v10, v12

    if-nez v10, :cond_9

    .line 28
    iget v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v10, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 29
    :cond_9
    iget-object v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v11

    sub-int/2addr v11, v6

    aget v10, v10, v11

    if-nez v10, :cond_a

    .line 30
    iget v10, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 31
    :cond_a
    iget v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v11, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-ge v10, v11, :cond_b

    .line 32
    invoke-virtual {v2, v11}, Lorg/apache/commons/math3/dfp/Dfp;->align(I)I

    move-result v10

    const/4 v11, 0x0

    goto :goto_1

    .line 33
    :cond_b
    invoke-virtual {v3, v10}, Lorg/apache/commons/math3/dfp/Dfp;->align(I)I

    move-result v10

    move v11, v10

    const/4 v10, 0x0

    :goto_1
    if-eq v7, v8, :cond_d

    if-ne v7, v9, :cond_c

    .line 34
    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/dfp/Dfp;->complement(I)I

    move-result v11

    goto :goto_2

    .line 35
    :cond_c
    invoke-virtual {v2, v10}, Lorg/apache/commons/math3/dfp/Dfp;->complement(I)I

    move-result v10

    :cond_d
    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 36
    :goto_3
    iget-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v15

    if-ge v13, v15, :cond_e

    .line 37
    iget-object v15, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v15, v15, v13

    iget-object v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v6, v6, v13

    add-int/2addr v15, v6

    add-int/2addr v15, v14

    .line 38
    div-int/lit16 v14, v15, 0x2710

    .line 39
    iget-object v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    mul-int/lit16 v12, v14, 0x2710

    sub-int/2addr v15, v12

    aput v15, v6, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 40
    :cond_e
    iget v2, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 41
    iput-byte v9, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-eqz v14, :cond_f

    if-ne v7, v8, :cond_f

    .line 42
    iget-object v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 43
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 44
    iget-object v3, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    aput v14, v3, v6

    .line 45
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v2

    if-eqz v2, :cond_f

    .line 46
    invoke-virtual {v0, v2, v5, v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    :cond_f
    const/4 v3, 0x0

    .line 47
    :goto_4
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v2

    if-ge v3, v6, :cond_12

    .line 48
    iget-object v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v2

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    aget v6, v6, v9

    if-eqz v6, :cond_10

    goto :goto_5

    .line 49
    :cond_10
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    if-nez v3, :cond_11

    .line 50
    iget-object v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    add-int/2addr v10, v11

    const/4 v6, 0x0

    aput v10, v2, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 51
    :cond_12
    :goto_5
    iget-object v3, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    aget v2, v3, v2

    if-nez v2, :cond_13

    const/4 v2, 0x0

    .line 52
    iput v2, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-eq v7, v8, :cond_13

    .line 53
    iput-byte v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    :cond_13
    add-int/2addr v10, v11

    .line 54
    invoke-virtual {v4, v10}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v2

    if-eqz v2, :cond_14

    .line 55
    invoke-virtual {v0, v2, v5, v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    :cond_14
    return-object v4
.end method

.method public align(I)I
    .locals 8

    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    neg-int v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const-string v6, "align"

    const/16 v7, 0x10

    if-le v1, v4, :cond_2

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    iput p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0, v7, v6, p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v2

    :cond_2
    move p1, v2

    move v3, p1

    move v4, v3

    :goto_1
    if-ge p1, v1, :cond_5

    if-gez v0, :cond_4

    if-eqz v4, :cond_3

    move v3, v5

    :cond_3
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0, v7, v6, p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    :cond_6
    return v4
.end method

.method public bridge synthetic asin()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->asin()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public asin()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->asin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic asinh()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->asinh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public asinh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic atan()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public atan()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic atan2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->atan2(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public atan2(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 3
    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 6
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gtz v0, :cond_1

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_0

    :cond_1
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic atanh()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->atanh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public atanh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v2, 0x3

    const-string v3, "multiply"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v1, v4, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    iput-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v4, v3, v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_2
    if-ltz p1, :cond_8

    const/16 v1, 0x2710

    if-lt p1, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    move v5, v2

    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    if-ge v2, v7, :cond_4

    aget v6, v6, v2

    mul-int/2addr v6, p1

    add-int/2addr v6, v5

    div-int/lit16 v5, v6, 0x2710

    iget-object v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    mul-int/lit16 v8, v5, 0x2710

    sub-int/2addr v6, v8

    aput v6, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    iget-object p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget p1, p1, v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    sub-int/2addr v6, v4

    aput v5, v2, v6

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    aget v2, v2, v5

    if-nez v2, :cond_6

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    :cond_6
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1, v3, v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_7
    return-object v0

    :cond_8
    :goto_2
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    iput-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    invoke-virtual {p0, v4, v3, p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cbrt()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cbrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public cbrt()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->rootN(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic ceil()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->ceil()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public ceil()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_CEIL:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public classify()I
    .locals 0

    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return p0
.end method

.method public complement(I)I
    .locals 5

    rsub-int p1, p1, 0x2710

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v3, v2, v1

    rsub-int v3, v3, 0x2710

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    div-int/lit16 v1, p1, 0x2710

    mul-int/lit16 v2, v1, 0x2710

    sub-int/2addr p1, v2

    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v3, v2, v0

    add-int/2addr v3, v1

    div-int/lit16 v1, v3, 0x2710

    mul-int/lit16 v4, v1, 0x2710

    sub-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method

.method public bridge synthetic copySign(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->copySign(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copySign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->copySign(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public copySign(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 6
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const-wide/16 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    :cond_0
    if-gez v0, :cond_2

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    :cond_1
    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public copySign(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 3
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_0

    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v1, :cond_1

    :cond_0
    if-gez v0, :cond_2

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez p1, :cond_2

    :cond_1
    return-object p0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cos()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cos()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public cos()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->cos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cosh()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cosh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public cosh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public dfp2sci()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    new-array v2, v1, [C

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x14

    new-array v3, v3, [C

    array-length v0, v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x30

    if-ltz v0, :cond_0

    add-int/lit8 v8, v6, 0x1

    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v9, v9, v0

    div-int/lit16 v10, v9, 0x3e8

    add-int/2addr v10, v7

    int-to-char v10, v10

    aput-char v10, v2, v6

    add-int/lit8 v6, v8, 0x1

    div-int/lit8 v10, v9, 0x64

    rem-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v7

    int-to-char v10, v10

    aput-char v10, v2, v8

    add-int/lit8 v8, v6, 0x1

    div-int/lit8 v10, v9, 0xa

    rem-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v7

    int-to-char v10, v10

    aput-char v10, v2, v6

    add-int/lit8 v6, v8, 0x1

    rem-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v7

    int-to-char v7, v9

    aput-char v7, v2, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_1
    if-ge v0, v1, :cond_2

    aget-char v6, v2, v0

    if-eq v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/16 v8, 0x2d

    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    aput-char v8, v3, v5

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    const/16 v9, 0x65

    const/16 v10, 0x2e

    if-eq v0, v1, :cond_9

    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v0, 0x1

    aget-char v13, v2, v0

    aput-char v13, v3, v6

    add-int/lit8 v6, v11, 0x1

    aput-char v10, v3, v11

    :goto_4
    if-ge v12, v1, :cond_4

    add-int/lit8 v10, v6, 0x1

    add-int/lit8 v11, v12, 0x1

    aget-char v12, v2, v12

    aput-char v12, v3, v6

    move v6, v10

    move v12, v11

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v6, 0x1

    aput-char v9, v3, v6

    iget p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 p0, p0, 0x4

    sub-int/2addr p0, v0

    sub-int/2addr p0, v4

    if-gez p0, :cond_5

    neg-int v0, p0

    goto :goto_5

    :cond_5
    move v0, p0

    :goto_5
    const v2, 0x3b9aca00

    :goto_6
    if-le v2, v0, :cond_6

    div-int/lit8 v2, v2, 0xa

    goto :goto_6

    :cond_6
    if-gez p0, :cond_7

    add-int/lit8 p0, v1, 0x1

    aput-char v8, v3, v1

    :goto_7
    move v1, p0

    :cond_7
    if-lez v2, :cond_8

    add-int/lit8 p0, v1, 0x1

    div-int v4, v0, v2

    add-int/2addr v4, v7

    int-to-char v4, v4

    aput-char v4, v3, v1

    rem-int/2addr v0, v2

    div-int/lit8 v2, v2, 0xa

    goto :goto_7

    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_9
    add-int/lit8 p0, v6, 0x1

    aput-char v7, v3, v6

    add-int/lit8 v0, p0, 0x1

    aput-char v10, v3, p0

    add-int/lit8 p0, v0, 0x1

    aput-char v7, v3, v0

    add-int/lit8 v0, p0, 0x1

    aput-char v9, v3, p0

    aput-char v7, v3, v0

    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x5

    invoke-direct {p0, v3, v5, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public dfp2string()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x14

    new-array v0, v0, [C

    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const/16 v2, 0x20

    const/4 v3, 0x0

    aput-char v2, v0, v3

    const/16 v2, 0x2e

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-gtz v1, :cond_0

    aput-char v4, v0, v5

    const/4 v3, 0x2

    aput-char v2, v0, v3

    const/4 v3, 0x3

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v3

    move v3, v5

    :goto_0
    if-gez v1, :cond_1

    add-int/lit8 v7, v3, 0x1

    aput-char v4, v0, v3

    add-int/lit8 v3, v7, 0x1

    aput-char v4, v0, v7

    add-int/lit8 v7, v3, 0x1

    aput-char v4, v0, v3

    add-int/lit8 v3, v7, 0x1

    aput-char v4, v0, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v5

    :goto_1
    if-ltz v7, :cond_3

    add-int/lit8 v8, v3, 0x1

    iget-object v9, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v9, v9, v7

    div-int/lit16 v10, v9, 0x3e8

    add-int/2addr v10, v4

    int-to-char v10, v10

    aput-char v10, v0, v3

    add-int/lit8 v3, v8, 0x1

    div-int/lit8 v10, v9, 0x64

    rem-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v4

    int-to-char v10, v10

    aput-char v10, v0, v8

    add-int/lit8 v8, v3, 0x1

    div-int/lit8 v10, v9, 0xa

    rem-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v4

    int-to-char v10, v10

    aput-char v10, v0, v3

    add-int/lit8 v3, v8, 0x1

    rem-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v4

    int-to-char v9, v9

    aput-char v9, v0, v8

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2

    add-int/lit8 v6, v3, 0x1

    aput-char v2, v0, v3

    move v3, v6

    move v6, v5

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-lez v1, :cond_4

    add-int/lit8 v7, v3, 0x1

    aput-char v4, v0, v3

    add-int/lit8 v3, v7, 0x1

    aput-char v4, v0, v7

    add-int/lit8 v7, v3, 0x1

    aput-char v4, v0, v3

    add-int/lit8 v3, v7, 0x1

    aput-char v4, v0, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    add-int/lit8 v1, v3, 0x1

    aput-char v2, v0, v3

    move v3, v1

    :cond_5
    :goto_3
    aget-char v1, v0, v5

    if-ne v1, v4, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    if-ne v1, v2, :cond_7

    add-int/lit8 v5, v5, -0x1

    :cond_7
    :goto_4
    add-int/lit8 v1, v3, -0x1

    aget-char v1, v0, v1

    if-ne v1, v4, :cond_8

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_8
    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez p0, :cond_9

    add-int/lit8 v5, v5, -0x1

    const/16 p0, 0x2d

    aput-char p0, v0, v5

    :cond_9
    new-instance p0, Ljava/lang/String;

    sub-int/2addr v3, v5

    invoke-direct {p0, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public bridge synthetic divide(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public divide(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public divide(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 10

    .line 76
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 78
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v0, v1, :cond_1

    .line 79
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "divide"

    if-nez p1, :cond_2

    .line 80
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 82
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 83
    iput-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_2
    if-ltz p1, :cond_7

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_3

    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 86
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ltz v4, :cond_4

    mul-int/lit16 v6, v6, 0x2710

    .line 87
    iget-object v7, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v7, v4

    add-int/2addr v6, v8

    .line 88
    div-int v8, v6, p1

    mul-int v9, v8, p1

    sub-int/2addr v6, v9

    .line 89
    aput v8, v7, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 90
    :cond_4
    iget-object v4, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v1

    aget v1, v4, v7

    if-nez v1, :cond_5

    .line 91
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    mul-int/lit16 v6, v6, 0x2710

    .line 92
    div-int v1, v6, p1

    mul-int v4, v1, p1

    sub-int/2addr v6, v4

    .line 93
    iget-object v4, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aput v1, v4, v5

    :cond_5
    mul-int/2addr v6, v2

    .line 94
    div-int/2addr v6, p1

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result p1

    if-eqz p1, :cond_6

    .line 95
    invoke-virtual {p0, p1, v0, v3, v3}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    :cond_6
    return-object v3

    .line 96
    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    const/4 v2, 0x3

    .line 98
    iput-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 99
    invoke-virtual {p0, v1, v0, p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    iget-object v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v3

    const/4 v4, 0x3

    const-string v5, "divide"

    const/4 v6, 0x1

    if-eq v2, v3, :cond_0

    .line 4
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 6
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 7
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 9
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v3, :cond_1

    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v3, :cond_6

    .line 10
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    .line 11
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    .line 12
    :cond_3
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v3, v6, :cond_4

    iget-byte v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v7, :cond_4

    .line 13
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 14
    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v1, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v2

    .line 15
    :cond_4
    iget-byte v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v7, v6, :cond_5

    if-nez v3, :cond_5

    .line 16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 17
    iget-byte v0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v1, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v2

    :cond_5
    if-ne v7, v6, :cond_6

    if-ne v3, v6, :cond_6

    .line 18
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 20
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 21
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 22
    :cond_6
    iget-object v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v4

    sub-int/2addr v7, v6

    aget v3, v3, v7

    const/4 v7, 0x2

    if-nez v3, :cond_7

    .line 23
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 25
    iget-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 26
    iput-byte v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 27
    invoke-virtual {v0, v7, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 28
    :cond_7
    array-length v3, v4

    add-int/2addr v3, v6

    new-array v3, v3, [I

    .line 29
    array-length v8, v4

    add-int/2addr v8, v7

    new-array v8, v8, [I

    .line 30
    array-length v9, v4

    add-int/2addr v9, v6

    new-array v9, v9, [I

    .line 31
    array-length v10, v4

    const/4 v11, 0x0

    aput v11, v3, v10

    .line 32
    array-length v10, v4

    aput v11, v8, v10

    .line 33
    array-length v10, v4

    add-int/2addr v10, v6

    aput v11, v8, v10

    .line 34
    array-length v4, v4

    aput v11, v9, v4

    move v4, v11

    .line 35
    :goto_0
    iget-object v10, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v12, v10

    if-ge v4, v12, :cond_8

    .line 36
    aget v10, v10, v4

    aput v10, v3, v4

    .line 37
    aput v11, v8, v4

    .line 38
    aput v11, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    :cond_8
    array-length v4, v10

    add-int/2addr v4, v6

    move v10, v11

    move v12, v10

    :goto_1
    if-ltz v4, :cond_19

    .line 40
    iget-object v13, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v14, v13

    aget v14, v3, v14

    mul-int/lit16 v14, v14, 0x2710

    array-length v15, v13

    sub-int/2addr v15, v6

    aget v15, v3, v15

    add-int/2addr v14, v15

    .line 41
    iget-object v15, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v13

    sub-int/2addr v11, v6

    aget v11, v15, v11

    add-int/2addr v11, v6

    div-int v11, v14, v11

    add-int/2addr v14, v6

    .line 42
    array-length v13, v13

    sub-int/2addr v13, v6

    aget v13, v15, v13

    div-int/2addr v14, v13

    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_13

    add-int v12, v11, v14

    .line 43
    div-int/2addr v12, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 44
    :goto_3
    iget-object v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move/from16 v17, v11

    array-length v11, v7

    add-int/2addr v11, v6

    if-ge v15, v11, :cond_a

    .line 45
    array-length v7, v7

    if-ge v15, v7, :cond_9

    iget-object v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v7, v7, v15

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    mul-int/2addr v7, v12

    add-int v7, v7, v16

    .line 46
    div-int/lit16 v11, v7, 0x2710

    mul-int/lit16 v6, v11, 0x2710

    sub-int/2addr v7, v6

    .line 47
    aput v7, v9, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v11

    move/from16 v11, v17

    const/4 v6, 0x1

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 48
    :goto_5
    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v11

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    if-ge v6, v15, :cond_b

    .line 49
    aget v11, v9, v6

    rsub-int v11, v11, 0x270f

    aget v15, v3, v6

    add-int/2addr v11, v15

    add-int/2addr v11, v7

    .line 50
    div-int/lit16 v7, v11, 0x2710

    mul-int/lit16 v15, v7, 0x2710

    sub-int/2addr v11, v15

    .line 51
    aput v11, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_b
    if-nez v7, :cond_c

    add-int/lit8 v14, v12, -0x1

    move/from16 v11, v17

    const/4 v6, 0x1

    const/4 v7, 0x2

    goto :goto_2

    .line 52
    :cond_c
    array-length v6, v11

    aget v6, v9, v6

    mul-int/lit16 v6, v6, 0x2710

    array-length v7, v11

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    aget v7, v9, v7

    add-int/2addr v6, v7

    .line 53
    iget-object v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move/from16 v16, v13

    array-length v13, v11

    sub-int/2addr v13, v15

    aget v7, v7, v13

    add-int/2addr v7, v15

    div-int/2addr v6, v7

    const/4 v7, 0x2

    if-lt v6, v7, :cond_d

    add-int v11, v12, v6

    move v6, v15

    move/from16 v13, v16

    goto :goto_2

    .line 54
    :cond_d
    array-length v6, v11

    sub-int/2addr v6, v15

    const/4 v11, 0x0

    :goto_6
    if-ltz v6, :cond_10

    .line 55
    iget-object v13, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v13, v13, v6

    aget v15, v9, v6

    if-le v13, v15, :cond_e

    const/4 v11, 0x1

    :cond_e
    if-ge v13, v15, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 56
    :cond_10
    :goto_7
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    aget v6, v9, v6

    if-eqz v6, :cond_11

    const/4 v13, 0x0

    goto :goto_8

    :cond_11
    move v13, v11

    :goto_8
    if-nez v13, :cond_12

    add-int/lit8 v6, v12, 0x1

    move v11, v6

    goto :goto_9

    :cond_12
    move/from16 v11, v17

    :goto_9
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 57
    :cond_13
    aput v12, v8, v4

    if-nez v12, :cond_14

    if-eqz v10, :cond_15

    :cond_14
    add-int/lit8 v10, v10, 0x1

    .line 58
    :cond_15
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v6}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v6

    sget-object v11, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    if-ne v6, v11, :cond_16

    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    if-ne v10, v6, :cond_16

    goto :goto_b

    .line 59
    :cond_16
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    if-le v10, v6, :cond_17

    goto :goto_b

    :cond_17
    const/4 v6, 0x0

    .line 60
    aput v6, v3, v6

    const/4 v6, 0x0

    .line 61
    :goto_a
    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v11

    if-ge v6, v11, :cond_18

    add-int/lit8 v11, v6, 0x1

    .line 62
    aget v6, v9, v6

    aput v6, v3, v11

    move v6, v11

    goto :goto_a

    :cond_18
    add-int/lit8 v4, v4, -0x1

    const/4 v6, 0x1

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 63
    :cond_19
    :goto_b
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v3

    .line 64
    array-length v3, v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    :goto_c
    if-ltz v3, :cond_1b

    .line 65
    aget v6, v8, v3

    if-eqz v6, :cond_1a

    move v4, v3

    goto :goto_d

    :cond_1a
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_1b
    :goto_d
    const/4 v6, 0x0

    .line 66
    :goto_e
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v3

    if-ge v6, v7, :cond_1c

    .line 67
    iget-object v7, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v6

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    sub-int v9, v4, v6

    aget v9, v8, v9

    aput v9, v7, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 68
    :cond_1c
    iget v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v4

    array-length v7, v3

    sub-int/2addr v6, v7

    iput v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 69
    iget-byte v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v6, v7, :cond_1d

    const/4 v6, 0x1

    goto :goto_f

    :cond_1d
    const/4 v6, -0x1

    :goto_f
    int-to-byte v6, v6

    iput-byte v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 70
    iget-object v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v3

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    aget v6, v6, v7

    if-nez v6, :cond_1e

    const/4 v6, 0x0

    .line 71
    iput v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_10

    :cond_1e
    const/4 v6, 0x0

    .line 72
    :goto_10
    array-length v7, v3

    sub-int/2addr v7, v9

    if-le v4, v7, :cond_1f

    .line 73
    array-length v3, v3

    sub-int/2addr v4, v3

    aget v3, v8, v4

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v3

    goto :goto_11

    .line 74
    :cond_1f
    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v3

    :goto_11
    if-eqz v3, :cond_20

    .line 75
    invoke-virtual {v0, v3, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    :cond_20
    return-object v2
.end method

.method public dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    move-object v7, p4

    goto/16 :goto_5

    :cond_0
    iget v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/2addr v0, v1

    const/16 v1, -0x7fff

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    iget-byte v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :goto_0
    iget v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit16 v1, v1, 0x7ff8

    iput v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_1

    :cond_2
    iget v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit16 v0, v0, -0x7ff8

    iput v0, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    iget-byte v2, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    :goto_1
    move-object v7, v0

    goto/16 :goto_5

    :cond_3
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v3

    sub-int/2addr v4, v1

    aget v3, v3, v4

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v5, p3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_2

    :cond_4
    move-object v3, p4

    :goto_2
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    sub-int/2addr v5, v1

    aget v4, v4, v5

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    iput-byte v0, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    :cond_5
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eq v4, v1, :cond_6

    if-ne v4, v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    iput-byte v0, v3, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    :cond_7
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eq v4, v1, :cond_9

    if-ne v4, v2, :cond_8

    goto :goto_3

    :cond_8
    move-object v7, v3

    goto :goto_5

    :cond_9
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    iget-byte v2, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v0, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    :goto_4
    move-object v7, v1

    :goto_5
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/dfp/Dfp;->trap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->a(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic exp()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->exp()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public exp()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic expm1()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->expm1()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public expm1()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic floor()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->floor()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public floor()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_FLOOR:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    return-object p0
.end method

.method public getField()Lorg/apache/commons/math3/dfp/DfpField;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    return-object p0
.end method

.method public getOne()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public getRadixDigits()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result p0

    return p0
.end method

.method public getReal()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTwo()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpField;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public getZero()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "greaterThan"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x3

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v3

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->a(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result p0

    if-lez p0, :cond_2

    move v3, v4

    :cond_2
    return v3

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v3
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    shl-int/lit8 v0, v0, 0x8

    :goto_0
    add-int/lit8 v0, v0, 0x11

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public bridge synthetic hypot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->hypot(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public hypot(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public intLog10()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    iget p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    iget p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, -0x2

    return p0

    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    iget p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, -0x3

    return p0

    :cond_2
    iget p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, -0x4

    return p0
.end method

.method public intValue()I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/high16 v1, -0x80000000

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    iget v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_2

    mul-int/lit16 v2, v2, 0x2710

    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-byte p0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    neg-int v2, v2

    :cond_3
    return v2
.end method

.method public isInfinite()Z
    .locals 1

    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNaN()Z
    .locals 1

    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method public isZero()Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "lessThan"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x3

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v3

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->a(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result p0

    if-gez p0, :cond_2

    move v3, v4

    :cond_2
    return v3

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v3
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p9, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p9}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p9, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p12, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p4, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p4, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p5, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p4, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p5, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p6, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p7, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p8, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination([D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 7
    check-cast p2, [Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination([D[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic linearCombination([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 8
    check-cast p1, [Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, [Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 20
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 22
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p9, p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 24
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p9, p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p12, p10, p11}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 19
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 21
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p5, p6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 23
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p5, p6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public linearCombination([D[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 14
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    const/4 v0, 0x0

    .line 16
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 17
    aget-object v1, p2, v0

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 18
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public linearCombination([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 9
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    const/4 v0, 0x0

    .line 11
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 12
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 13
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public bridge synthetic log()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public log()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public log10()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->intLog10()I

    move-result p0

    return p0
.end method

.method public log10K()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public bridge synthetic log1p()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log1p()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public log1p()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic multiply(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public multiply(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public multiply(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->b(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 11

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "multiply"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 7
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 8
    invoke-virtual {p0, v4, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 10
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_1

    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v1, :cond_9

    .line 11
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    .line 13
    :cond_3
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_4

    iget-byte v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v5, :cond_4

    iget-object v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    sub-int/2addr v6, v4

    aget v5, v5, v6

    if-eqz v5, :cond_4

    .line 14
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 15
    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0

    .line 16
    :cond_4
    iget-byte v5, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v4, :cond_5

    if-nez v1, :cond_5

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    sub-int/2addr v7, v4

    aget v6, v6, v7

    if-eqz v6, :cond_5

    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 18
    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0

    :cond_5
    if-ne v5, v4, :cond_6

    if-ne v1, v4, :cond_6

    .line 19
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 20
    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte p1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object v0

    :cond_6
    if-ne v5, v4, :cond_7

    if-nez v1, :cond_7

    .line 21
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    sub-int/2addr v7, v4

    aget v6, v6, v7

    if-eqz v6, :cond_8

    :cond_7
    if-ne v1, v4, :cond_9

    if-nez v5, :cond_9

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    aget v1, v1, v5

    if-nez v1, :cond_9

    .line 22
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 23
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 24
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 25
    invoke-virtual {p0, v4, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 26
    :cond_9
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v5, v2

    .line 27
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v6

    if-ge v5, v7, :cond_b

    move v6, v2

    move v7, v6

    .line 28
    :goto_1
    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v8

    if-ge v6, v9, :cond_a

    .line 29
    aget v8, v8, v5

    iget-object v9, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v9, v9, v6

    mul-int/2addr v8, v9

    add-int v9, v5, v6

    .line 30
    aget v10, v1, v9

    add-int/2addr v10, v7

    add-int/2addr v8, v10

    .line 31
    div-int/lit16 v7, v8, 0x2710

    mul-int/lit16 v10, v7, 0x2710

    sub-int/2addr v8, v10

    .line 32
    aput v8, v1, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 33
    :cond_a
    array-length v6, v8

    add-int/2addr v6, v5

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 34
    :cond_b
    array-length v5, v6

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v4

    .line 35
    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v4

    :goto_2
    if-ltz v6, :cond_d

    .line 36
    aget v7, v1, v6

    if-eqz v7, :cond_c

    move v5, v6

    goto :goto_3

    :cond_c
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_d
    :goto_3
    move v6, v2

    .line 37
    :goto_4
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v7

    if-ge v6, v8, :cond_e

    .line 38
    iget-object v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v6

    sub-int/2addr v7, v4

    sub-int v9, v5, v6

    aget v9, v1, v9

    aput v9, v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 39
    :cond_e
    iget v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v8, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v6, v8

    add-int/2addr v6, v5

    array-length v8, v7

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    add-int/2addr v6, v4

    iput v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 40
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v8, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v6, v8, :cond_f

    move v6, v4

    goto :goto_5

    :cond_f
    const/4 v6, -0x1

    :goto_5
    int-to-byte v6, v6

    iput-byte v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 41
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v7

    sub-int/2addr v8, v4

    aget v6, v6, v8

    if-nez v6, :cond_10

    .line 42
    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 43
    :cond_10
    array-length v6, v7

    sub-int/2addr v6, v4

    if-le v5, v6, :cond_11

    .line 44
    array-length v2, v7

    sub-int/2addr v5, v2

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v1

    goto :goto_6

    .line 45
    :cond_11
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v1

    :goto_6
    if-eqz v1, :cond_12

    .line 46
    invoke-virtual {p0, v1, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public negate()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 3
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return-object p0
.end method

.method public negativeOrNull()Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public newInstance()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-object v0
.end method

.method public newInstance(B)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-object v0
.end method

.method public newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 13
    iget-object p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/DfpField;->newDfp(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    return-object v0
.end method

.method public newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-object v0
.end method

.method public newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 12
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    iget-object p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    return-object v0
.end method

.method public newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3

    .line 6
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v2, 0x3

    .line 9
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const-string v2, "newInstance"

    .line 10
    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    return-object p0
.end method

.method public nextAfter(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "nextAfter"

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x3

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    invoke-virtual {p0, v3, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->a(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v1, v4

    add-int/2addr v1, v3

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    rsub-int v1, v1, -0x7fff

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v1, v4

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v1, v4

    add-int/2addr v1, v3

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    rsub-int v1, v1, -0x7fff

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    :cond_6
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    const/16 v4, 0x10

    if-ne v1, v3, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v1

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public positiveOrNull()Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public bridge synthetic pow(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->pow(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic pow(I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->pow(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic pow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 3
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->pow(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public pow(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public pow(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public pow(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public power10(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    div-int/lit8 v1, p1, 0x4

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    :goto_0
    rem-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    rem-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public power10K(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    return-object p0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->reciprocal()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public reciprocal()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remainder(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remainder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public remainder(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 4
    iget-object v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 5
    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte p0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    :cond_0
    return-object p1
.end method

.method public bridge synthetic rint()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public rint()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic rootN(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->rootN(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public rootN(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public round(I)I
    .locals 7

    .line 1
    sget-object v0, Lorg/apache/commons/math3/dfp/Dfp$a;->a:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x1388

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    :pswitch_0
    if-gt p1, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v0, v0, v2

    and-int/2addr v0, v3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move v0, v3

    goto :goto_1

    :pswitch_1
    if-le p1, v1, :cond_1

    goto :goto_0

    :pswitch_2
    if-lt p1, v1, :cond_1

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :pswitch_4
    move v0, v2

    goto :goto_1

    :pswitch_5
    if-gt p1, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 4
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v0, v0, v2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 5
    :pswitch_6
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    move v0, v2

    move v1, v3

    .line 6
    :goto_2
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 7
    aget v5, v4, v0

    add-int/2addr v5, v1

    .line 8
    div-int/lit16 v1, v5, 0x2710

    mul-int/lit16 v6, v1, 0x2710

    sub-int/2addr v5, v6

    .line 9
    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 11
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v0

    sub-int/2addr v4, v3

    aput v1, v0, v4

    .line 12
    :cond_3
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const/16 v1, -0x7fff

    if-ge v0, v1, :cond_4

    .line 13
    iget-object p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return p1

    :cond_4
    const v1, 0x8000

    if-le v0, v1, :cond_5

    .line 14
    iget-object p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return p1

    :cond_5
    if-eqz p1, :cond_6

    .line 15
    iget-object p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    return p1

    :cond_6
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public round()J
    .locals 2

    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic scalb(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->scalb(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public scalb(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public shiftLeft()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    return-void
.end method

.method public shiftRight()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget v4, v2, v3

    aput v4, v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    aput v0, v2, v1

    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    return-void
.end method

.method public bridge synthetic signum()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->signum()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public signum()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public bridge synthetic sin()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sin()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public sin()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->sin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic sinh()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sinh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public sinh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic sqrt()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public sqrt()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8

    .line 2
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v2

    sub-int/2addr v3, v1

    aget v2, v2, v3

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    const-string v3, "sqrt"

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_1

    .line 4
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v6, v1, :cond_1

    .line 5
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v0, v4, :cond_2

    .line 6
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne v0, v5, :cond_3

    .line 7
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 8
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v1, v3, v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    .line 11
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 12
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 13
    iput-byte v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 14
    invoke-virtual {p0, v1, v3, v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 16
    iget v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-lt v2, v6, :cond_5

    if-le v2, v1, :cond_6

    .line 17
    :cond_5
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    div-int/2addr v2, v5

    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 18
    :cond_6
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v3

    sub-int/2addr v7, v1

    aget v7, v2, v7

    div-int/lit16 v7, v7, 0x7d0

    if-eqz v7, :cond_9

    if-eq v7, v5, :cond_8

    if-eq v7, v4, :cond_7

    .line 19
    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0xbb8

    aput v4, v2, v3

    goto :goto_0

    .line 20
    :cond_7
    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0x898

    aput v4, v2, v3

    goto :goto_0

    .line 21
    :cond_8
    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0x5dc

    aput v4, v2, v3

    goto :goto_0

    .line 22
    :cond_9
    array-length v4, v3

    sub-int/2addr v4, v1

    array-length v3, v3

    sub-int/2addr v3, v1

    aget v3, v2, v3

    div-int/2addr v3, v5

    add-int/2addr v3, v1

    aput v3, v2, v4

    .line 23
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 24
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    .line 26
    :goto_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 27
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 28
    iput-byte v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 29
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 30
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 32
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_2

    .line 33
    :cond_a
    iget-object v2, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    aget v2, v2, v3

    if-nez v2, :cond_b

    :goto_2
    move-object v0, v4

    goto :goto_3

    :cond_b
    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :cond_c
    :goto_3
    return-object v0
.end method

.method public strictlyNegative()Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public strictlyPositive()Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    return v1

    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public bridge synthetic subtract(D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 2
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public subtract(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic tan()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->tan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public tan()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->tan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic tanh()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->tanh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public tanh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method public toDouble()D
    .locals 14

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-wide v1

    :cond_0
    return-wide v3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->a(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v0

    const-wide/16 v5, 0x0

    if-nez v0, :cond_4

    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez p0, :cond_3

    const-wide/high16 v5, -0x8000000000000000L

    :cond_3
    return-wide v5

    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    move v9, v8

    goto :goto_0

    :cond_5
    move-object v0, p0

    move v9, v7

    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->intLog10()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x400a8f5c28f5c28fL    # 3.32

    mul-double/2addr v10, v12

    double-to-int v10, v10

    if-gez v10, :cond_6

    add-int/lit8 v10, v10, -0x1

    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    invoke-static {v11, v10}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    :goto_1
    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v12

    if-nez v12, :cond_10

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    invoke-static {v11, v10}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/16 v11, -0x3ff

    if-le v10, v11, :cond_8

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_8
    const/16 v12, -0x432

    if-ge v10, v12, :cond_9

    return-wide v5

    :cond_9
    const/16 v5, 0x3ff

    if-le v10, v5, :cond_b

    if-eqz v9, :cond_a

    goto :goto_2

    :cond_a
    move-wide v1, v3

    :goto_2
    return-wide v1

    :cond_b
    const-wide/high16 v1, 0x10000000000000L

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-nez p0, :cond_c

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v3, 0x0

    :cond_c
    if-gt v10, v11, :cond_d

    add-int/lit8 v10, v10, -0x1

    :cond_d
    :goto_3
    if-ge v10, v11, :cond_e

    add-int/lit8 v10, v10, 0x1

    ushr-long/2addr v3, v8

    goto :goto_3

    :cond_e
    int-to-long v0, v10

    const-wide/16 v5, 0x3ff

    add-long/2addr v0, v5

    const/16 p0, 0x34

    shl-long/2addr v0, p0

    or-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    if-eqz v9, :cond_f

    neg-double v0, v0

    :cond_f
    return-wide v0

    :cond_10
    :goto_4
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public toSplitDouble()[D
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/32 v3, -0x40000000

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v1

    const/4 p0, 0x1

    aput-wide v1, v0, p0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-byte p0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez p0, :cond_0

    const-string p0, "-Infinity"

    goto :goto_0

    :cond_0
    const-string p0, "Infinity"

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "NaN"

    return-object p0

    :cond_2
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    if-gt v0, v1, :cond_4

    const/4 v1, -0x1

    if-ge v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->dfp2string()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->dfp2sci()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0

    return-object p4
.end method

.method public trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v0

    sub-int/2addr v2, v1

    aget v2, v0, v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_2
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const-string v3, "trunc"

    const/16 v4, 0x10

    if-gez v2, :cond_3

    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, v4, v3, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_3
    array-length v0, v0

    if-lt v2, v0, :cond_4

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v2, 0x0

    move v5, v2

    move v6, v5

    :goto_0
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    iget v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v7, v8

    if-ge v5, v7, :cond_6

    iget-object v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v7, v5

    if-eqz v8, :cond_5

    move v8, v1

    goto :goto_1

    :cond_5
    move v8, v2

    :goto_1
    or-int/2addr v6, v8

    aput v2, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_b

    sget-object v2, Lorg/apache/commons/math3/dfp/Dfp$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const-string p1, "0.5"

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    iput-byte v1, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v5, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_7
    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-lez p1, :cond_a

    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, p1

    aget p1, v2, v5

    and-int/2addr p1, v1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_2

    :cond_8
    iget-byte p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne p1, v1, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_2

    :cond_9
    iget-byte p1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :cond_a
    :goto_2
    iget-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    invoke-virtual {p0, v4, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method public unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->e:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method
