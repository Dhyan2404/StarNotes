.class public Lnet/sf/saxon/value/FloatingPointConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOUBLE_SIGN_MASK:J = -0x8000000000000000L

.field public static final FLOAT_SIGN_MASK:I = -0x80000000

.field public static THE_INSTANCE:Lnet/sf/saxon/value/FloatingPointConverter; = null

.field public static final a:Ljava/lang/String; = "-INF"

.field public static final b:Ljava/lang/String; = "INF"

.field public static final c:Ljava/lang/String; = "NaN"

.field public static final d:[C

.field public static final e:J = 0x7ff0000000000000L

.field public static final f:I = 0x34

.field public static final g:I = 0x3ff

.field public static final h:J = 0xfffffffffffffL

.field public static final i:I = 0x7f800000

.field public static final j:I = 0x17

.field public static final k:I = 0x7f

.field public static final l:I = 0x7fffff

.field public static final m:Ljava/math/BigInteger;

.field public static final n:Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/value/FloatingPointConverter;

    invoke-direct {v0}, Lnet/sf/saxon/value/FloatingPointConverter;-><init>()V

    sput-object v0, Lnet/sf/saxon/value/FloatingPointConverter;->THE_INSTANCE:Lnet/sf/saxon/value/FloatingPointConverter;

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/FloatingPointConverter;->m:Ljava/math/BigInteger;

    const-wide/16 v0, 0x9

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/FloatingPointConverter;->n:Ljava/math/BigInteger;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnet/sf/saxon/str/UnicodeBuilder;IJI)V
    .locals 24

    move-object/from16 v0, p0

    sub-int v1, p1, p4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-long v3, p2, v3

    neg-int v5, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const-wide/16 v6, 0x1

    shl-long v8, v6, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-long v10, v6, v1

    const/4 v1, 0x1

    add-int/lit8 v5, p4, -0x1

    shl-long v5, v6, v5

    cmp-long v5, p2, v5

    if-nez v5, :cond_0

    shl-long v5, v10, v1

    shl-long/2addr v3, v1

    shl-long/2addr v8, v1

    goto :goto_0

    :cond_0
    move-wide v5, v10

    :goto_0
    move v7, v2

    :goto_1
    const-wide/16 v12, 0x9

    add-long/2addr v12, v8

    const-wide/16 v14, 0xa

    div-long/2addr v12, v14

    cmp-long v12, v3, v12

    if-gez v12, :cond_1

    add-int/lit8 v7, v7, -0x1

    mul-long/2addr v3, v14

    mul-long/2addr v10, v14

    mul-long/2addr v5, v14

    goto :goto_1

    :cond_1
    :goto_2
    const-wide/16 v12, 0x2

    mul-long v16, v3, v12

    add-long v16, v16, v5

    mul-long v18, v8, v12

    cmp-long v16, v16, v18

    if-ltz v16, :cond_2

    mul-long/2addr v8, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move/from16 v17, v1

    move/from16 v16, v7

    :goto_3
    const/16 v1, 0x30

    if-gez v16, :cond_4

    if-eqz v17, :cond_3

    const-string v2, "0."

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_3
    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 v16, v16, 0x1

    const/4 v2, 0x0

    const/16 v17, 0x0

    goto :goto_3

    :cond_4
    :goto_4
    const/4 v2, -0x1

    add-int/2addr v7, v2

    mul-long/2addr v3, v14

    div-long v1, v3, v8

    long-to-int v1, v1

    int-to-long v12, v1

    mul-long/2addr v12, v8

    sub-long/2addr v3, v12

    mul-long/2addr v10, v14

    mul-long/2addr v5, v14

    const-wide/16 v12, 0x2

    mul-long v20, v3, v12

    cmp-long v2, v20, v10

    if-gez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    sub-long v22, v18, v5

    cmp-long v16, v20, v22

    if-lez v16, :cond_6

    const/16 v16, 0x1

    goto :goto_6

    :cond_6
    const/16 v16, 0x0

    :goto_6
    const/16 v12, 0x2e

    if-nez v2, :cond_a

    if-eqz v16, :cond_7

    goto :goto_7

    :cond_7
    const/4 v13, -0x1

    if-ne v7, v13, :cond_9

    if-eqz v17, :cond_8

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_8
    invoke-virtual {v0, v12}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_9
    sget-object v2, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    aget-char v1, v2, v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v1, 0x30

    const-wide/16 v12, 0x2

    const/16 v17, 0x0

    goto :goto_4

    :cond_a
    :goto_7
    if-eqz v16, :cond_c

    if-eqz v2, :cond_b

    cmp-long v2, v20, v8

    if-lez v2, :cond_c

    :cond_b
    add-int/lit8 v1, v1, 0x1

    :cond_c
    const/4 v2, -0x1

    if-ne v7, v2, :cond_e

    const/16 v2, 0x30

    if-eqz v17, :cond_d

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_d
    invoke-virtual {v0, v12}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_8

    :cond_e
    const/16 v2, 0x30

    :goto_8
    sget-object v3, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    aget-char v1, v3, v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v7, :cond_f

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method public static appendFloat(Lnet/sf/saxon/str/UnicodeBuilder;FZ)Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, "-INF"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto/16 :goto_1

    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const-string p1, "INF"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto/16 :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "NaN"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto/16 :goto_1

    :cond_2
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/16 v1, 0x2d

    if-nez v0, :cond_4

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/high16 p2, -0x80000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_3
    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    goto/16 :goto_1

    :cond_4
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p1, v0

    if-nez v0, :cond_5

    const-string p1, "3.4028235E38"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->appendLatin(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_5
    const v0, -0x800001

    cmpl-float v0, p1, v0

    if-nez v0, :cond_6

    const-string p1, "-3.4028235E38"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->appendLatin(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    const-string p1, "1.4E-45"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->appendLatin(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_7
    const v0, -0x7fffffff

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    const-string p1, "-1.4E-45"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->appendLatin(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    invoke-virtual {p0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    neg-float p1, p1

    :cond_9
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const v1, 0x7fffff

    and-int/2addr v1, v0

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v0, v2

    const/16 v2, 0x17

    shr-int/2addr v0, v2

    add-int/lit8 v3, v0, -0x7f

    if-nez v0, :cond_a

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_a
    if-nez p2, :cond_c

    const p2, 0x49742400    # 1000000.0f

    cmpl-float p2, p1, p2

    if-gez p2, :cond_c

    const p2, 0x358637bd    # 1.0E-6f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_b

    goto :goto_0

    :cond_b
    int-to-long p1, v1

    invoke-static {p0, v3, p1, p2, v2}, Lnet/sf/saxon/value/FloatingPointConverter;->a(Lnet/sf/saxon/str/UnicodeBuilder;IJI)V

    goto :goto_1

    :cond_c
    :goto_0
    int-to-long p1, v1

    invoke-static {p0, v3, p1, p2, v2}, Lnet/sf/saxon/value/FloatingPointConverter;->c(Lnet/sf/saxon/str/UnicodeBuilder;IJI)V

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static appendInt(Lnet/sf/saxon/str/UnicodeBuilder;I)Lnet/sf/saxon/str/UnicodeBuilder;
    .locals 11

    if-gez p1, :cond_1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const-string p1, "-2147483648"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0

    :cond_0
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    neg-int p1, p1

    :cond_1
    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    sget-object v0, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    aget-char p1, v0, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0

    :cond_2
    const/16 v1, 0x64

    if-ge p1, v1, :cond_3

    sget-object v1, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    div-int/lit8 v2, p1, 0xa

    aget-char v2, v1, v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v0

    aget-char p1, v1, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0

    :cond_3
    const/16 v2, 0x3e8

    if-ge p1, v2, :cond_4

    sget-object v2, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    div-int/lit8 v3, p1, 0x64

    aget-char v3, v2, v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v1

    div-int/lit8 v1, p1, 0xa

    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v0

    aget-char p1, v2, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0

    :cond_4
    const/16 v3, 0x2710

    if-ge p1, v3, :cond_5

    sget-object v3, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    div-int/lit16 v4, p1, 0x3e8

    aget-char v4, v3, v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v2

    div-int/lit8 v2, p1, 0x64

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v1

    div-int/lit8 v1, p1, 0xa

    aget-char v1, v3, v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v0

    aget-char p1, v3, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0

    :cond_5
    const v4, 0x186a0

    if-ge p1, v4, :cond_6

    sget-object v4, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    div-int/lit16 v5, p1, 0x2710

    aget-char v5, v4, v5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v3

    div-int/lit16 v3, p1, 0x3e8

    aget-char v3, v4, v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v2

    div-int/lit8 v2, p1, 0x64

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v1

    div-int/lit8 v1, p1, 0xa

    aget-char v1, v4, v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v0

    aget-char p1, v4, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0

    :cond_6
    const v5, 0xf4240

    if-ge p1, v5, :cond_7

    sget-object v5, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    div-int v6, p1, v4

    aget-char v6, v5, v6

    invoke-virtual {p0, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v4

    div-int/lit16 v4, p1, 0x2710

    aget-char v4, v5, v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v3

    div-int/lit16 v3, p1, 0x3e8

    aget-char v3, v5, v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v2

    div-int/lit8 v2, p1, 0x64

    aget-char v2, v5, v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v1

    div-int/lit8 v1, p1, 0xa

    aget-char v1, v5, v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v0

    aget-char p1, v5, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0

    :cond_7
    const v6, 0x989680

    if-ge p1, v6, :cond_8

    sget-object v6, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    div-int v7, p1, v5

    aget-char v7, v6, v7

    invoke-virtual {p0, v7}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v5

    div-int v5, p1, v4

    aget-char v5, v6, v5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v4

    div-int/lit16 v4, p1, 0x2710

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v3

    div-int/lit16 v3, p1, 0x3e8

    aget-char v3, v6, v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v2

    div-int/lit8 v2, p1, 0x64

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v1

    div-int/lit8 v1, p1, 0xa

    aget-char v1, v6, v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v0

    aget-char p1, v6, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0

    :cond_8
    const v7, 0x5f5e100

    if-ge p1, v7, :cond_9

    sget-object v7, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    div-int v8, p1, v6

    aget-char v8, v7, v8

    invoke-virtual {p0, v8}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v6

    div-int v6, p1, v5

    aget-char v6, v7, v6

    invoke-virtual {p0, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v5

    div-int v5, p1, v4

    aget-char v5, v7, v5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v4

    div-int/lit16 v4, p1, 0x2710

    aget-char v4, v7, v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v3

    div-int/lit16 v3, p1, 0x3e8

    aget-char v3, v7, v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v2

    div-int/lit8 v2, p1, 0x64

    aget-char v2, v7, v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v1

    div-int/lit8 v1, p1, 0xa

    aget-char v1, v7, v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v0

    aget-char p1, v7, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0

    :cond_9
    const v8, 0x3b9aca00

    if-ge p1, v8, :cond_a

    sget-object v8, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    div-int v9, p1, v7

    aget-char v9, v8, v9

    invoke-virtual {p0, v9}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v7

    div-int v7, p1, v6

    aget-char v7, v8, v7

    invoke-virtual {p0, v7}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v6

    div-int v6, p1, v5

    aget-char v6, v8, v6

    invoke-virtual {p0, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v5

    div-int v5, p1, v4

    aget-char v5, v8, v5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v4

    div-int/lit16 v4, p1, 0x2710

    aget-char v4, v8, v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v3

    div-int/lit16 v3, p1, 0x3e8

    aget-char v3, v8, v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v2

    div-int/lit8 v2, p1, 0x64

    aget-char v2, v8, v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v1

    div-int/lit8 v1, p1, 0xa

    aget-char v1, v8, v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v0

    aget-char p1, v8, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0

    :cond_a
    sget-object v9, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    div-int v10, p1, v8

    aget-char v10, v9, v10

    invoke-virtual {p0, v10}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v8

    div-int v8, p1, v7

    aget-char v8, v9, v8

    invoke-virtual {p0, v8}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v7

    div-int v7, p1, v6

    aget-char v7, v9, v7

    invoke-virtual {p0, v7}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v6

    div-int v6, p1, v5

    aget-char v6, v9, v6

    invoke-virtual {p0, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v5

    div-int v5, p1, v4

    aget-char v5, v9, v5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v4

    div-int/lit16 v4, p1, 0x2710

    aget-char v4, v9, v4

    invoke-virtual {p0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v3

    div-int/lit16 v3, p1, 0x3e8

    aget-char v3, v9, v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v2

    div-int/lit8 v2, p1, 0x64

    aget-char v2, v9, v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v1

    div-int/lit8 v1, p1, 0xa

    aget-char v1, v9, v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    rem-int/2addr p1, v0

    aget-char p1, v9, p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0
.end method

.method public static b(Lnet/sf/saxon/str/UnicodeBuilder;IJI)V
    .locals 10

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sub-int/2addr p1, p4

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    neg-int v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    const-wide/16 v4, 0x1

    const/4 v2, 0x1

    sub-int/2addr p4, v2

    shl-long/2addr v4, p4

    cmp-long p2, p2, v4

    if-nez p2, :cond_0

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    move p3, v1

    :goto_1
    sget-object p4, Lnet/sf/saxon/value/FloatingPointConverter;->n:Ljava/math/BigInteger;

    invoke-virtual {v3, p4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    sget-object v4, Lnet/sf/saxon/value/FloatingPointConverter;->m:Ljava/math/BigInteger;

    invoke-virtual {p4, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p4

    if-gez p4, :cond_1

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p4

    if-ltz p4, :cond_2

    sget-object p4, Lnet/sf/saxon/value/FloatingPointConverter;->m:Ljava/math/BigInteger;

    invoke-virtual {v3, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    move p4, p3

    move v4, v2

    :goto_3
    const/16 v5, 0x30

    if-gez p4, :cond_4

    if-eqz v4, :cond_3

    const-string v4, "0."

    invoke-virtual {p0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_3
    invoke-virtual {p0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 p4, p4, 0x1

    move v4, v1

    goto :goto_3

    :cond_4
    :goto_4
    const/4 p4, -0x1

    add-int/2addr p3, p4

    sget-object v6, Lnet/sf/saxon/value/FloatingPointConverter;->m:Ljava/math/BigInteger;

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_5

    move v8, v2

    goto :goto_5

    :cond_5
    move v8, v1

    :goto_5
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-lez v6, :cond_6

    move v6, v2

    goto :goto_6

    :cond_6
    move v6, v1

    :goto_6
    const/16 v9, 0x2e

    if-nez v8, :cond_a

    if-eqz v6, :cond_7

    goto :goto_7

    :cond_7
    if-ne p3, p4, :cond_9

    if-eqz v4, :cond_8

    invoke-virtual {p0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_8
    invoke-virtual {p0, v9}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_9
    sget-object p4, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    aget-char p4, p4, v7

    invoke-virtual {p0, p4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    move v4, v1

    goto :goto_4

    :cond_a
    :goto_7
    if-eqz v6, :cond_c

    if-eqz v8, :cond_b

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_c

    :cond_b
    add-int/lit8 v7, v7, 0x1

    :cond_c
    if-ne p3, p4, :cond_e

    if-eqz v4, :cond_d

    invoke-virtual {p0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_d
    invoke-virtual {p0, v9}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_e
    sget-object p1, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    aget-char p1, p1, v7

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :goto_8
    if-ge v1, p3, :cond_f

    invoke-virtual {p0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    return-void
.end method

.method public static c(Lnet/sf/saxon/str/UnicodeBuilder;IJI)V
    .locals 9

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sub-int/2addr p1, p4

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    neg-int v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    const-wide/16 v4, 0x1

    const/4 v2, 0x1

    sub-int/2addr p4, v2

    shl-long/2addr v4, p4

    cmp-long p2, p2, v4

    if-nez p2, :cond_0

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    move p3, v1

    :goto_1
    sget-object p4, Lnet/sf/saxon/value/FloatingPointConverter;->n:Ljava/math/BigInteger;

    invoke-virtual {v3, p4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    sget-object v4, Lnet/sf/saxon/value/FloatingPointConverter;->m:Ljava/math/BigInteger;

    invoke-virtual {p4, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p4

    if-gez p4, :cond_1

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p4

    if-ltz p4, :cond_2

    sget-object p4, Lnet/sf/saxon/value/FloatingPointConverter;->m:Ljava/math/BigInteger;

    invoke-virtual {v3, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    sub-int/2addr p3, v2

    move v4, v1

    move p4, v2

    :goto_3
    sget-object v5, Lnet/sf/saxon/value/FloatingPointConverter;->m:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_3

    move v7, v2

    goto :goto_4

    :cond_3
    move v7, v1

    :goto_4
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-lez v5, :cond_4

    move v5, v2

    goto :goto_5

    :cond_4
    move v5, v1

    :goto_5
    if-nez v7, :cond_7

    if-eqz v5, :cond_5

    goto :goto_6

    :cond_5
    sget-object v5, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    if-eqz p4, :cond_6

    const/16 p4, 0x2e

    invoke-virtual {p0, p4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    move v4, v2

    :cond_6
    move p4, v1

    goto :goto_3

    :cond_7
    :goto_6
    if-eqz v5, :cond_9

    if-eqz v7, :cond_8

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_9

    :cond_8
    add-int/lit8 v6, v6, 0x1

    :cond_9
    sget-object p1, Lnet/sf/saxon/value/FloatingPointConverter;->d:[C

    aget-char p1, p1, v6

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    if-nez v4, :cond_a

    const-string p1, ".0"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_a
    const/16 p1, 0x45

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-static {p0, p3}, Lnet/sf/saxon/value/FloatingPointConverter;->appendInt(Lnet/sf/saxon/str/UnicodeBuilder;I)Lnet/sf/saxon/str/UnicodeBuilder;

    return-void
.end method

.method public static convertDouble(DZ)Lnet/sf/saxon/str/UnicodeString;
    .locals 9

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v1, p0, v1

    if-nez v1, :cond_0

    const-string p0, "-INF"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->appendLatin(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto/16 :goto_1

    :cond_0
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, p0, v1

    if-nez v1, :cond_1

    const-string p0, "INF"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->appendLatin(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto/16 :goto_1

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "NaN"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->appendLatin(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto/16 :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    cmpl-double v3, p0, v1

    const/16 v4, 0x2d

    const-wide/16 v5, 0x0

    if-nez v3, :cond_4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const-wide/high16 v1, -0x8000000000000000L

    and-long/2addr p0, v1

    cmp-long p0, p0, v5

    if-eqz p0, :cond_3

    invoke-virtual {v0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    :cond_3
    const/16 p0, 0x30

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    if-eqz p2, :cond_e

    const-string p0, ".0E0"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto/16 :goto_1

    :cond_4
    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v3, p0, v7

    if-nez v3, :cond_5

    const-string p0, "1.7976931348623157E308"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto/16 :goto_1

    :cond_5
    const-wide v7, -0x10000000000001L

    cmpl-double v3, p0, v7

    if-nez v3, :cond_6

    const-string p0, "-1.7976931348623157E308"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto/16 :goto_1

    :cond_6
    const-wide/16 v7, 0x1

    cmpl-double v3, p0, v7

    if-nez v3, :cond_7

    const-string p0, "4.9E-324"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_7
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmpl-double v3, p0, v7

    if-nez v3, :cond_8

    const-string p0, "-4.9E-324"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_8
    cmpg-double v1, p0, v1

    if-gez v1, :cond_9

    invoke-virtual {v0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    neg-double p0, p0

    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffL

    and-long/2addr v3, v1

    const-wide/high16 v7, 0x10000000000000L

    or-long/2addr v3, v7

    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v1, v7

    const/16 v7, 0x34

    shr-long/2addr v1, v7

    long-to-int v8, v1

    add-int/lit16 v8, v8, -0x3ff

    cmp-long v1, v1, v5

    if-nez v1, :cond_a

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_a
    if-nez p2, :cond_d

    const-wide v1, 0x412e848000000000L    # 1000000.0

    cmpl-double p2, p0, v1

    if-gez p2, :cond_d

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double p2, p0, v1

    if-gez p2, :cond_b

    goto :goto_0

    :cond_b
    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p0, p0, v1

    if-gtz p0, :cond_c

    invoke-static {v0, v8, v3, v4, v7}, Lnet/sf/saxon/value/FloatingPointConverter;->b(Lnet/sf/saxon/str/UnicodeBuilder;IJI)V

    goto :goto_1

    :cond_c
    invoke-static {v0, v8, v3, v4, v7}, Lnet/sf/saxon/value/FloatingPointConverter;->a(Lnet/sf/saxon/str/UnicodeBuilder;IJI)V

    goto :goto_1

    :cond_d
    :goto_0
    invoke-static {v0, v8, v3, v4, v7}, Lnet/sf/saxon/value/FloatingPointConverter;->c(Lnet/sf/saxon/str/UnicodeBuilder;IJI)V

    :cond_e
    :goto_1
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method
