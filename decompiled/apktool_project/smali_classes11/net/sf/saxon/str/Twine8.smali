.class public Lnet/sf/saxon/str/Twine8;
.super Lnet/sf/saxon/str/UnicodeString;
.source "SourceFile"


# instance fields
.field protected bytes:[B

.field protected cachedHash:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lnet/sf/saxon/str/Twine8;->cachedHash:I

    .line 13
    invoke-static {p1}, Lnet/sf/saxon/str/Twine8;->e(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/sf/saxon/str/Twine8;->cachedHash:I

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnet/sf/saxon/str/Twine8;->cachedHash:I

    .line 6
    new-array v0, p3, [B

    iput-object v0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    :goto_0
    if-ge p2, p3, :cond_2

    .line 7
    aget-char v0, p1, p2

    .line 8
    invoke-static {}, Lnet/sf/saxon/Configuration;->isAssertionsEnabled()Z

    move-result v1

    const/16 v2, 0xff

    if-eqz v1, :cond_1

    if-gt v0, v2, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 10
    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    aget-char v1, p1, p2

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a([CI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    aput-char v0, p1, p2

    move p2, v2

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b([BI)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, p2, 0x1

    aput-byte v0, p1, p2

    add-int/lit8 p2, v3, 0x1

    aput-byte v0, p1, v3

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v2, v1

    aput-byte v1, p1, p2

    move p2, v3

    move v1, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c([BI)V
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public codePointAt(J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    invoke-static {p1, p2}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine8;->length32()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public codePoints()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/Twine8$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/Twine8$a;-><init>(Lnet/sf/saxon/str/Twine8;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/Twine8;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/str/UnicodeString;)I
    .locals 4

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/str/Twine8;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lnet/sf/saxon/str/Twine8;

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    .line 5
    iget-object p1, p1, Lnet/sf/saxon/str/Twine8;->bytes:[B

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

    const-string v1, "Twine8 bytes.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/str/Twine8;

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/str/Twine8;

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine8;->length32()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/str/Twine8;->length32()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine8;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/str/Twine8;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    iget-object p1, p1, Lnet/sf/saxon/str/Twine8;->bytes:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2
    invoke-super {p0, p1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(Ljava/io/Writer;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/serialize/UTF8Writer;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/serialize/UTF8Writer;

    iget-object p0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    invoke-static {p4, p5}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p3

    invoke-virtual {p1, p0, p2, p3}, Lnet/sf/saxon/serialize/UTF8Writer;->writeLatin1([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine8;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result v0

    add-long/2addr p2, p4

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getByteArray()[B
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/str/Twine8;->cachedHash:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-super {p0}, Lnet/sf/saxon/str/UnicodeString;->hashCode()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/str/Twine8;->cachedHash:I

    return v0
.end method

.method public indexOf(IJ)J
    .locals 4

    .line 1
    invoke-static {p2, p3}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result p2

    const-wide/16 v0, -0x1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine8;->length32()I

    move-result p3

    if-lt p2, p3, :cond_1

    return-wide v0

    .line 3
    :cond_1
    :goto_0
    iget-object p3, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    array-length p3, p3

    if-ltz p1, :cond_4

    const/16 v2, 0xff

    if-le p1, v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    if-ge p2, p3, :cond_4

    .line 4
    iget-object v3, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    aget-byte v3, v3, p2

    and-int/2addr v3, v2

    if-ne v3, p1, :cond_3

    int-to-long p0, p2

    return-wide p0

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-wide v0
.end method

.method public indexOf(Lnet/sf/saxon/str/UnicodeString;J)J
    .locals 6

    .line 5
    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result v0

    const-wide/16 v1, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine8;->length32()I

    move-result v3

    if-lt v0, v3, :cond_1

    return-wide v1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-wide p2

    :cond_2
    const-wide/16 p2, 0x0

    .line 8
    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p2

    .line 9
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result p3

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine8;->length32()I

    move-result v3

    sub-int/2addr v3, p3

    :goto_1
    if-gt v0, v3, :cond_5

    int-to-long v4, v0

    .line 11
    invoke-virtual {p0, p2, v4, v5}, Lnet/sf/saxon/str/Twine8;->indexOf(IJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result p3

    if-gez p3, :cond_3

    return-wide v1

    :cond_3
    int-to-long v4, p3

    .line 12
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
    .locals 4

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    :goto_0
    int-to-long v0, p2

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine8;->length()J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-gez p3, :cond_1

    iget-object p3, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    aget-byte p3, p3, p2

    and-int/lit16 p3, p3, 0xff

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

    iget-object p0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

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

    iget-object p0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public length32()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    array-length p0, p0

    return p0
.end method

.method public substring(JJ)Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine8;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    cmp-long v3, p3, p1

    if-ltz v3, :cond_2

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    if-nez v3, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/str/Slice8;

    iget-object p0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    invoke-static {p1, p2}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p1

    invoke-static {p3, p4}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    invoke-direct {v0, p0, p1, p2}, Lnet/sf/saxon/str/Slice8;-><init>([BII)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/str/Twine8;->bytes:[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
