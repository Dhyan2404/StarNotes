.class public abstract Lnet/sf/saxon/str/UnicodeString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/AtomicMatchKey;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
        "Ljava/lang/Comparable<",
        "Lnet/sf/saxon/str/UnicodeString;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const-string p1, "String offset exceeds 2^31 characters"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a([CI)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public asAtomic()Lnet/sf/saxon/value/AtomicValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/Base64BinaryValue;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->d()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/Base64BinaryValue;-><init>([B)V

    return-object v0
.end method

.method public b([BI)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public c([BI)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public checkSubstringBounds(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    cmp-long p1, p3, p1

    const-string p2, "UnicodeString.substring(): end ("

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    cmp-long p1, p3, v0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ") > length ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ") < start ( + start + "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "UnicodeString.substring(): start ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") < 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract codePointAt(J)I
.end method

.method public abstract codePoints()Lnet/sf/saxon/z/IntIterator;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeString;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/str/UnicodeString;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    .line 4
    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    .line 5
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    .line 7
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    if-eqz v0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/str/ZenoString;->of(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/ZenoString;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/ZenoString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/ZenoString;

    move-result-object p0

    return-object p0
.end method

.method public final d()[B
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public economize()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/str/UnicodeString;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v2

    if-eq v0, v2, :cond_0

    return v1

    :cond_1
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public estimatedLength()J
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getWidth()I
.end method

.method public hasSubstring(Lnet/sf/saxon/str/UnicodeString;J)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-gtz v2, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v2

    add-long v4, v2, p2

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-lez v4, :cond_0

    return v5

    :cond_0
    :goto_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    add-long v6, p2, v0

    invoke-virtual {p0, v6, v7}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v4

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v6

    if-eq v4, v6, :cond_1

    return v5

    :cond_1
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    const/high16 v2, 0xff0000

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->highSurrogate(I)C

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->lowSurrogate(I)C

    move-result v1

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public indexOf(I)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->indexOf(IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public abstract indexOf(IJ)J
.end method

.method public indexOf(Lnet/sf/saxon/str/UnicodeString;J)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide/16 v3, -0x1

    if-ltz v2, :cond_4

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v5

    cmp-long v2, p2, v5

    if-ltz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-wide p2

    .line 4
    :cond_1
    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v5

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v7

    sub-long/2addr v7, v5

    :goto_0
    cmp-long v5, p2, v7

    if-gtz v5, :cond_4

    .line 7
    invoke-virtual {p0, v2, p2, p3}, Lnet/sf/saxon/str/UnicodeString;->indexOf(IJ)J

    move-result-wide p2

    cmp-long v5, p2, v0

    if-gez v5, :cond_2

    return-wide v3

    .line 8
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/str/UnicodeString;->hasSubstring(Lnet/sf/saxon/str/UnicodeString;J)Z

    move-result v5

    if-eqz v5, :cond_3

    return-wide p2

    :cond_3
    const-wide/16 v5, 0x1

    add-long/2addr p2, v5

    goto :goto_0

    :cond_4
    :goto_1
    return-wide v3
.end method

.method public indexWhere(Ljava/util/function/IntPredicate;J)J
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v2

    cmp-long v3, v0, p2

    if-ltz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public isEmpty()Z
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract length()J
.end method

.method public length32()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p0

    return p0
.end method

.method public prefix(J)Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public substring(J)Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/saxon/str/UnicodeString;->substring(JJ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public abstract substring(JJ)Lnet/sf/saxon/str/UnicodeString;
.end method

.method public tidy()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    return-object p0
.end method

.method public verifyCharacters()V
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/serialize/charcode/XMLCharacterData;->isValid11(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid char "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " at offset "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
