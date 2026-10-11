.class public Lnet/sf/saxon/str/BMPString;
.super Lnet/sf/saxon/str/UnicodeString;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/str/UnicodeString;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    return-void
.end method

.method public static of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    invoke-static {}, Lnet/sf/saxon/Configuration;->isAssertionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/str/BMPString;

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/BMPString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a([CI)V
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public b([BI)V
    .locals 5

    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-char v1, p0, v1

    add-int/lit8 v3, p2, 0x1

    aput-byte v0, p1, p2

    add-int/lit8 p2, v3, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, p2, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    move v1, v2

    move p2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public codePointAt(J)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-static {p1, p2}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public codePoints()Lnet/sf/saxon/z/IntIterator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-static {p0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/BMPString;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/str/UnicodeString;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/str/BMPString;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    check-cast p1, Lnet/sf/saxon/str/BMPString;

    iget-object p1, p1, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/str/UnicodeString;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0
.end method

.method public concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/str/BMPString;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/str/BMPString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lnet/sf/saxon/str/BMPString;

    iget-object p0, p1, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/str/BMPString;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/str/BMPString;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    check-cast p1, Lnet/sf/saxon/str/BMPString;

    iget-object p1, p1, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(I)J
    .locals 1

    const v0, 0xffff

    if-le p1, v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 1
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public indexOf(IJ)J
    .locals 0

    .line 2
    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    const p3, 0xffff

    if-le p1, p3, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 3
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    int-to-char p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public indexWhere(Ljava/util/function/IntPredicate;J)J
    .locals 0

    invoke-static {p2, p3}, Lnet/sf/saxon/str/UnicodeString;->requireInt(J)I

    move-result p2

    :goto_0
    iget-object p3, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-interface {p1, p3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result p3

    if-eqz p3, :cond_0

    int-to-long p0, p2

    return-wide p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public length()J
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public substring(JJ)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    invoke-static {p1, p2}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result p1

    invoke-static {p3, p4}, Lnet/sf/saxon/str/StringTool;->requireInt(J)I

    move-result p2

    new-instance p3, Lnet/sf/saxon/str/BMPString;

    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Lnet/sf/saxon/str/BMPString;-><init>(Ljava/lang/String;)V

    return-object p3
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/str/BMPString;->e:Ljava/lang/String;

    return-object p0
.end method
