.class public abstract Lnet/sf/saxon/value/IntegerValue;
.super Lnet/sf/saxon/value/DecimalValue;
.source "SourceFile"


# static fields
.field public static final e:J = -0x270fL

.field public static final f:J = -0x270eL

.field public static final g:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/saxon/value/IntegerValue;->g:[J

    return-void

    :array_0
    .array-data 8
        0x215
        -0x270f
        -0x270f
        0x218
        -0x8000000000000000L
        0x7fffffffffffffffL
        0x219
        -0x80000000
        0x7fffffff
        0x21a
        -0x8000
        0x7fff
        0x21b
        -0x80
        0x7f
        0x21c
        0x0
        -0x270f
        0x21d
        0x1
        -0x270f
        0x216
        -0x270f
        0x0
        0x217
        -0x270f
        -0x1
        0x21e
        0x0
        -0x270e
        0x21f
        0x0
        0xffffffffL
        0x220
        0x0
        0xffff
        0x221
        0x0
        0xff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/value/DecimalValue;-><init>()V

    return-void
.end method

.method public static castableAsInteger(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 11

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x4

    const-string v6, "Cannot convert string "

    if-eqz v3, :cond_c

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v3

    const/16 v7, 0x39

    const/16 v8, 0x30

    const/4 v9, 0x2

    if-eqz v2, :cond_8

    const-string v10, " to an integer: expected a digit, found "

    if-eq v2, v4, :cond_6

    const/4 v4, 0x3

    if-eq v2, v9, :cond_3

    if-ne v2, v4, :cond_2

    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_2
    move v2, v4

    goto :goto_1

    :cond_1
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v5}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to an integer: found "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " after final whitespace"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    if-lt v3, v8, :cond_4

    if-gt v3, v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v5}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_6
    if-lt v3, v8, :cond_7

    if-gt v3, v7, :cond_7

    :goto_3
    move v2, v9

    goto/16 :goto_1

    :cond_7
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v5}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_8
    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x2b

    if-eq v3, v2, :cond_0

    const/16 v2, 0x2d

    if-ne v3, v2, :cond_a

    goto/16 :goto_2

    :cond_a
    if-lt v3, v8, :cond_b

    if-gt v3, v7, :cond_b

    goto :goto_3

    :cond_b
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v5}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to an integer: contains a character that is not a digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_c
    if-eqz v2, :cond_e

    if-ne v2, v4, :cond_d

    goto :goto_4

    :cond_d
    const/4 p0, 0x0

    return-object p0

    :cond_e
    :goto_4
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v5}, Lnet/sf/saxon/trans/Err;->wrap(Lnet/sf/saxon/str/UnicodeString;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to an integer: no digits found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static checkBigRange(Ljava/math/BigInteger;Lnet/sf/saxon/type/BuiltInAtomicType;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lnet/sf/saxon/value/IntegerValue;->g:[J

    array-length v3, v2

    if-ge v1, v3, :cond_6

    aget-wide v3, v2, v1

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    add-int/lit8 p1, v1, 0x1

    aget-wide v3, v2, p1

    const-wide/16 v5, -0x270f

    cmp-long p1, v3, v5

    if-eqz p1, :cond_0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x2

    aget-wide v1, v2, v1

    cmp-long p1, v1, v5

    const/4 v3, 0x1

    if-nez p1, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, -0x270e

    cmp-long p1, v1, v4

    if-nez p1, :cond_3

    sget-object p1, Lnet/sf/saxon/value/BigIntegerValue;->MAX_UNSIGNED_LONG:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_2

    move v0, v3

    :cond_2
    return v0

    :cond_3
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_4

    move v0, v3

    :cond_4
    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No range information found for integer subtype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkRange(JLnet/sf/saxon/type/BuiltInAtomicType;)Z
    .locals 8

    invoke-virtual {p2}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lnet/sf/saxon/value/IntegerValue;->g:[J

    array-length v4, v3

    if-ge v2, v4, :cond_4

    aget-wide v4, v3, v2

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    add-int/lit8 p2, v2, 0x1

    aget-wide v4, v3, p2

    const-wide/16 v6, -0x270f

    cmp-long p2, v4, v6

    if-eqz p2, :cond_0

    cmp-long p2, p0, v4

    if-gez p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x2

    aget-wide v2, v3, v2

    cmp-long p2, v2, v6

    if-eqz p2, :cond_1

    const-wide/16 v4, -0x270e

    cmp-long p2, v2, v4

    if-eqz p2, :cond_1

    cmp-long p0, p0, v2

    if-gtz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No range information found for integer subtype "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromDouble(D)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-string v1, "FOCA0002"

    if-eqz v0, :cond_0

    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    const-string p1, "Cannot convert double NaN to an integer"

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    const-string p1, "Cannot convert double INF to an integer"

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_3

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    double-to-long p0, p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_4

    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    const/4 v1, 0x2

    invoke-static {p0, p1, v1}, Lnet/sf/saxon/functions/FormatNumber;->adjustToDecimal(DI)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_4
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static getMaxInclusive(Lnet/sf/saxon/type/BuiltInAtomicType;)Lnet/sf/saxon/value/IntegerValue;
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lnet/sf/saxon/value/IntegerValue;->g:[J

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    aget-wide v4, v1, v0

    int-to-long v6, p0

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x2

    aget-wide v0, v1, v0

    const-wide/16 v4, -0x270f

    cmp-long p0, v0, v4

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    const-wide/16 v2, -0x270e

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    sget-object p0, Lnet/sf/saxon/value/BigIntegerValue;->MAX_UNSIGNED_LONG:Ljava/math/BigInteger;

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public static getMinInclusive(Lnet/sf/saxon/type/BuiltInAtomicType;)Lnet/sf/saxon/value/IntegerValue;
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lnet/sf/saxon/value/IntegerValue;->g:[J

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    aget-wide v4, v1, v0

    int-to-long v6, p0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-wide v0, v1, v0

    const-wide/16 v4, -0x270f

    cmp-long p0, v0, v4

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;
    .locals 2

    sget-object v0, Lnet/sf/saxon/value/BigIntegerValue;->MAX_LONG:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lnet/sf/saxon/value/BigIntegerValue;->MIN_LONG:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static signum(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1f

    neg-int p0, p0

    ushr-int/lit8 p0, p0, 0x1f

    or-int/2addr p0, v0

    return p0
.end method

.method public static stringToInteger(Ljava/lang/String;)Lnet/sf/saxon/type/ConversionResult;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-le v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-le v3, v0, :cond_2

    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    const-string v0, "Cannot convert zero-length string to an integer"

    invoke-direct {p0, v0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    sub-int v4, v0, v3

    const-string v5, " to an integer"

    const/16 v6, 0x2b

    const/16 v7, 0x10

    const/4 v8, 0x4

    const-string v9, "Cannot convert string "

    const/4 v10, 0x1

    if-ge v4, v7, :cond_9

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v2, v10

    :cond_4
    :goto_2
    if-le v3, v0, :cond_5

    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v8}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to integer: no digits after the sign"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-wide/16 v6, 0x0

    :goto_3
    if-gt v3, v0, :cond_7

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_6

    const/16 v4, 0x39

    if-gt v3, v4, :cond_6

    const-wide/16 v10, 0xa

    mul-long/2addr v6, v10

    add-int/lit8 v3, v3, -0x30

    int-to-long v3, v3

    add-long/2addr v6, v3

    move v3, v1

    goto :goto_3

    :cond_6
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v8}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_7
    if-eqz v2, :cond_8

    neg-long v6, v6

    :cond_8
    invoke-static {v6, v7}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_9
    if-gtz v3, :cond_a

    if-ge v0, v1, :cond_b

    :cond_a
    add-int/2addr v0, v10

    :try_start_0
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_c

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v7, :cond_d

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0

    :cond_d
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(Ljava/math/BigInteger;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v8}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract asBigInteger()Ljava/math/BigInteger;
.end method

.method public abstract convertToSubType(Lnet/sf/saxon/type/BuiltInAtomicType;Z)Lnet/sf/saxon/type/ValidationFailure;
.end method

.method public abstract div(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/NumericValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public div(Lnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/value/NumericValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/IntegerValue;->div(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/NumericValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 3
    throw p0
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public abstract idiv(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public idiv(Lnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/value/IntegerValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/IntegerValue;->idiv(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 3
    throw p0
.end method

.method public isIdentical(Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/IntegerValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/NumericValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWholeNumber()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract minus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
.end method

.method public abstract mod(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public mod(Lnet/sf/saxon/value/IntegerValue;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/value/IntegerValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/IntegerValue;->mod(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 3
    throw p0
.end method

.method public abstract plus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
.end method

.method public abstract times(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
.end method

.method public abstract validateAgainstSubType(Lnet/sf/saxon/type/BuiltInAtomicType;)Lnet/sf/saxon/type/ValidationFailure;
.end method
