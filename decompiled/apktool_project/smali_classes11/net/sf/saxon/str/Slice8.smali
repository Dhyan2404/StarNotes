.class public Lnet/sf/saxon/str/Slice8;
.super Lnet/sf/saxon/str/UnicodeString;
.source "SourceFile"


# instance fields
.field public final e:[B

.field public final f:I

.field public final g:I

.field public h:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    iput p2, p0, Lnet/sf/saxon/str/Slice8;->f:I

    iput p3, p0, Lnet/sf/saxon/str/Slice8;->g:I

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/str/Slice8;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/Slice8;->f:I

    return p0
.end method

.method public static synthetic f(Lnet/sf/saxon/str/Slice8;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/Slice8;->g:I

    return p0
.end method

.method public static synthetic g(Lnet/sf/saxon/str/Slice8;)[B
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    return-object p0
.end method


# virtual methods
.method public a([CI)V
    .locals 4

    iget v0, p0, Lnet/sf/saxon/str/Slice8;->f:I

    :goto_0
    iget v1, p0, Lnet/sf/saxon/str/Slice8;->g:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    aput-char v0, p1, p2

    move p2, v1

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b([BI)V
    .locals 4

    iget v0, p0, Lnet/sf/saxon/str/Slice8;->f:I

    :goto_0
    iget v1, p0, Lnet/sf/saxon/str/Slice8;->g:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    aput-byte v2, p1, p2

    add-int/lit8 p2, v1, 0x1

    aput-byte v2, p1, v1

    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    aput-byte v0, p1, p2

    move p2, v1

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c([BI)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    iget v1, p0, Lnet/sf/saxon/str/Slice8;->f:I

    iget p0, p0, Lnet/sf/saxon/str/Slice8;->g:I

    sub-int/2addr p0, v1

    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public codePointAt(J)I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    iget p0, p0, Lnet/sf/saxon/str/Slice8;->f:I

    invoke-static {p1, p2}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p1

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public codePoints()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/Slice8$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/Slice8$a;-><init>(Lnet/sf/saxon/str/Slice8;)V

    return-object v0
.end method

.method public getByteArray()[B
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    return-object p0
.end method

.method public getEnd()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/Slice8;->g:I

    return p0
.end method

.method public getStart()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/Slice8;->f:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final h(Ljava/io/Writer;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/serialize/UTF8Writer;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/serialize/UTF8Writer;

    iget-object v0, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    iget p0, p0, Lnet/sf/saxon/str/Slice8;->f:I

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    add-int/2addr p0, p2

    invoke-static {p4, p5}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    invoke-virtual {p1, v0, p0, p2}, Lnet/sf/saxon/serialize/UTF8Writer;->writeLatin1([BII)V

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p2, p4

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p0, v0, v1, p2, p3}, Lnet/sf/saxon/str/Slice8;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lnet/sf/saxon/str/Slice8;->h:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/str/Slice8;->f:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/str/Slice8;->g:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    aget-byte v2, v2, v0

    mul-int/lit8 v1, v1, 0x1f

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lnet/sf/saxon/str/Slice8;->h:I

    return v1
.end method

.method public indexOf(IJ)J
    .locals 3

    const-wide/16 v0, -0x1

    const/16 v2, 0xff

    if-le p1, v2, :cond_0

    return-wide v0

    :cond_0
    and-int/2addr p1, v2

    int-to-byte p1, p1

    iget v2, p0, Lnet/sf/saxon/str/Slice8;->f:I

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    add-int/2addr v2, p2

    :goto_0
    iget p2, p0, Lnet/sf/saxon/str/Slice8;->g:I

    if-ge v2, p2, :cond_2

    iget-object p2, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    aget-byte p2, p2, v2

    if-ne p2, p1, :cond_1

    iget p0, p0, Lnet/sf/saxon/str/Slice8;->f:I

    sub-int/2addr v2, p0

    int-to-long p0, v2

    return-wide p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public indexWhere(Ljava/util/function/IntPredicate;J)J
    .locals 0

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    iget p3, p0, Lnet/sf/saxon/str/Slice8;->f:I

    add-int/2addr p2, p3

    :goto_0
    iget p3, p0, Lnet/sf/saxon/str/Slice8;->g:I

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    aget-byte p3, p3, p2

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p1, p3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget p0, p0, Lnet/sf/saxon/str/Slice8;->f:I

    sub-int/2addr p2, p0

    int-to-long p0, p2

    return-wide p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public length()J
    .locals 2

    iget v0, p0, Lnet/sf/saxon/str/Slice8;->g:I

    iget p0, p0, Lnet/sf/saxon/str/Slice8;->f:I

    sub-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public substring(JJ)Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/str/UnicodeString;->checkSubstringBounds(JJ)V

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/str/Slice8;

    iget-object v1, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    invoke-static {p1, p2}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p1

    iget p2, p0, Lnet/sf/saxon/str/Slice8;->f:I

    add-int/2addr p1, p2

    invoke-static {p3, p4}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    iget p0, p0, Lnet/sf/saxon/str/Slice8;->f:I

    add-int/2addr p2, p0

    invoke-direct {v0, v1, p1, p2}, Lnet/sf/saxon/str/Slice8;-><init>([BII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/str/Slice8;->e:[B

    iget v2, p0, Lnet/sf/saxon/str/Slice8;->f:I

    iget p0, p0, Lnet/sf/saxon/str/Slice8;->g:I

    sub-int/2addr p0, v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method
