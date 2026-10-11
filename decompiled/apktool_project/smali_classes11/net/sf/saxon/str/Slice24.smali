.class public Lnet/sf/saxon/str/Slice24;
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

    iput-object p1, p0, Lnet/sf/saxon/str/Slice24;->e:[B

    iput p2, p0, Lnet/sf/saxon/str/Slice24;->f:I

    iput p3, p0, Lnet/sf/saxon/str/Slice24;->g:I

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/str/Slice24;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/Slice24;->f:I

    return p0
.end method

.method public static synthetic f(Lnet/sf/saxon/str/Slice24;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/Slice24;->g:I

    return p0
.end method

.method public static synthetic g(Lnet/sf/saxon/str/Slice24;)[B
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/Slice24;->e:[B

    return-object p0
.end method


# virtual methods
.method public b([BI)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/str/Slice24;->e:[B

    iget v1, p0, Lnet/sf/saxon/str/Slice24;->f:I

    mul-int/lit8 v2, v1, 0x3

    iget p0, p0, Lnet/sf/saxon/str/Slice24;->g:I

    sub-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x3

    invoke-static {v0, v2, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public codePointAt(J)I
    .locals 1

    invoke-static {p1, p2}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget p2, p0, Lnet/sf/saxon/str/Slice24;->f:I

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x3

    iget-object p0, p0, Lnet/sf/saxon/str/Slice24;->e:[B

    aget-byte p1, p0, p2

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x2

    aget-byte p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

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

    new-instance v0, Lnet/sf/saxon/str/Slice24$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/Slice24$a;-><init>(Lnet/sf/saxon/str/Slice24;)V

    return-object v0
.end method

.method public getWidth()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lnet/sf/saxon/str/Slice24;->h:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/str/Slice24;->f:I

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/str/Slice24;->g:I

    mul-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/str/Slice24;->e:[B

    aget-byte v3, v2, v0

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/high16 v3, 0xff0000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v2}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->highSurrogate(I)C

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v2}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->lowSurrogate(I)C

    move-result v2

    goto :goto_1

    :cond_1
    mul-int/lit8 v1, v1, 0x1f

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_2
    iput v1, p0, Lnet/sf/saxon/str/Slice24;->h:I

    return v1
.end method

.method public indexOf(IJ)J
    .locals 3

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iget v2, p0, Lnet/sf/saxon/str/Slice24;->f:I

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr v2, p2

    mul-int/lit8 v2, v2, 0x3

    :goto_0
    iget p2, p0, Lnet/sf/saxon/str/Slice24;->g:I

    mul-int/lit8 p2, p2, 0x3

    if-ge v2, p2, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/str/Slice24;->e:[B

    add-int/lit8 p3, v2, 0x2

    aget-byte p3, p2, p3

    if-ne p3, p1, :cond_0

    add-int/lit8 p3, v2, 0x1

    aget-byte p3, p2, p3

    if-ne p3, v1, :cond_0

    aget-byte p2, p2, v2

    if-ne p2, v0, :cond_0

    div-int/lit8 v2, v2, 0x3

    iget p0, p0, Lnet/sf/saxon/str/Slice24;->f:I

    sub-int/2addr v2, p0

    int-to-long p0, v2

    return-wide p0

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public indexWhere(Ljava/util/function/IntPredicate;J)J
    .locals 2

    iget v0, p0, Lnet/sf/saxon/str/Slice24;->f:I

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    add-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x3

    :goto_0
    iget p2, p0, Lnet/sf/saxon/str/Slice24;->g:I

    mul-int/lit8 p2, p2, 0x3

    if-ge v0, p2, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/str/Slice24;->e:[B

    aget-byte p3, p2, v0

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p3, v1

    add-int/lit8 v1, v0, 0x2

    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p2, p3

    const p3, 0xffffff

    and-int/2addr p2, p3

    invoke-interface {p1, p2}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p2

    if-eqz p2, :cond_0

    div-int/lit8 v0, v0, 0x3

    iget p0, p0, Lnet/sf/saxon/str/Slice24;->f:I

    sub-int/2addr v0, p0

    int-to-long p0, v0

    return-wide p0

    :cond_0
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public length()J
    .locals 2

    iget v0, p0, Lnet/sf/saxon/str/Slice24;->g:I

    iget p0, p0, Lnet/sf/saxon/str/Slice24;->f:I

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
    new-instance v0, Lnet/sf/saxon/str/Slice24;

    iget-object v1, p0, Lnet/sf/saxon/str/Slice24;->e:[B

    invoke-static {p1, p2}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p1

    iget p2, p0, Lnet/sf/saxon/str/Slice24;->f:I

    add-int/2addr p1, p2

    invoke-static {p3, p4}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    iget p0, p0, Lnet/sf/saxon/str/Slice24;->f:I

    add-int/2addr p2, p0

    invoke-direct {v0, v1, p1, p2}, Lnet/sf/saxon/str/Slice24;-><init>([BII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/str/Slice24;->codePoints()Lnet/sf/saxon/z/IntIterator;

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
