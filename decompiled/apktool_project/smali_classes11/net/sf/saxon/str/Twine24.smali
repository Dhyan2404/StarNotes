.class public Lnet/sf/saxon/str/Twine24;
.super Lnet/sf/saxon/str/UnicodeString;
.source "SourceFile"


# instance fields
.field protected bytes:[B

.field protected cachedHash:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/sf/saxon/str/Twine24;->cachedHash:I

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 11
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/str/Twine24;-><init>([II)V

    return-void
.end method

.method public constructor <init>([II)V
    .locals 6

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnet/sf/saxon/str/Twine24;->cachedHash:I

    mul-int/lit8 v1, p2, 0x3

    .line 6
    new-array v1, v1, [B

    iput-object v1, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 7
    aget v2, p1, v0

    .line 8
    iget-object v3, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 9
    aput-byte v5, v3, v4

    add-int/lit8 v4, v1, 0x2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 10
    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public b([BI)V
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public codePointAt(J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    invoke-static {p1, p2}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine24;->length32()I

    move-result p2

    if-ge p1, p2, :cond_0

    mul-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    aget-byte p2, p0, p1

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x2

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p2

    const p1, 0xffffff

    and-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public codePoints()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/Twine24$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/Twine24$a;-><init>(Lnet/sf/saxon/str/Twine24;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/Twine24;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/str/UnicodeString;)I
    .locals 4

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/str/Twine24;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lnet/sf/saxon/str/Twine24;

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    .line 5
    iget-object p1, p1, Lnet/sf/saxon/str/Twine24;->bytes:[B

    .line 6
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v2, v3

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    array-length p0, p0

    array-length p1, p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 9
    :cond_2
    invoke-super {p0, p1}, Lnet/sf/saxon/str/UnicodeString;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public details()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Twine24 bytes.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/str/Twine24;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine24;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    check-cast p1, Lnet/sf/saxon/str/Twine24;

    iget-object p1, p1, Lnet/sf/saxon/str/Twine24;->bytes:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getByteArray()[B
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lnet/sf/saxon/str/Twine24;->cachedHash:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    aget-byte v4, v3, v1

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x2

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    const v4, 0xffffff

    and-int/2addr v3, v4

    const/high16 v4, 0xff0000

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    invoke-static {v3}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->highSurrogate(I)C

    move-result v4

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x1f

    invoke-static {v3}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->lowSurrogate(I)C

    move-result v3

    goto :goto_1

    :cond_1
    mul-int/lit8 v2, v2, 0x1f

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_2
    iput v2, p0, Lnet/sf/saxon/str/Twine24;->cachedHash:I

    return v2
.end method

.method public indexOf(IJ)J
    .locals 6

    .line 1
    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine24;->length32()I

    move-result p3

    const-wide/16 v0, -0x1

    if-lt p2, p3, :cond_0

    return-wide v0

    .line 3
    :cond_0
    iget-object p3, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    array-length p3, p3

    if-ltz p1, :cond_3

    const v2, 0xffffff

    if-le p1, v2, :cond_1

    goto :goto_1

    :cond_1
    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    mul-int/lit8 p2, p2, 0x3

    :goto_0
    if-ge p2, p3, :cond_3

    .line 4
    iget-object v4, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, v4, v5

    if-ne v5, p1, :cond_2

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, v4, v5

    if-ne v5, v3, :cond_2

    aget-byte v4, v4, p2

    if-ne v4, v2, :cond_2

    .line 5
    div-int/lit8 p2, p2, 0x3

    int-to-long p0, p2

    return-wide p0

    :cond_2
    add-int/lit8 p2, p2, 0x3

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public indexOf(Lnet/sf/saxon/str/UnicodeString;J)J
    .locals 6

    .line 6
    invoke-static {p2, p3}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result v0

    const-wide/16 v1, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine24;->length32()I

    move-result v3

    if-lt v0, v3, :cond_1

    return-wide v1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-wide p2

    :cond_2
    const-wide/16 p2, 0x0

    .line 9
    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p2

    .line 10
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result p3

    .line 11
    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine24;->length32()I

    move-result v3

    sub-int/2addr v3, p3

    :goto_1
    if-gt v0, v3, :cond_5

    int-to-long v4, v0

    .line 12
    invoke-virtual {p0, p2, v4, v5}, Lnet/sf/saxon/str/Twine24;->indexOf(IJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result p3

    if-gez p3, :cond_3

    return-wide v1

    :cond_3
    int-to-long v4, p3

    .line 13
    invoke-virtual {p0, p1, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->hasSubstring(Lnet/sf/saxon/str/UnicodeString;J)Z

    move-result v0

    if-eqz v0, :cond_4

    return-wide v4

    :cond_4
    add-int/lit8 v0, p3, 0x1

    goto :goto_1

    :cond_5
    return-wide v1
.end method

.method public indexWhere(Ljava/util/function/IntPredicate;J)J
    .locals 5

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    :goto_0
    int-to-long v0, p2

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine24;->length()J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p2, 0x3

    iget-object v2, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    aget-byte v3, v2, p3

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, p3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 p3, p3, 0x2

    aget-byte p3, v2, p3

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p3, v3

    const v2, 0xffffff

    and-int/2addr p3, v2

    invoke-interface {p1, p3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p3

    if-eqz p3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public length()J
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    array-length p0, p0

    div-int/lit8 p0, p0, 0x3

    int-to-long v0, p0

    return-wide v0
.end method

.method public length32()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    array-length p0, p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public substring(JJ)Lnet/sf/saxon/str/UnicodeString;
    .locals 5

    invoke-static {p1, p2}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result v0

    invoke-static {p3, p4}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result v1

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine24;->length32()I

    move-result v2

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/str/UnicodeString;->checkSubstringBounds(JJ)V

    cmp-long v3, p3, p1

    if-nez v3, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-nez p1, :cond_1

    int-to-long p1, v2

    cmp-long p1, p3, p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance p1, Lnet/sf/saxon/str/Slice24;

    iget-object p0, p0, Lnet/sf/saxon/str/Twine24;->bytes:[B

    invoke-direct {p1, p0, v0, v1}, Lnet/sf/saxon/str/Slice24;-><init>([BII)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine24;->length32()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine24;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
