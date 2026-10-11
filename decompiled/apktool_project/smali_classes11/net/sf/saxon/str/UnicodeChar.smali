.class public Lnet/sf/saxon/str/UnicodeChar;
.super Lnet/sf/saxon/str/UnicodeString;
.source "SourceFile"


# instance fields
.field public final e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    iput p1, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    return-void
.end method


# virtual methods
.method public a([CI)V
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    int-to-char p0, p0

    aput-char p0, p1, p2

    return-void
.end method

.method public b([BI)V
    .locals 2

    iget p0, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public c([BI)V
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public codePointAt(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget p0, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Only valid index for a single-character string is zero"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public codePoints()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntSingletonIterator;

    iget p0, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntSingletonIterator;-><init>(I)V

    return-object v0
.end method

.method public getCodepoint()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    return p0
.end method

.method public getWidth()I
    .locals 1

    iget p0, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const/16 v0, 0x100

    if-ge p0, v0, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_2

    const/16 p0, 0x10

    return p0

    :cond_2
    const/16 p0, 0x18

    return p0
.end method

.method public indexOf(IJ)J
    .locals 0

    iget p0, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    if-ne p0, p1, :cond_0

    const-wide/16 p0, 0x0

    cmp-long p2, p2, p0

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public indexWhere(Ljava/util/function/IntPredicate;J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    iget p0, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    invoke-interface {p1, p0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public substring(JJ)Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/str/UnicodeString;->checkSubstringBounds(JJ)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const-wide/16 p1, 0x1

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    const/high16 v1, 0x10000

    const-string v2, ""

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    invoke-static {v1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->highSurrogate(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/str/UnicodeChar;->e:I

    invoke-static {p0}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->lowSurrogate(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
