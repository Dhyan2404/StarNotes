.class public Lnet/sf/saxon/om/StructuredQName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/IdentityComparable;


# instance fields
.field public final e:[C

.field public final f:I

.field public final g:I

.field public h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lnet/sf/saxon/om/StructuredQName;->h:I

    if-nez p2, :cond_0

    const-string p2, ""

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 10
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 11
    iput v1, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    add-int v3, v1, v2

    .line 12
    iput v3, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    add-int v4, v3, v0

    .line 13
    new-array v4, v4, [C

    iput-object v4, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    const/4 p0, 0x0

    .line 14
    invoke-virtual {p2, p0, v1, v4, p0}, Ljava/lang/String;->getChars(II[CI)V

    .line 15
    invoke-virtual {p3, p0, v2, v4, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 16
    invoke-virtual {p1, p0, v0, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lnet/sf/saxon/om/StructuredQName;->h:I

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    .line 4
    iput p2, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    .line 5
    iput p3, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    return-void
.end method

.method public static computeHashCode(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int v1, v0, p0

    const v2, 0x5004a00b

    xor-int/2addr v1, v2

    xor-int/2addr v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    and-int/lit8 v4, p0, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;
    .locals 5

    const-string v0, "Q{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7b

    const-string v3, ""

    if-ne v0, v2, :cond_3

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing local part in Clark name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No closing \'}\' in Clark name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    move-object v2, v3

    :goto_0
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, v3, v2, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;
    .locals 4

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, ""

    if-lt v0, v1, :cond_3

    const-string v0, "Q{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, v2, v1, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid EQName: open brace in URI part"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid EQName: local part is missing"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid EQName: closing brace not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, v2, v2, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "FOCA0002"

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v3, 0x4

    if-lt p2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v3, 0x51

    if-ne p2, v3, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v3, 0x7b

    if-ne p2, v3, :cond_4

    const/16 p1, 0x7d

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v0

    if-eq p1, p3, :cond_2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result p3

    if-gez p3, :cond_1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringTool;->codePoints(Ljava/lang/CharSequence;)Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/om/StructuredQName;

    const-string p3, ""

    invoke-direct {p1, p3, p2, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Invalid EQName: local part is not a valid NCName"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Namespace URI must not contain \'{\'"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Invalid EQName: local part is missing"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Invalid EQName: closing brace not found"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_4
    :try_start_0
    invoke-static {p0}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p2, p0, v2

    invoke-interface {p3, p2, p1}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    aget-object p1, p0, v2

    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Namespace prefix \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has not been declared"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p0, "FONS0004"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid namespace prefix \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p2, Lnet/sf/saxon/om/StructuredQName;

    aget-object p3, p0, v2

    aget-object p0, p0, v0

    invoke-direct {p2, p3, p1, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/om/QNameException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lnet/sf/saxon/om/StructuredQName;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lnet/sf/saxon/om/StructuredQName;

    iget v1, p1, Lnet/sf/saxon/om/StructuredQName;->h:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    iget v3, p1, Lnet/sf/saxon/om/StructuredQName;->f:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    iget v3, p1, Lnet/sf/saxon/om/StructuredQName;->g:I

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_4

    iget-object v3, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    aget-char v3, v3, v1

    iget-object v4, p1, Lnet/sf/saxon/om/StructuredQName;->e:[C

    aget-char v4, v4, v1

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method public getClarkName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    array-length v1, v1

    iget v2, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    if-lez v1, :cond_0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    const/4 v2, 0x0

    iget v3, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    iget v2, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    iget p0, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    sub-int/2addr p0, v2

    invoke-virtual {v0, v1, v2, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    iget-object v1, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, v1

    iget v2, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    iget v2, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    iget v2, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    iget p0, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    sub-int/2addr p0, v2

    invoke-virtual {v0, v1, v2, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEQName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    array-length v1, v1

    iget v2, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Q{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    iget v2, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    iget p0, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    sub-int/2addr p0, v2

    invoke-virtual {v0, v1, v2, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    iget v2, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    iget p0, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    sub-int/2addr p0, v2

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getNamespaceBinding()Lnet/sf/saxon/om/NamespaceBinding;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/sf/saxon/om/NamespaceBinding;->makeNamespaceBinding(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    iget p0, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    array-length v2, v1

    sub-int/2addr v2, p0

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public hasURI(Ljava/lang/String;)Z
    .locals 5

    iget v0, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    aget-char v3, v3, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lnet/sf/saxon/om/StructuredQName;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const v0, 0x5004a00b

    iget v1, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    xor-int/2addr v0, v1

    iget v1, p0, Lnet/sf/saxon/om/StructuredQName;->f:I

    xor-int/2addr v0, v1

    :goto_0
    iget v2, p0, Lnet/sf/saxon/om/StructuredQName;->g:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/om/StructuredQName;->e:[C

    aget-char v2, v2, v1

    and-int/lit8 v3, v1, 0x1f

    shl-int/2addr v2, v3

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lnet/sf/saxon/om/StructuredQName;->h:I

    :cond_1
    return v0
.end method

.method public identityHashCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isIdentical(Lnet/sf/saxon/om/IdentityComparable;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toJaxpQName()Ljavax/xml/namespace/QName;
    .locals 3

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
