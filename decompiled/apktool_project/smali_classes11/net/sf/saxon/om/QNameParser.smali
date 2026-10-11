.class public Lnet/sf/saxon/om/QNameParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/om/NamespaceResolver;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lnet/sf/saxon/query/XQueryParser$Unescaper;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NamespaceResolver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/om/QNameParser;->b:Z

    const-string v0, "XPST0003"

    iput-object v0, p0, Lnet/sf/saxon/om/QNameParser;->c:Ljava/lang/String;

    const-string v0, "XPST0081"

    iput-object v0, p0, Lnet/sf/saxon/om/QNameParser;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/om/QNameParser;->e:Lnet/sf/saxon/query/XQueryParser$Unescaper;

    iput-object p1, p0, Lnet/sf/saxon/om/QNameParser;->a:Lnet/sf/saxon/om/NamespaceResolver;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Invalid EQName: local part is not a valid NCName"

    iget-object p0, p0, Lnet/sf/saxon/om/QNameParser;->c:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lnet/sf/saxon/om/QNameParser;
    .locals 2

    new-instance v0, Lnet/sf/saxon/om/QNameParser;

    iget-object v1, p0, Lnet/sf/saxon/om/QNameParser;->a:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    iget-boolean v1, p0, Lnet/sf/saxon/om/QNameParser;->b:Z

    iput-boolean v1, v0, Lnet/sf/saxon/om/QNameParser;->b:Z

    iget-object v1, p0, Lnet/sf/saxon/om/QNameParser;->c:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/om/QNameParser;->c:Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/om/QNameParser;->d:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/om/QNameParser;->d:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/om/QNameParser;->e:Lnet/sf/saxon/query/XQueryParser$Unescaper;

    iput-object p0, v0, Lnet/sf/saxon/om/QNameParser;->e:Lnet/sf/saxon/query/XQueryParser$Unescaper;

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lnet/sf/saxon/om/QNameParser;->b:Z

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x4

    if-lt v0, v4, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x51

    if-ne v0, v4, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x7b

    if-ne v0, v4, :cond_5

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/om/QNameParser;->e:Lnet/sf/saxon/query/XQueryParser$Unescaper;

    if-eqz v2, :cond_0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/om/QNameParser;->e:Lnet/sf/saxon/query/XQueryParser$Unescaper;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/query/XQueryParser$Unescaper;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/QNameParser;->a(Ljava/lang/String;)V

    new-instance p0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {p0, v1, v0, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The string \'http://www.w3.org/2000/xmlns/\' cannot be used as a namespace URI"

    const-string p2, "XQST0070"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Invalid EQName: URI contains opening brace"

    iget-object p0, p0, Lnet/sf/saxon/om/QNameParser;->c:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Invalid EQName: local part is missing"

    iget-object p0, p0, Lnet/sf/saxon/om/QNameParser;->c:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Invalid EQName: closing brace not found"

    iget-object p0, p0, Lnet/sf/saxon/om/QNameParser;->c:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_5
    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v3

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/QNameParser;->a(Ljava/lang/String;)V

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    aget-object p1, p1, v3

    invoke-direct {v0, v1, p2, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    iget-object p2, p0, Lnet/sf/saxon/om/QNameParser;->a:Lnet/sf/saxon/om/NamespaceResolver;

    aget-object v0, p1, v2

    invoke-interface {p2, v0, v2}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    aget-object v1, p1, v2

    aget-object p1, p1, v3

    invoke-direct {v0, v1, p2, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_7
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Namespace prefix \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has not been declared"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/om/QNameParser;->d:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p1}, Lnet/sf/saxon/om/QNameException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/om/QNameParser;->c:Ljava/lang/String;

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method public withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/om/QNameParser;->b:Z

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/QNameParser;->b()Lnet/sf/saxon/om/QNameParser;

    move-result-object p0

    iput-boolean p1, p0, Lnet/sf/saxon/om/QNameParser;->b:Z

    return-object p0
.end method

.method public withErrorOnBadSyntax(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/om/QNameParser;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/QNameParser;->b()Lnet/sf/saxon/om/QNameParser;

    move-result-object p0

    iput-object p1, p0, Lnet/sf/saxon/om/QNameParser;->c:Ljava/lang/String;

    return-object p0
.end method

.method public withErrorOnUnresolvedPrefix(Ljava/lang/String;)Lnet/sf/saxon/om/QNameParser;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/om/QNameParser;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/om/QNameParser;->b()Lnet/sf/saxon/om/QNameParser;

    move-result-object p0

    iput-object p1, p0, Lnet/sf/saxon/om/QNameParser;->d:Ljava/lang/String;

    return-object p0
.end method

.method public withNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/QNameParser;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/QNameParser;->b()Lnet/sf/saxon/om/QNameParser;

    move-result-object p0

    iput-object p1, p0, Lnet/sf/saxon/om/QNameParser;->a:Lnet/sf/saxon/om/NamespaceResolver;

    return-object p0
.end method

.method public withUnescaper(Lnet/sf/saxon/query/XQueryParser$Unescaper;)Lnet/sf/saxon/om/QNameParser;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/om/QNameParser;->b()Lnet/sf/saxon/om/QNameParser;

    move-result-object p0

    iput-object p1, p0, Lnet/sf/saxon/om/QNameParser;->e:Lnet/sf/saxon/query/XQueryParser$Unescaper;

    return-object p0
.end method
