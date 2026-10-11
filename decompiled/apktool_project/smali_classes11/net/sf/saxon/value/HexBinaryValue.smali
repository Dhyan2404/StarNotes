.class public Lnet/sf/saxon/value/HexBinaryValue;
.super Lnet/sf/saxon/value/AtomicValue;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicMatchKey;
.implements Lnet/sf/saxon/expr/sort/XPathComparable;
.implements Lnet/sf/saxon/value/ContextFreeAtomicValue;


# instance fields
.field public final e:[B


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/AtomicValue;-><init>()V

    .line 2
    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    .line 4
    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    int-to-long v3, v2

    .line 6
    invoke-virtual {p1, v3, v4}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/value/HexBinaryValue;->a(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    .line 7
    invoke-virtual {p1, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/value/HexBinaryValue;->a(I)I

    move-result v2

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->HEX_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void

    .line 9
    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "A hexBinary value must contain an even number of characters"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FORG0001"

    .line 10
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 11
    throw p0
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lnet/sf/saxon/value/AtomicValue;-><init>()V

    .line 13
    iput-object p1, p0, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

    .line 14
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->HEX_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 p0, 0xff

    if-ge p1, p0, :cond_0

    const-string p0, "0123456789ABCDEFabcdef"

    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    const/16 v0, 0xf

    if-le p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x6

    :cond_1
    if-ltz p0, :cond_2

    return p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid hexadecimal digit \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FORG0001"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/HexBinaryValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 6

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/HexBinaryValue;

    if-eqz v0, :cond_3

    .line 3
    check-cast p1, Lnet/sf/saxon/value/HexBinaryValue;

    iget-object p1, p1, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

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
    iget-object v4, p0, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

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

    const-string v1, "Cannot compare xs:hexBinary to "

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

    new-instance v0, Lnet/sf/saxon/value/HexBinaryValue;

    iget-object p0, p0, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/HexBinaryValue;-><init>([B)V

    iput-object p1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/HexBinaryValue;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

    check-cast p1, Lnet/sf/saxon/value/HexBinaryValue;

    iget-object p1, p1, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

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

    iget-object p0, p0, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

    return-object p0
.end method

.method public getLengthInOctets()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

    array-length p0, p0

    return p0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 6

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    iget-object v1, p0, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    iget-object p0, p0, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->HEX_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getXPathComparable()Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0

    .line 2
    return-object p0
.end method

.method public getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/HexBinaryValue;->e:[B

    invoke-static {p0}, Lnet/sf/saxon/value/Base64BinaryValue;->byteArrayHashCode([B)I

    move-result p0

    return p0
.end method
