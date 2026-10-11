.class public Lnet/sf/saxon/str/StringTool;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendRepeated(Ljava/lang/StringBuilder;CI)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/StringTool$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/StringTool$a;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static compress([CIIZ)Lnet/sf/saxon/str/UnicodeString;
    .locals 8

    if-nez p2, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    add-int v0, p1, p2

    const/16 v1, 0xff

    const/4 v2, 0x0

    move v3, p1

    move v4, v1

    move v5, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-char v6, p0, v3

    or-int/2addr v4, v6

    if-eqz p3, :cond_1

    invoke-static {v6}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v7

    if-nez v7, :cond_1

    move p3, v2

    :cond_1
    invoke-static {v6}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/str/CompressedWhitespace;->compressWS([CII)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 p3, 0x100

    if-ge v4, p3, :cond_6

    new-array p2, p2, [B

    :goto_1
    if-ge p1, v0, :cond_5

    add-int/lit8 p3, v2, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-char p1, p0, p1

    int-to-byte p1, p1

    aput-byte p1, p2, v2

    move v2, p3

    move p1, v1

    goto :goto_1

    :cond_5
    new-instance p0, Lnet/sf/saxon/str/Twine8;

    invoke-direct {p0, p2}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    return-object p0

    :cond_6
    if-nez v5, :cond_7

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/str/Twine16;

    invoke-direct {p1, p0}, Lnet/sf/saxon/str/Twine16;-><init>([C)V

    return-object p1

    :cond_7
    div-int/lit8 v5, v5, 0x2

    sub-int/2addr p2, v5

    mul-int/lit8 p2, p2, 0x3

    new-array p2, p2, [B

    move p3, v2

    :goto_2
    if-ge p1, v0, :cond_9

    add-int/lit8 v3, p1, 0x1

    aget-char p1, p0, p1

    invoke-static {p1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isSurrogate(I)Z

    move-result v4

    const v5, 0xffff

    if-eqz v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    aget-char v3, p0, v3

    invoke-static {p1, v3}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->combinePair(CC)I

    move-result p1

    add-int/lit8 v3, p3, 0x1

    const v6, 0xffffff

    and-int/2addr v6, p1

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, p2, p3

    add-int/lit8 p3, v3, 0x1

    and-int/2addr v5, p1

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, p2, v3

    add-int/lit8 v3, p3, 0x1

    and-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    move p3, v3

    move p1, v4

    goto :goto_2

    :cond_8
    add-int/lit8 v4, p3, 0x1

    aput-byte v2, p2, p3

    add-int/lit8 p3, v4, 0x1

    and-int/2addr v5, p1

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    add-int/lit8 v4, p3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    move p1, v3

    move p3, v4

    goto :goto_2

    :cond_9
    new-instance p0, Lnet/sf/saxon/str/Twine24;

    invoke-direct {p0, p2}, Lnet/sf/saxon/str/Twine24;-><init>([B)V

    return-object p0
.end method

.method public static containsSurrogates(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static copy16to24([CI[BII)V
    .locals 3

    add-int/2addr p4, p1

    mul-int/lit8 p3, p3, 0x3

    :goto_0
    if-ge p1, p4, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-char p1, p0, p1

    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    aput-byte v2, p2, p3

    add-int/lit8 p3, v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, p3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    move p1, v0

    move p3, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copy8to16([BI[CII)V
    .locals 2

    add-int/2addr p4, p1

    :goto_0
    if-ge p1, p4, :cond_0

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    aput-char p1, p2, p3

    move p3, v0

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copy8to24([BI[BII)V
    .locals 2

    add-int/2addr p4, p1

    mul-int/lit8 p3, p3, 0x3

    :goto_0
    if-ge p1, p4, :cond_0

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p0, p1

    aput-byte p1, p2, p3

    move p3, v0

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static diagnosticDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v4, "\\u"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    :goto_1
    if-ltz v4, :cond_1

    shr-int v5, v3, v4

    and-int/lit8 v5, v5, 0xf

    const-string v6, "0123456789ABCDEF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x4

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static expand(Lnet/sf/saxon/str/UnicodeString;)[I
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v3

    aput v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fromCharSequence(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-static {p0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static fromCodePoints([II)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v2, p0, v1

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static fromLatin1(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/str/Twine8;

    invoke-direct {p0, v0}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    return-object p0
.end method

.method public static getStringLength(Ljava/lang/CharSequence;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0xd800

    if-lt v2, v3, :cond_0

    const v3, 0xdbff

    if-le v2, v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static lastCodePoint(Lnet/sf/saxon/str/UnicodeString;)I
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf(Lnet/sf/saxon/str/UnicodeString;I)J
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    :cond_0
    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    if-ne v4, p1, :cond_0

    return-wide v0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static prependRepeated(Ljava/lang/StringBuilder;CI)V
    .locals 0

    new-array p2, p2, [C

    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([CC)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static prependWideChar(Ljava/lang/StringBuilder;I)V
    .locals 3

    const v0, 0xffff

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [C

    invoke-static {p1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->highSurrogate(I)C

    move-result v2

    aput-char v2, v0, v1

    const/4 v2, 0x1

    invoke-static {p1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->lowSurrogate(I)C

    move-result p1

    aput-char p1, v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    int-to-char p1, p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static requireInt(J)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    long-to-int p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "String exceeds 2^31 characters"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
