.class public final Lnet/sf/saxon/str/UnicodeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/str/UniStringConsumer;
.implements Lnet/sf/saxon/str/UnicodeWriter;


# instance fields
.field public e:[I

.field public f:I

.field public g:I

.field public h:Lnet/sf/saxon/str/ZenoString;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lnet/sf/saxon/str/ZenoString;->EMPTY:Lnet/sf/saxon/str/ZenoString;

    iput-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->h:Lnet/sf/saxon/str/ZenoString;

    .line 4
    new-array p1, p1, [I

    iput-object p1, p0, Lnet/sf/saxon/str/UnicodeBuilder;->e:[I

    return-void
.end method

.method public static expand([BIIIII)[B
    .locals 3

    sub-int v0, p2, p1

    div-int/2addr v0, p3

    if-gt p5, v0, :cond_0

    move p5, v0

    :cond_0
    if-gt p4, p3, :cond_1

    mul-int/2addr p5, p4

    new-array p4, p5, [B

    const/4 p5, 0x0

    mul-int/2addr p2, p3

    invoke-static {p0, p1, p4, p5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p4

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    if-ne p4, v0, :cond_2

    invoke-static {p0, p1, p2, p5}, Lnet/sf/saxon/str/UnicodeBuilder;->expand1to2([BIII)[B

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v2, 0x3

    if-ne p3, v1, :cond_3

    if-ne p4, v2, :cond_3

    invoke-static {p0, p1, p2, p5}, Lnet/sf/saxon/str/UnicodeBuilder;->expand1to3([BIII)[B

    move-result-object p0

    return-object p0

    :cond_3
    if-ne p3, v0, :cond_4

    if-ne p4, v2, :cond_4

    invoke-static {p0, p1, p2, p5}, Lnet/sf/saxon/str/UnicodeBuilder;->expand2to3([BIII)[B

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static expand1to2([BIII)[B
    .locals 4

    mul-int/lit8 p3, p3, 0x2

    new-array p3, p3, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge p1, p2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aput-byte v0, p3, v1

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    aput-byte p1, p3, v2

    move p1, v3

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static expand1to3([BIII)[B
    .locals 4

    mul-int/lit8 p3, p3, 0x3

    new-array p3, p3, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge p1, p2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aput-byte v0, p3, v1

    add-int/lit8 v1, v2, 0x1

    aput-byte v0, p3, v2

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    aput-byte p1, p3, v1

    move v1, v2

    move p1, v3

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static expand2to3([BIII)[B
    .locals 4

    mul-int/lit8 p3, p3, 0x3

    new-array p3, p3, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge p1, p2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aput-byte v0, p3, v1

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    aput-byte p1, p3, v2

    add-int/lit8 p1, v1, 0x1

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, p3, v1

    move v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public static expandBytesToChars([BII)[C
    .locals 4

    sub-int v0, p2, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    int-to-char p1, p1

    aput-char p1, v0, v1

    move v1, v2

    move p1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    const v1, 0xffff

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->h:Lnet/sf/saxon/str/ZenoString;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->b()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/ZenoString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/ZenoString;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->h:Lnet/sf/saxon/str/ZenoString;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    const/16 v0, 0xff

    iput v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->g:I

    :cond_0
    :goto_0
    iget v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lnet/sf/saxon/str/UnicodeBuilder;->e:[I

    array-length v2, v1

    if-le v0, v2, :cond_1

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->e:[I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    move-result-object p0

    return-object p0
.end method

.method public accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(C)Lnet/sf/saxon/str/UnicodeBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    return-object p0
.end method

.method public append(I)Lnet/sf/saxon/str/UnicodeBuilder;
    .locals 3

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->a(I)V

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->e:[I

    iget v1, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    aput p1, v0, v1

    .line 4
    iget v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->g:I

    or-int/2addr p1, v0

    iput p1, p0, Lnet/sf/saxon/str/UnicodeBuilder;->g:I

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;
    .locals 0

    .line 7
    invoke-static {p1}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Lnet/sf/saxon/z/IntIterator;)Lnet/sf/saxon/str/UnicodeBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;
    .locals 4

    .line 8
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length32()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->a(I)V

    .line 10
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lnet/sf/saxon/str/UnicodeBuilder;->e:[I

    iget v2, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v3

    aput v3, v1, v2

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->getWidth()I

    move-result p1

    const/16 v0, 0x8

    if-le p1, v0, :cond_3

    const/16 v0, 0x10

    if-le p1, v0, :cond_2

    .line 14
    iget p1, p0, Lnet/sf/saxon/str/UnicodeBuilder;->g:I

    const v0, 0xffffff

    or-int/2addr p1, v0

    iput p1, p0, Lnet/sf/saxon/str/UnicodeBuilder;->g:I

    goto :goto_1

    .line 15
    :cond_2
    iget p1, p0, Lnet/sf/saxon/str/UnicodeBuilder;->g:I

    const v0, 0xffff

    or-int/2addr p1, v0

    iput p1, p0, Lnet/sf/saxon/str/UnicodeBuilder;->g:I

    :cond_3
    :goto_1
    return-object p0
.end method

.method public append(Lnet/sf/saxon/z/IntIterator;)Lnet/sf/saxon/str/UnicodeBuilder;
    .locals 1

    .line 5
    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendAll(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/str/UnicodeBuilder;
    .locals 1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendLatin(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeBuilder;
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/BMPString;

    invoke-direct {v0, p1}, Lnet/sf/saxon/str/BMPString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    iget v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->g:I

    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    new-instance v0, Lnet/sf/saxon/str/Twine24;

    iget-object v1, p0, Lnet/sf/saxon/str/UnicodeBuilder;->e:[I

    iget p0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/str/Twine24;-><init>([II)V

    return-object v0

    :cond_0
    const v1, 0xff00

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    new-array v0, v0, [C

    :goto_0
    iget v2, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/str/UnicodeBuilder;->e:[I

    aget v2, v2, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/str/Twine16;

    invoke-direct {p0, v0}, Lnet/sf/saxon/str/Twine16;-><init>([C)V

    return-object p0

    :cond_2
    iget v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    new-array v0, v0, [B

    :goto_1
    iget v2, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lnet/sf/saxon/str/UnicodeBuilder;->e:[I

    aget v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Lnet/sf/saxon/str/Twine8;

    invoke-direct {p0, v0}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    return-object p0
.end method

.method public clear()V
    .locals 1

    sget-object v0, Lnet/sf/saxon/str/ZenoString;->EMPTY:Lnet/sf/saxon/str/ZenoString;

    iput-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->h:Lnet/sf/saxon/str/ZenoString;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->e:[I

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    iput v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->g:I

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->h:Lnet/sf/saxon/str/ZenoString;

    invoke-virtual {v0}, Lnet/sf/saxon/str/ZenoString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public length()J
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->h:Lnet/sf/saxon/str/ZenoString;

    invoke-virtual {v0}, Lnet/sf/saxon/str/ZenoString;->length()J

    move-result-wide v0

    iget p0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringItem(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/StringValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/type/AtomicType;)V

    return-object v0
.end method

.method public toUnicodeString()Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->h:Lnet/sf/saxon/str/ZenoString;

    invoke-virtual {v0}, Lnet/sf/saxon/str/ZenoString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->b()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->h:Lnet/sf/saxon/str/ZenoString;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->b()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/ZenoString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/ZenoString;

    move-result-object p0

    return-object p0
.end method

.method public trimToSize()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->e:[I

    iget v1, p0, Lnet/sf/saxon/str/UnicodeBuilder;->f:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/str/UnicodeBuilder;->e:[I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    return-void
.end method

.method public write(Lnet/sf/saxon/str/UnicodeString;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    return-void
.end method

.method public writeAscii([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    invoke-direct {v0, p1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    return-void
.end method
