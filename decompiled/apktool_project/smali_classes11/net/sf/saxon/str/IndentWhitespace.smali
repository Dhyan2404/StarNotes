.class public Lnet/sf/saxon/str/IndentWhitespace;
.super Lnet/sf/saxon/str/WhitespaceString;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/str/WhitespaceString;-><init>()V

    iput p1, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    iput p2, p0, Lnet/sf/saxon/str/IndentWhitespace;->f:I

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/str/IndentWhitespace;)Lnet/sf/saxon/z/IntIterator;
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/str/IndentWhitespace;->f()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic f()Lnet/sf/saxon/z/IntIterator;
    .locals 2

    new-instance v0, Lnet/sf/saxon/z/IntRepeatIterator;

    const/16 v1, 0x20

    iget p0, p0, Lnet/sf/saxon/str/IndentWhitespace;->f:I

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/z/IntRepeatIterator;-><init>(II)V

    return-object v0
.end method

.method public static of(II)Lnet/sf/saxon/str/IndentWhitespace;
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/IndentWhitespace;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/str/IndentWhitespace;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public codePointAt(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    iget p0, p0, Lnet/sf/saxon/str/IndentWhitespace;->f:I

    add-int/2addr v0, p0

    int-to-long v0, v0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_1

    const/16 p0, 0x20

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public codePoints()Lnet/sf/saxon/z/IntIterator;
    .locals 4

    new-instance v0, Lnet/sf/saxon/z/ConcatenatingIntIterator;

    new-instance v1, Lnet/sf/saxon/z/IntRepeatIterator;

    const/16 v2, 0xa

    iget v3, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/z/IntRepeatIterator;-><init>(II)V

    new-instance v2, Lcom/sunia/HTREnginev2/nji;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/nji;-><init>(Lnet/sf/saxon/str/IndentWhitespace;)V

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/z/ConcatenatingIntIterator;-><init>(Lnet/sf/saxon/z/IntIterator;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public getNewlines()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    return p0
.end method

.method public getSpaces()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/IndentWhitespace;->f:I

    return p0
.end method

.method public length()J
    .locals 2

    iget v0, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    iget p0, p0, Lnet/sf/saxon/str/IndentWhitespace;->f:I

    add-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public length32()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    iget p0, p0, Lnet/sf/saxon/str/IndentWhitespace;->f:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    iget v1, p0, Lnet/sf/saxon/str/IndentWhitespace;->f:I

    add-int/2addr v1, v0

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([CIIC)V

    iget v0, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    iget p0, p0, Lnet/sf/saxon/str/IndentWhitespace;->f:I

    add-int/2addr p0, v0

    const/16 v2, 0x20

    invoke-static {v1, v0, p0, v2}, Ljava/util/Arrays;->fill([CIIC)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public uncompress()Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    iget v0, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    iget v1, p0, Lnet/sf/saxon/str/IndentWhitespace;->f:I

    add-int/2addr v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([BIIB)V

    iget v0, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    iget p0, p0, Lnet/sf/saxon/str/IndentWhitespace;->f:I

    add-int/2addr p0, v0

    const/16 v2, 0x20

    invoke-static {v1, v0, p0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    new-instance p0, Lnet/sf/saxon/str/Twine8;

    invoke-direct {p0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    return-object p0
.end method

.method public write(Lnet/sf/saxon/str/UnicodeWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    if-lez v0, :cond_0

    const/16 v1, 0xa

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/str/UnicodeWriter;->writeRepeatedAscii(BI)V

    :cond_0
    iget p0, p0, Lnet/sf/saxon/str/IndentWhitespace;->f:I

    if-lez p0, :cond_1

    const/16 v0, 0x20

    invoke-interface {p1, v0, p0}, Lnet/sf/saxon/str/UnicodeWriter;->writeRepeatedAscii(BI)V

    :cond_1
    return-void
.end method

.method public writeEscape([ZLnet/sf/saxon/str/UnicodeWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    if-ge p1, v0, :cond_1

    sget-object v0, Lnet/sf/saxon/str/StringConstants;->ESCAPE_NL:[B

    invoke-interface {p2, v0}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/sf/saxon/str/IndentWhitespace;->e:I

    invoke-interface {p2, v0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeRepeatedAscii(BI)V

    :cond_1
    const/16 p1, 0x20

    iget p0, p0, Lnet/sf/saxon/str/IndentWhitespace;->f:I

    invoke-interface {p2, p1, p0}, Lnet/sf/saxon/str/UnicodeWriter;->writeRepeatedAscii(BI)V

    return-void
.end method
