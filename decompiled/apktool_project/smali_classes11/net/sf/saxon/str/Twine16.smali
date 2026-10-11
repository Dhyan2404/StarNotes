.class public Lnet/sf/saxon/str/Twine16;
.super Lnet/sf/saxon/str/UnicodeString;
.source "SourceFile"


# instance fields
.field protected cachedHash:I

.field protected chars:[C


# direct methods
.method public constructor <init>([C)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/sf/saxon/str/Twine16;->cachedHash:I

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnet/sf/saxon/str/Twine16;->cachedHash:I

    if-nez p2, :cond_0

    .line 6
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    goto :goto_0

    .line 7
    :cond_0
    new-array v1, p3, [C

    iput-object v1, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    .line 8
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a([CI)V
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public b([BI)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-char v1, v2, v1

    add-int/lit8 v2, p2, 0x1

    aput-byte v0, p1, p2

    add-int/lit8 p2, v2, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v2, p2, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    move p2, v2

    move v1, v3

    goto :goto_0

    :cond_0
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

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine16;->length32()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    aget-char p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public codePoints()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/str/Twine16$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/Twine16$a;-><init>(Lnet/sf/saxon/str/Twine16;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/Twine16;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/str/UnicodeString;)I
    .locals 6

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/str/Twine16;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lnet/sf/saxon/str/Twine16;

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    .line 5
    iget-object v1, p1, Lnet/sf/saxon/str/Twine16;->chars:[C

    .line 6
    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 7
    aget-char v4, v0, v3

    aget-char v5, v1, v3

    sub-int/2addr v4, v5

    if-eqz v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine16;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/sf/saxon/str/Twine16;->length()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

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

    const-string v1, "Twine16 length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/str/Twine16;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    check-cast p1, Lnet/sf/saxon/str/Twine16;

    iget-object p1, p1, Lnet/sf/saxon/str/Twine16;->chars:[C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCharArray()[C
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lnet/sf/saxon/str/Twine16;->cachedHash:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v4, v0, v2

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lnet/sf/saxon/str/Twine16;->cachedHash:I

    return v3
.end method

.method public indexOf(IJ)J
    .locals 3

    const-wide/16 v0, -0x1

    if-ltz p1, :cond_2

    const v2, 0xffff

    if-le p1, v2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2
    iget-object p3, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    array-length p3, p3

    :goto_0
    if-ge p2, p3, :cond_2

    .line 3
    iget-object v2, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    aget-char v2, v2, p2

    if-ne v2, p1, :cond_1

    int-to-long p0, p2

    return-wide p0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public indexOf(Lnet/sf/saxon/str/UnicodeString;J)J
    .locals 6

    .line 4
    invoke-static {p2, p3}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result v0

    const-wide/16 v1, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine16;->length32()I

    move-result v3

    if-lt v0, v3, :cond_1

    return-wide v1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-wide p2

    :cond_2
    const-wide/16 p2, 0x0

    .line 7
    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result p2

    .line 8
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result p3

    .line 9
    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine16;->length32()I

    move-result v3

    sub-int/2addr v3, p3

    :goto_1
    if-gt v0, v3, :cond_5

    int-to-long v4, v0

    .line 10
    invoke-virtual {p0, p2, v4, v5}, Lnet/sf/saxon/str/Twine16;->indexOf(IJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result p3

    if-gez p3, :cond_3

    return-wide v1

    :cond_3
    int-to-long v4, p3

    .line 11
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

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine16;->length()J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-gez p3, :cond_1

    iget-object p3, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    aget-char p3, p3, p2

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

    iget-object p0, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

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

    iget-object p0, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public length32()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    array-length p0, p0

    return p0
.end method

.method public substring(JJ)Lnet/sf/saxon/str/UnicodeString;
    .locals 5

    invoke-static {p1, p2}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result v0

    invoke-static {p3, p4}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result v1

    invoke-virtual {p0}, Lnet/sf/saxon/str/Twine16;->length32()I

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
    new-instance p1, Lnet/sf/saxon/str/Slice16;

    iget-object p0, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    invoke-direct {p1, p0, v0, v1}, Lnet/sf/saxon/str/Slice16;-><init>([CII)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/str/Twine16;->chars:[C

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
