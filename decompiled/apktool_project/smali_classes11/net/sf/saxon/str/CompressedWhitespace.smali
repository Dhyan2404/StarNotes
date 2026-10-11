.class public Lnet/sf/saxon/str/CompressedWhitespace;
.super Lnet/sf/saxon/str/WhitespaceString;
.source "SourceFile"


# static fields
.field public static final f:[C

.field public static final g:[I

.field public static final synthetic h:Z


# instance fields
.field public final e:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sf/saxon/str/CompressedWhitespace;->f:[C

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnet/sf/saxon/str/CompressedWhitespace;->g:[I

    return-void

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0x20s
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        -0x1
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/str/WhitespaceString;-><init>()V

    iput-wide p1, p0, Lnet/sf/saxon/str/CompressedWhitespace;->e:J

    return-void
.end method

.method public static compressWS([CII)Lnet/sf/saxon/str/UnicodeString;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v4, v0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v5, 0x3f

    const/16 v6, 0x8

    if-ge v2, p2, :cond_4

    aget-char v7, p0, v2

    const/16 v8, 0x20

    if-gt v7, v8, :cond_3

    sget-object v8, Lnet/sf/saxon/str/CompressedWhitespace;->g:[I

    aget v8, v8, v7

    if-ltz v8, :cond_3

    add-int/lit8 v8, p2, -0x1

    if-eq v2, v8, :cond_1

    add-int/lit8 v8, v2, 0x1

    aget-char v8, p0, v8

    if-ne v7, v8, :cond_1

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    if-le v3, v6, :cond_2

    invoke-static {p0, p1, p2, v1}, Lnet/sf/saxon/str/StringTool;->compress([CIIZ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_2
    move v4, v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2, v1}, Lnet/sf/saxon/str/StringTool;->compress([CIIZ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_4
    new-array p1, v3, [I

    move v4, v0

    move v2, v1

    move v7, v2

    :goto_3
    if-ge v2, p2, :cond_7

    aget-char v8, p0, v2

    add-int/lit8 v9, p2, -0x1

    if-eq v2, v9, :cond_6

    add-int/lit8 v9, v2, 0x1

    aget-char v9, p0, v9

    if-ne v8, v9, :cond_6

    if-ne v4, v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    :goto_4
    add-int/lit8 v9, v7, 0x1

    sget-object v10, Lnet/sf/saxon/str/CompressedWhitespace;->g:[I

    aget v8, v10, v8

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v4, v8

    aput v4, p1, v7

    move v4, v0

    move v7, v9

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    const-wide/16 v4, 0x0

    :goto_6
    if-ge v1, v3, :cond_8

    shl-long/2addr v4, v6

    aget p0, p1, v1

    int-to-long v7, p0

    or-long/2addr v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    rsub-int/lit8 p0, v3, 0x8

    mul-int/2addr p0, v6

    shl-long p0, v4, p0

    new-instance p2, Lnet/sf/saxon/str/CompressedWhitespace;

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/str/CompressedWhitespace;-><init>(J)V

    return-object p2
.end method

.method public static length(J)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0x38

    :goto_0
    if-ltz v1, :cond_1

    shr-long v2, p0, v1

    const-wide/16 v4, 0x3f

    and-long/2addr v2, v4

    long-to-int v2, v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static uncompress(J)Lnet/sf/saxon/str/UnicodeString;
    .locals 8

    const/16 v0, 0x3e8

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x38

    move v3, v1

    :goto_0
    if-ltz v2, :cond_2

    shr-long v4, p0, v2

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    sget-object v5, Lnet/sf/saxon/str/CompressedWhitespace;->f:[C

    shr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3

    aget-char v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    and-int/lit8 v4, v4, 0x3f

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_1

    add-int/lit8 v7, v3, 0x1

    .line 3
    aput-byte v5, v0, v3

    add-int/lit8 v6, v6, 0x1

    move v3, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 4
    :cond_2
    :goto_2
    new-instance p0, Lnet/sf/saxon/str/Twine8;

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public codePointAt(J)I
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x38

    :goto_0
    if-ltz v1, :cond_1

    iget-wide v2, p0, Lnet/sf/saxon/str/CompressedWhitespace;->e:J

    shr-long/2addr v2, v1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    if-eqz v2, :cond_1

    and-int/lit8 v3, v2, 0x3f

    add-int/2addr v0, v3

    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-lez v3, :cond_0

    sget-object p0, Lnet/sf/saxon/str/CompressedWhitespace;->f:[C

    shr-int/lit8 p1, v2, 0x6

    and-int/lit8 p1, p1, 0x3

    aget-char p0, p0, p1

    return p0

    :cond_0
    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public codePoints()Lnet/sf/saxon/z/IntIterator;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/CompressedWhitespace;->uncompress()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/str/CompressedWhitespace;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lnet/sf/saxon/str/CompressedWhitespace;->e:J

    check-cast p1, Lnet/sf/saxon/str/CompressedWhitespace;

    iget-wide p0, p1, Lnet/sf/saxon/str/CompressedWhitespace;->e:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/str/CompressedWhitespace;->uncompress()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCompressedValue()J
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/str/CompressedWhitespace;->e:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Lnet/sf/saxon/str/UnicodeString;->hashCode()I

    move-result p0

    return p0
.end method

.method public length()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lnet/sf/saxon/str/CompressedWhitespace;->e:J

    invoke-static {v0, v1}, Lnet/sf/saxon/str/CompressedWhitespace;->length(J)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public length32()I
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/str/CompressedWhitespace;->e:J

    invoke-static {v0, v1}, Lnet/sf/saxon/str/CompressedWhitespace;->length(J)I

    move-result p0

    return p0
.end method

.method public uncompress()Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/sf/saxon/str/CompressedWhitespace;->e:J

    invoke-static {v0, v1}, Lnet/sf/saxon/str/CompressedWhitespace;->uncompress(J)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public write(Lnet/sf/saxon/str/UnicodeWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x38

    :goto_0
    if-ltz v0, :cond_1

    iget-wide v1, p0, Lnet/sf/saxon/str/CompressedWhitespace;->e:J

    shr-long/2addr v1, v0

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lnet/sf/saxon/str/CompressedWhitespace;->f:[C

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3

    aget-char v2, v2, v3

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v2, v2

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeRepeatedAscii(BI)V

    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public writeEscape([ZLnet/sf/saxon/str/UnicodeWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x38

    :goto_0
    if-ltz v0, :cond_6

    iget-wide v1, p0, Lnet/sf/saxon/str/CompressedWhitespace;->e:J

    shr-long/2addr v1, v0

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    sget-object v2, Lnet/sf/saxon/str/CompressedWhitespace;->f:[C

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3

    aget-char v2, v2, v3

    and-int/lit8 v1, v1, 0x3f

    aget-boolean v3, p1, v2

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    sget-object v2, Lnet/sf/saxon/str/StringConstants;->ESCAPE_NL:[B

    goto :goto_1

    :cond_1
    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    sget-object v2, Lnet/sf/saxon/str/StringConstants;->ESCAPE_CR:[B

    goto :goto_1

    :cond_2
    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    sget-object v2, Lnet/sf/saxon/str/StringConstants;->ESCAPE_TAB:[B

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    invoke-interface {p2, v2}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    int-to-byte v2, v2

    invoke-interface {p2, v2, v1}, Lnet/sf/saxon/str/UnicodeWriter;->writeRepeatedAscii(BI)V

    :cond_5
    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method
