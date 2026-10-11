.class public final Lnet/sf/saxon/value/Int64Value;
.super Lnet/sf/saxon/value/IntegerValue;
.source "SourceFile"


# static fields
.field public static final MAX_LONG:Lnet/sf/saxon/value/Int64Value;

.field public static final MINUS_ONE:Lnet/sf/saxon/value/Int64Value;

.field public static final MIN_LONG:Lnet/sf/saxon/value/Int64Value;

.field public static final PLUS_ONE:Lnet/sf/saxon/value/Int64Value;

.field public static final ZERO:Lnet/sf/saxon/value/Int64Value;

.field public static final i:[Lnet/sf/saxon/value/Int64Value;

.field public static final j:[B

.field public static final k:[B

.field public static final l:[B

.field public static final m:[J


# instance fields
.field public final h:J


# direct methods
.method public static constructor <clinit>()V
    .locals 28

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    sput-object v0, Lnet/sf/saxon/value/Int64Value;->MINUS_ONE:Lnet/sf/saxon/value/Int64Value;

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    sput-object v0, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    const-wide/16 v3, 0x1

    invoke-direct {v0, v3, v4}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    sput-object v0, Lnet/sf/saxon/value/Int64Value;->PLUS_ONE:Lnet/sf/saxon/value/Int64Value;

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    const-wide v5, 0x7fffffffffffffffL

    invoke-direct {v0, v5, v6}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    sput-object v0, Lnet/sf/saxon/value/Int64Value;->MAX_LONG:Lnet/sf/saxon/value/Int64Value;

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    const-wide/high16 v5, -0x8000000000000000L

    invoke-direct {v0, v5, v6}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    sput-object v0, Lnet/sf/saxon/value/Int64Value;->MIN_LONG:Lnet/sf/saxon/value/Int64Value;

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object v7, v0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object v8, v0

    invoke-direct {v0, v3, v4}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object v9, v0

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object v10, v0

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object v11, v0

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object v12, v0

    const-wide/16 v1, 0x5

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object v13, v0

    const-wide/16 v1, 0x6

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object v14, v0

    const-wide/16 v1, 0x7

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object v15, v0

    const-wide/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object/from16 v16, v0

    const-wide/16 v1, 0x9

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object/from16 v17, v0

    const-wide/16 v1, 0xa

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object/from16 v18, v0

    const-wide/16 v1, 0xb

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object/from16 v19, v0

    const-wide/16 v1, 0xc

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object/from16 v20, v0

    const-wide/16 v1, 0xd

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object/from16 v21, v0

    const-wide/16 v1, 0xe

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object/from16 v22, v0

    const-wide/16 v1, 0xf

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object/from16 v23, v0

    const-wide/16 v1, 0x10

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object/from16 v24, v0

    const-wide/16 v1, 0x11

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object/from16 v25, v0

    const-wide/16 v1, 0x12

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object/from16 v26, v0

    const-wide/16 v1, 0x13

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    move-object/from16 v27, v0

    const-wide/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    filled-new-array/range {v7 .. v27}, [Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/Int64Value;->i:[Lnet/sf/saxon/value/Int64Value;

    const-string v0, "0123456789"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/Int64Value;->j:[B

    const-string v0, "0000000000111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/Int64Value;->k:[B

    const-string v0, "0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/Int64Value;->l:[B

    const/16 v0, 0x12

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/saxon/value/Int64Value;->m:[J

    return-void

    :array_0
    .array-data 8
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/IntegerValue;-><init>()V

    .line 2
    iput-wide p1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    .line 3
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(JLnet/sf/saxon/type/AtomicType;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/value/IntegerValue;-><init>()V

    .line 5
    iput-wide p1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    .line 6
    iput-object p3, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(JLnet/sf/saxon/type/BuiltInAtomicType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lnet/sf/saxon/value/IntegerValue;-><init>()V

    .line 8
    iput-wide p1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    .line 9
    iput-object p3, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    if-eqz p4, :cond_1

    .line 10
    invoke-static {p1, p2, p3}, Lnet/sf/saxon/value/IntegerValue;->checkRange(JLnet/sf/saxon/type/BuiltInAtomicType;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Integer value "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is out of range for the requested type "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p3}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPTY0004"

    .line 13
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 15
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(JI[B)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    neg-long p0, p0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p0, v1

    if-lez v1, :cond_1

    const-wide/16 v1, 0x64

    div-long v1, p0, v1

    const/4 v3, 0x6

    shl-long v3, v1, v3

    const/4 v5, 0x5

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    const/4 v5, 0x2

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    sub-long/2addr p0, v3

    long-to-int p0, p0

    add-int/lit8 p2, p2, -0x1

    sget-object p1, Lnet/sf/saxon/value/Int64Value;->l:[B

    aget-byte p1, p1, p0

    aput-byte p1, p3, p2

    add-int/lit8 p2, p2, -0x1

    sget-object p1, Lnet/sf/saxon/value/Int64Value;->k:[B

    aget-byte p0, p1, p0

    aput-byte p0, p3, p2

    move-wide p0, v1

    goto :goto_0

    :cond_1
    long-to-int p0, p0

    :goto_1
    const/high16 p1, 0x10000

    if-lt p0, p1, :cond_2

    div-int/lit8 p1, p0, 0x64

    shl-int/lit8 v1, p1, 0x6

    shl-int/lit8 v2, p1, 0x5

    add-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    sub-int/2addr p0, v1

    add-int/lit8 p2, p2, -0x1

    sget-object v1, Lnet/sf/saxon/value/Int64Value;->l:[B

    aget-byte v1, v1, p0

    aput-byte v1, p3, p2

    add-int/lit8 p2, p2, -0x1

    sget-object v1, Lnet/sf/saxon/value/Int64Value;->k:[B

    aget-byte p0, v1, p0

    aput-byte p0, p3, p2

    move p0, p1

    goto :goto_1

    :cond_2
    :goto_2
    const p1, 0xcccd

    mul-int/2addr p1, p0

    ushr-int/lit8 p1, p1, 0x13

    shl-int/lit8 v1, p1, 0x3

    shl-int/lit8 v2, p1, 0x1

    add-int/2addr v1, v2

    sub-int/2addr p0, v1

    add-int/lit8 p2, p2, -0x1

    sget-object v1, Lnet/sf/saxon/value/Int64Value;->j:[B

    aget-byte p0, v1, p0

    aput-byte p0, p3, p2

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    add-int/lit8 p2, p2, -0x1

    aput-byte v0, p3, p2

    :cond_3
    return-void

    :cond_4
    move p0, p1

    goto :goto_2
.end method

.method public static c(J)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    sget-object v1, Lnet/sf/saxon/value/Int64Value;->m:[J

    aget-wide v1, v1, v0

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x13

    return p0
.end method

.method public static makeDerived(JLnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/Int64Value;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    iput-object p2, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0
.end method

.method public static makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;
    .locals 2

    const-wide/16 v0, 0x14

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/value/Int64Value;->i:[Lnet/sf/saxon/value/Int64Value;

    long-to-int p0, p0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object v0
.end method

.method public static signum(J)Lnet/sf/saxon/value/Int64Value;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    return-object p0

    :cond_0
    if-gez p0, :cond_1

    .line 2
    sget-object p0, Lnet/sf/saxon/value/Int64Value;->MINUS_ONE:Lnet/sf/saxon/value/Int64Value;

    goto :goto_0

    :cond_1
    sget-object p0, Lnet/sf/saxon/value/Int64Value;->PLUS_ONE:Lnet/sf/saxon/value/Int64Value;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abs()Lnet/sf/saxon/value/NumericValue;
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    return-object p0

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    new-instance p0, Lnet/sf/saxon/value/BigIntegerValue;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "9223372036854775808"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(Ljava/math/BigInteger;)V

    return-object p0

    :cond_1
    neg-long v0, v0

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0
.end method

.method public asBigInteger()Ljava/math/BigInteger;
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public asSubscript()I
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final b()Z
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    const/16 p0, 0x1f

    shr-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ceiling()Lnet/sf/saxon/value/NumericValue;
    .locals 0

    return-object p0
.end method

.method public checkRange(Lnet/sf/saxon/type/BuiltInAtomicType;)Z
    .locals 2

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-static {v0, v1, p1}, Lnet/sf/saxon/value/IntegerValue;->checkRange(JLnet/sf/saxon/type/BuiltInAtomicType;)Z

    move-result p0

    return p0
.end method

.method public compareTo(J)I
    .locals 2

    .line 11
    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/Int64Value;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 2

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_3

    .line 3
    instance-of v0, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v0, :cond_0

    .line 4
    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    iget-wide p0, p1, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/value/BigIntegerValue;

    if-eqz v0, :cond_1

    .line 6
    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/value/BigIntegerValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/BigIntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    return p0

    .line 7
    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/value/BigDecimalValue;

    if-eqz v0, :cond_2

    .line 8
    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/BigDecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0

    .line 9
    :cond_2
    invoke-super {p0, p1}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare xs:integer to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public convertToSubType(Lnet/sf/saxon/type/BuiltInAtomicType;Z)Lnet/sf/saxon/type/ValidationFailure;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/Int64Value;->setSubType(Lnet/sf/saxon/type/AtomicType;)V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/Int64Value;->checkRange(Lnet/sf/saxon/type/BuiltInAtomicType;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    :cond_1
    new-instance p2, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " cannot be converted to integer subtype "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p0, "FORG0001"

    invoke-virtual {p2, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object p2
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 3

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v0

    const/16 v1, 0x215

    if-ne v0, v1, :cond_0

    new-instance v0, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    iput-object p1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0

    :cond_0
    new-instance p1, Lnet/sf/saxon/value/BigDecimalValue;

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(J)V

    return-object p1
.end method

.method public div(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/NumericValue;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v0, :cond_4

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    iget-wide v0, p1, Lnet/sf/saxon/value/Int64Value;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/value/Int64Value;->b()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    rem-long v6, v4, v0

    cmp-long p1, v6, v2

    if-nez p1, :cond_1

    div-long/2addr v4, v0

    invoke-static {v4, v5}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Lnet/sf/saxon/value/BigDecimalValue;

    iget-wide v2, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {p1, v2, v3}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(J)V

    new-instance p0, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(J)V

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Calculator;->decimalDivide(Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/value/NumericValue;)Lnet/sf/saxon/value/BigDecimalValue;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance p1, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v2, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {p1, v2, v3}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    new-instance p0, Lnet/sf/saxon/value/BigIntegerValue;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/value/BigIntegerValue;->div(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Integer division by zero"

    const-string v0, "FOAR0001"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/BigIntegerValue;->div(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    return-object p0
.end method

.method public effectiveBooleanValue()Z
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public floor()Lnet/sf/saxon/value/NumericValue;
    .locals 0

    return-object p0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public getDoubleValue()D
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    long-to-float p0, v0

    return p0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object p0, Lnet/sf/saxon/str/StringConstants;->MIN_LONG:Lnet/sf/saxon/str/UnicodeString;

    return-object p0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    neg-long v0, v0

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->c(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->c(J)I

    move-result v0

    :goto_0
    new-array v1, v0, [B

    iget-wide v2, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-static {v2, v3, v0, v1}, Lnet/sf/saxon/value/Int64Value;->a(JI[B)V

    new-instance p0, Lnet/sf/saxon/str/Twine8;

    invoke-direct {p0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/Int64Value;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->hashCode()I

    move-result p0

    return p0
.end method

.method public idiv(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/value/Int64Value;->b()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    iget-wide v0, v0, Lnet/sf/saxon/value/Int64Value;->h:J

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    new-instance p0, Lnet/sf/saxon/value/BigIntegerValue;

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p1, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {p0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;->idiv(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/BigIntegerValue;->idiv(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Integer division by zero"

    const-string v0, "FOAR0001"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public longValue()J
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    return-wide v0
.end method

.method public minus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
    .locals 11

    instance-of v0, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    const/16 v2, 0x3c

    shr-long v3, v0, v2

    const-wide/16 v5, 0xf

    and-long/2addr v3, v5

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-eqz v9, :cond_0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    new-instance p0, Lnet/sf/saxon/value/BigIntegerValue;

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p1, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {p0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;->minus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    iget-wide v3, p1, Lnet/sf/saxon/value/Int64Value;->h:J

    shr-long v9, v3, v2

    and-long/2addr v9, v5

    cmp-long v2, v9, v7

    if-eqz v2, :cond_1

    cmp-long v2, v9, v5

    if-eqz v2, :cond_1

    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    new-instance p0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p1, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {p0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;->minus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_1
    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/BigIntegerValue;->minus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public mod(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v0, :cond_3

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    iget-wide v0, p1, Lnet/sf/saxon/value/Int64Value;->h:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/value/Int64Value;->b()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    rem-long/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    new-instance p0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p1, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {p0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;->mod(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Integer modulo zero"

    const-string v0, "FOAR0001"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/BigIntegerValue;->mod(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public negate()Lnet/sf/saxon/value/NumericValue;
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->negate()Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/value/Int64Value;

    neg-long v0, v0

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object p0
.end method

.method public plus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
    .locals 11

    instance-of v0, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    const/16 v2, 0x3c

    shr-long v3, v0, v2

    const-wide/16 v5, 0xf

    and-long/2addr v3, v5

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-eqz v9, :cond_0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    new-instance p0, Lnet/sf/saxon/value/BigIntegerValue;

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p1, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {p0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;->plus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    iget-wide v3, p1, Lnet/sf/saxon/value/Int64Value;->h:J

    shr-long v9, v3, v2

    and-long/2addr v9, v5

    cmp-long v2, v9, v7

    if-eqz v2, :cond_1

    cmp-long v2, v9, v5

    if-eqz v2, :cond_1

    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    new-instance p0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p1, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {p0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;->plus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_1
    add-long/2addr v0, v3

    invoke-static {v0, v1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/BigIntegerValue;->plus(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public round(I)Lnet/sf/saxon/value/NumericValue;
    .locals 12

    if-gez p1, :cond_6

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const/16 v4, -0xf

    if-ge p1, v4, :cond_1

    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/BigIntegerValue;->round(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x1

    move-wide v6, v4

    move-wide v8, v6

    :goto_0
    neg-int v10, p1

    int-to-long v10, v10

    cmp-long v10, v6, v10

    if-gtz v10, :cond_2

    const-wide/16 v10, 0xa

    mul-long/2addr v8, v10

    add-long/2addr v6, v4

    goto :goto_0

    :cond_2
    rem-long v4, v0, v8

    sub-long/2addr v0, v4

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    iget-wide p0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    cmp-long p0, p0, v2

    if-lez p0, :cond_3

    cmp-long p0, v4, v8

    if-ltz p0, :cond_5

    add-long/2addr v0, v8

    goto :goto_1

    :cond_3
    cmp-long p0, v4, v8

    if-lez p0, :cond_4

    add-long/2addr v0, v8

    :cond_4
    neg-long v0, v0

    :cond_5
    :goto_1
    new-instance p0, Lnet/sf/saxon/value/Int64Value;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    :cond_6
    :goto_2
    return-object p0
.end method

.method public roundHalfToEven(I)Lnet/sf/saxon/value/NumericValue;
    .locals 10

    if-ltz p1, :cond_0

    return-object p0

    :cond_0
    const/16 v0, -0xf

    if-ge p1, v0, :cond_1

    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/BigIntegerValue;->roundHalfToEven(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    return-object p0

    :cond_1
    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    neg-int v8, p1

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-gtz v8, :cond_2

    const-wide/16 v8, 0xa

    mul-long/2addr v6, v8

    add-long/2addr v4, v2

    goto :goto_0

    :cond_2
    rem-long v2, v0, v6

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    cmp-long p1, v2, v6

    const-wide/16 v2, 0x0

    if-lez p1, :cond_4

    :cond_3
    add-long/2addr v0, v6

    goto :goto_1

    :cond_4
    if-gez p1, :cond_5

    goto :goto_1

    :cond_5
    mul-long/2addr v4, v6

    rem-long v4, v0, v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_3

    :goto_1
    iget-wide p0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    cmp-long p0, p0, v2

    if-gez p0, :cond_6

    neg-long v0, v0

    :cond_6
    new-instance p0, Lnet/sf/saxon/value/Int64Value;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object p0
.end method

.method public setSubType(Lnet/sf/saxon/type/AtomicType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public signum()I
    .locals 4

    .line 3
    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public times(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/value/Int64Value;->b()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v0}, Lnet/sf/saxon/value/Int64Value;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    iget-wide v0, v0, Lnet/sf/saxon/value/Int64Value;->h:J

    mul-long/2addr p0, v0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    new-instance p0, Lnet/sf/saxon/value/BigIntegerValue;

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    iget-wide v1, p1, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {p0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/BigIntegerValue;->times(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lnet/sf/saxon/value/BigIntegerValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(J)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/BigIntegerValue;->times(Lnet/sf/saxon/value/IntegerValue;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public validateAgainstSubType(Lnet/sf/saxon/type/BuiltInAtomicType;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-static {v0, v1, p1}, Lnet/sf/saxon/value/IntegerValue;->checkRange(JLnet/sf/saxon/type/BuiltInAtomicType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lnet/sf/saxon/value/Int64Value;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " cannot be converted to integer subtype "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p0, "FORG0001"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method
