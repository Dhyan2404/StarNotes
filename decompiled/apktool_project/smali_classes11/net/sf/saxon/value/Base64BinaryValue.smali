.class public Lnet/sf/saxon/value/Base64BinaryValue;
.super Lnet/sf/saxon/value/AtomicValue;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicMatchKey;
.implements Lnet/sf/saxon/expr/sort/XPathComparable;
.implements Lnet/sf/saxon/value/ContextFreeAtomicValue;


# static fields
.field public static final f:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

.field public static final g:[I

.field public static final h:[I


# instance fields
.field public final e:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x40

    new-array v1, v0, [I

    sput-object v1, Lnet/sf/saxon/value/Base64BinaryValue;->g:[I

    const/16 v1, 0x80

    new-array v1, v1, [I

    sput-object v1, Lnet/sf/saxon/value/Base64BinaryValue;->h:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Lnet/sf/saxon/value/Base64BinaryValue;->g:[I

    aput v2, v3, v1

    sget-object v3, Lnet/sf/saxon/value/Base64BinaryValue;->h:[I

    aput v1, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/AtomicValue;-><init>()V

    .line 2
    invoke-static {p1}, Lnet/sf/saxon/value/Base64BinaryValue;->decode(Lnet/sf/saxon/str/UnicodeString;)[B

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/value/Base64BinaryValue;->e:[B

    .line 3
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->BASE64_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/value/AtomicValue;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/value/Base64BinaryValue;->e:[B

    .line 6
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->BASE64_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public static a(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x80

    const/4 v1, -0x1

    if-ge p0, v0, :cond_0

    sget-object v0, Lnet/sf/saxon/value/Base64BinaryValue;->h:[I

    aget v0, v0, p0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' in base64 value"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FORG0001"

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayHashCode([B)I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    const/16 v4, 0x40

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    shl-long/2addr v0, v3

    aget-byte v3, p0, v2

    int-to-long v3, v3

    xor-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x20

    shr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static decode(Lnet/sf/saxon/str/UnicodeString;)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [I

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_0
    int-to-long v11, v5

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v13

    cmp-long v13, v11, v13

    const-string v14, "FORG0001"

    if-gez v13, :cond_f

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v11, v12}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v11

    invoke-static {v11}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v12

    if-nez v12, :cond_c

    add-int/lit8 v6, v6, 0x1

    const/16 v12, 0x3d

    const/4 v13, 0x2

    const/4 v15, 0x1

    if-ne v11, v12, :cond_a

    move-object/from16 v16, v2

    move v9, v15

    :goto_1
    int-to-long v1, v5

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v17

    cmp-long v11, v1, v17

    if-gez v11, :cond_2

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v1

    if-ne v1, v12, :cond_0

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Base64 padding character \'=\' is followed by non-padding characters"

    invoke-direct {v0, v1, v14}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ne v9, v15, :cond_4

    const-string v1, "AEIMQUYcgkosw048"

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In base64, if the value ends with a single \'=\' character, then the preceding character must be one of [AEIMQUYcgkosw048]"

    invoke-direct {v0, v1, v14}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    if-ne v9, v13, :cond_6

    const-string v1, "AQgw"

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "In base64, if the value ends with \'==\', then the preceding character must be one of [AQgw]"

    invoke-direct {v0, v1, v14}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    if-gt v9, v13, :cond_9

    rsub-int/lit8 v1, v8, 0x4

    const/4 v2, 0x4

    rem-int/2addr v1, v2

    if-ne v9, v1, :cond_8

    move v1, v4

    :goto_5
    if-ge v1, v9, :cond_7

    add-int/lit8 v2, v8, 0x1

    const/16 v5, 0x41

    aput v5, v16, v8

    add-int/lit8 v1, v1, 0x1

    move v8, v2

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v5

    goto :goto_6

    :cond_8
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \'=\' characters at end of base64 value; found "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v14}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \'=\' characters at end of base64 value; max is 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v14}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v16, v2

    int-to-char v1, v11

    add-int/lit8 v2, v8, 0x1

    aput v11, v16, v8

    move v10, v1

    move v8, v2

    :goto_6
    const/4 v1, 0x4

    if-ne v8, v1, :cond_d

    aget v1, v16, v4

    invoke-static {v1}, Lnet/sf/saxon/value/Base64BinaryValue;->a(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x12

    aget v2, v16, v15

    invoke-static {v2}, Lnet/sf/saxon/value/Base64BinaryValue;->a(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    aget v2, v16, v13

    invoke-static {v2}, Lnet/sf/saxon/value/Base64BinaryValue;->a(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x6

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget v2, v16, v2

    invoke-static {v2}, Lnet/sf/saxon/value/Base64BinaryValue;->a(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v7, 0x3

    array-length v8, v3

    if-le v2, v8, :cond_b

    mul-int/lit8 v2, v7, 0x2

    new-array v2, v2, [B

    invoke-static {v3, v4, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    :cond_b
    add-int/lit8 v2, v7, 0x1

    shr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v2, 0x1

    shr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    add-int/lit8 v2, v7, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v3, v7

    move v7, v2

    move v8, v4

    goto :goto_7

    :cond_c
    move-object/from16 v16, v2

    :cond_d
    :goto_7
    int-to-long v1, v5

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v11

    cmp-long v1, v1, v11

    if-ltz v1, :cond_e

    sub-int/2addr v7, v9

    const/4 v0, 0x4

    goto :goto_8

    :cond_e
    move-object/from16 v2, v16

    const/4 v1, 0x4

    goto/16 :goto_0

    :cond_f
    move v0, v1

    :goto_8
    rem-int/2addr v6, v0

    if-nez v6, :cond_10

    new-array v0, v7, [B

    invoke-static {v3, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_10
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Length of base64 value must be a multiple of four"

    invoke-direct {v0, v1, v14}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static encode([B)Lnet/sf/saxon/str/UnicodeString;
    .locals 7

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    array-length v1, p0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    sget-object v5, Lnet/sf/saxon/value/Base64BinaryValue;->g:[I

    shr-int/lit8 v6, v4, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget v6, v5, v6

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    shr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget v6, v5, v6

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    shr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget v6, v5, v6

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    and-int/lit8 v4, v4, 0x3f

    aget v4, v5, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_0
    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    add-int/2addr v1, v4

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v2

    add-int/2addr v3, p0

    sget-object p0, Lnet/sf/saxon/value/Base64BinaryValue;->g:[I

    shr-int/lit8 v1, v3, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget v1, p0, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    shr-int/lit8 v1, v3, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget v1, p0, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    and-int/lit8 v1, v3, 0x3f

    aget p0, p0, v1

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_2
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x4

    sget-object v1, Lnet/sf/saxon/value/Base64BinaryValue;->g:[I

    shr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget v2, v1, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    and-int/lit8 p0, p0, 0x3f

    aget p0, v1, p0

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    const-string p0, "=="

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->appendLatin(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeBuilder;

    :goto_1
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/Base64BinaryValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 6

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/Base64BinaryValue;

    if-eqz v0, :cond_3

    .line 3
    check-cast p1, Lnet/sf/saxon/value/Base64BinaryValue;

    iget-object p1, p1, Lnet/sf/saxon/value/Base64BinaryValue;->e:[B

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/value/Base64BinaryValue;->e:[B

    array-length v0, v0

    .line 5
    array-length v1, p1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 7
    iget-object v4, p0, Lnet/sf/saxon/value/Base64BinaryValue;->e:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    .line 8
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    if-eq v4, v5, :cond_1

    if-ge v4, v5, :cond_0

    const/4 p0, -0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v1

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare xs:base64Binary to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/Base64BinaryValue;

    iget-object p0, p0, Lnet/sf/saxon/value/Base64BinaryValue;->e:[B

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/Base64BinaryValue;-><init>([B)V

    iput-object p1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/Base64BinaryValue;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/Base64BinaryValue;->e:[B

    check-cast p1, Lnet/sf/saxon/value/Base64BinaryValue;

    iget-object p1, p1, Lnet/sf/saxon/value/Base64BinaryValue;->e:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBinaryValue()[B
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/Base64BinaryValue;->e:[B

    return-object p0
.end method

.method public getLengthInOctets()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/Base64BinaryValue;->e:[B

    array-length p0, p0

    return p0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/Base64BinaryValue;->e:[B

    invoke-static {p0}, Lnet/sf/saxon/value/Base64BinaryValue;->encode([B)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->BASE64_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getXPathComparable()Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation

    .line 2
    return-object p0
.end method

.method public getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/Base64BinaryValue;->e:[B

    invoke-static {p0}, Lnet/sf/saxon/value/Base64BinaryValue;->byteArrayHashCode([B)I

    move-result p0

    return p0
.end method
