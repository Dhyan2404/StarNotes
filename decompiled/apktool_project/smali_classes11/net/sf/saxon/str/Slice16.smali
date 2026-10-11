.class public Lnet/sf/saxon/str/Slice16;
.super Lnet/sf/saxon/str/UnicodeString;
.source "SourceFile"


# instance fields
.field public e:[C

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/str/Slice16;->e:[C

    iput p2, p0, Lnet/sf/saxon/str/Slice16;->f:I

    iput p3, p0, Lnet/sf/saxon/str/Slice16;->g:I

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/str/Slice16;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/Slice16;->f:I

    return p0
.end method

.method public static synthetic f(Lnet/sf/saxon/str/Slice16;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/Slice16;->g:I

    return p0
.end method

.method public static synthetic g(Lnet/sf/saxon/str/Slice16;)[C
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/Slice16;->e:[C

    return-object p0
.end method


# virtual methods
.method public a([CI)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/str/Slice16;->e:[C

    iget v1, p0, Lnet/sf/saxon/str/Slice16;->f:I

    iget p0, p0, Lnet/sf/saxon/str/Slice16;->g:I

    sub-int/2addr p0, v1

    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public b([BI)V
    .locals 4

    iget v0, p0, Lnet/sf/saxon/str/Slice16;->f:I

    :goto_0
    iget v1, p0, Lnet/sf/saxon/str/Slice16;->g:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/str/Slice16;->e:[C

    add-int/lit8 v2, v0, 0x1

    aget-char v0, v1, v0

    add-int/lit8 v1, p2, 0x1

    const/4 v3, 0x0

    aput-byte v3, p1, p2

    add-int/lit8 p2, v1, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    move p2, v1

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public codePointAt(J)I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/str/Slice16;->e:[C

    iget p0, p0, Lnet/sf/saxon/str/Slice16;->f:I

    invoke-static {p1, p2}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p1

    add-int/2addr p0, p1

    aget-char p0, v0, p0

    return p0
.end method

.method public codePoints()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/Slice16$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/Slice16$a;-><init>(Lnet/sf/saxon/str/Slice16;)V

    return-object v0
.end method

.method public getCharArray()[C
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/Slice16;->e:[C

    return-object p0
.end method

.method public getEnd()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/Slice16;->g:I

    return p0
.end method

.method public getStart()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/Slice16;->f:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public final h(Ljava/io/Writer;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/str/Slice16;->e:[C

    iget p0, p0, Lnet/sf/saxon/str/Slice16;->f:I

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    add-int/2addr p0, p2

    invoke-static {p4, p5}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    invoke-virtual {p1, v0, p0, p2}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lnet/sf/saxon/str/Slice16;->h:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/str/Slice16;->f:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/str/Slice16;->g:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/str/Slice16;->e:[C

    aget-char v2, v2, v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lnet/sf/saxon/str/Slice16;->h:I

    return v1
.end method

.method public indexOf(IJ)J
    .locals 4

    const-wide/16 v0, -0x1

    const v2, 0xffff

    if-le p1, v2, :cond_0

    return-wide v0

    :cond_0
    and-int/2addr p1, v2

    int-to-char p1, p1

    iget v2, p0, Lnet/sf/saxon/str/Slice16;->g:I

    iget v3, p0, Lnet/sf/saxon/str/Slice16;->f:I

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr v3, p2

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object p2, p0, Lnet/sf/saxon/str/Slice16;->e:[C

    aget-char p2, p2, v3

    if-ne p2, p1, :cond_1

    iget p0, p0, Lnet/sf/saxon/str/Slice16;->f:I

    sub-int/2addr v3, p0

    int-to-long p0, v3

    return-wide p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public indexWhere(Ljava/util/function/IntPredicate;J)J
    .locals 0

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    iget p3, p0, Lnet/sf/saxon/str/Slice16;->f:I

    add-int/2addr p2, p3

    :goto_0
    iget p3, p0, Lnet/sf/saxon/str/Slice16;->g:I

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lnet/sf/saxon/str/Slice16;->e:[C

    aget-char p3, p3, p2

    invoke-interface {p1, p3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget p0, p0, Lnet/sf/saxon/str/Slice16;->f:I

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

    iget v0, p0, Lnet/sf/saxon/str/Slice16;->g:I

    iget p0, p0, Lnet/sf/saxon/str/Slice16;->f:I

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
    new-instance v0, Lnet/sf/saxon/str/Slice16;

    iget-object v1, p0, Lnet/sf/saxon/str/Slice16;->e:[C

    invoke-static {p1, p2}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p1

    iget p2, p0, Lnet/sf/saxon/str/Slice16;->f:I

    add-int/2addr p1, p2

    invoke-static {p3, p4}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    iget p0, p0, Lnet/sf/saxon/str/Slice16;->f:I

    add-int/2addr p2, p0

    invoke-direct {v0, v1, p1, p2}, Lnet/sf/saxon/str/Slice16;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/str/Slice16;->e:[C

    iget v2, p0, Lnet/sf/saxon/str/Slice16;->f:I

    iget p0, p0, Lnet/sf/saxon/str/Slice16;->g:I

    sub-int/2addr p0, v2

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
