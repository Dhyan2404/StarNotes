.class public Lnet/sf/saxon/serialize/XMLIndenter;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lnet/sf/saxon/event/Event$Text;

.field public j:I

.field public k:I

.field public l:I

.field public m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/sf/saxon/om/NodeName;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lnet/sf/saxon/serialize/XMLEmitter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/serialize/XMLEmitter;)V
    .locals 2

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->e:I

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->f:Z

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->g:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->h:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->i:Lnet/sf/saxon/event/Event$Text;

    iput v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->j:I

    iput v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->k:I

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->l:I

    iput-object v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->m:Ljava/util/Set;

    iput-object p1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->n:Lnet/sf/saxon/serialize/XMLEmitter;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->i:Lnet/sf/saxon/event/Event$Text;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/Event$Text;->replay(Lnet/sf/saxon/event/Receiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->i:Lnet/sf/saxon/event/Event$Text;

    :cond_0
    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->l:I

    if-gez v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/event/Event$Text;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/event/Event$Text;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->i:Lnet/sf/saxon/event/Event$Text;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLIndenter;->c()V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->f:Z

    iget v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->j:I

    iput v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->k:I

    :cond_1
    iget v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->k:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->n:Lnet/sf/saxon/serialize/XMLEmitter;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/serialize/XMLEmitter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->g:Z

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->h:Z

    :goto_1
    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/XMLIndenter;->d(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLIndenter;->c()V

    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->n:Lnet/sf/saxon/serialize/XMLEmitter;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/serialize/XMLEmitter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public final d(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->l:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLIndenter;->c()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->i:Lnet/sf/saxon/event/Event$Text;

    iget v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->e:I

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLIndenter;->getIndentation()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->j:I

    if-lez v1, :cond_1

    iget v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->k:I

    sub-int/2addr v0, v2

    if-gtz v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->n:Lnet/sf/saxon/serialize/XMLEmitter;

    const/4 v3, 0x0

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    move p1, v3

    :goto_0
    invoke-static {p1, v0}, Lnet/sf/saxon/str/IndentWhitespace;->of(II)Lnet/sf/saxon/str/IndentWhitespace;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v1, 0x4

    invoke-virtual {v2, p1, v0, v1}, Lnet/sf/saxon/serialize/XMLEmitter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iput-boolean v3, p0, Lnet/sf/saxon/serialize/XMLIndenter;->f:Z

    return-void
.end method

.method public endDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->n:Lnet/sf/saxon/serialize/XMLEmitter;

    const-string v1, "\n"

    invoke-static {v1}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnet/sf/saxon/serialize/XMLEmitter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_0
    invoke-super {p0}, Lnet/sf/saxon/event/ProxyReceiver;->endDocument()V

    return-void
.end method

.method public endElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->e:I

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->h:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/XMLIndenter;->d(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLIndenter;->c()V

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->n:Lnet/sf/saxon/serialize/XMLEmitter;

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/XMLEmitter;->endElement()V

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->f:Z

    iput-boolean v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->h:Z

    iput-boolean v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->g:Z

    iput v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->j:I

    iget v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->e:I

    iget v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->l:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->l:I

    :cond_1
    return-void
.end method

.method public getIndentation()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getLineLength()I
    .locals 0

    const/16 p0, 0x50

    return p0
.end method

.method public isDoubleSpaced(Lnet/sf/saxon/om/NodeName;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->n:Lnet/sf/saxon/serialize/XMLEmitter;

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLEmitter;->open()V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/XMLIndenter;->d(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLIndenter;->c()V

    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->n:Lnet/sf/saxon/serialize/XMLEmitter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/serialize/XMLEmitter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 2

    const-string v0, "omit-xml-declaration"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "yes"

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "doctype-system"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->h:Z

    const-string v0, "suppress-indentation"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "{http://saxon.sf.net/}suppress-indentation"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    new-instance p1, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->m:Ljava/util/Set;

    new-instance p1, Ljava/util/StringTokenizer;

    const-string v1, " \t\r\n"

    invoke-direct {p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->m:Ljava/util/Set;

    invoke-static {v0}, Lnet/sf/saxon/om/FingerprintedQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/FingerprintedQName;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLIndenter;->c()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/XMLIndenter;->isDoubleSpaced(Lnet/sf/saxon/om/NodeName;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/XMLIndenter;->d(Z)V

    :goto_1
    iget v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->e:I

    iget v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->l:I

    if-gez v0, :cond_2

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string v2, "space"

    invoke-interface {p3, v0, v2}, Lnet/sf/saxon/om/AttributeMap;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "preserve"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->e:I

    iput v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->l:I

    :cond_2
    iput-boolean v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->f:Z

    iput-boolean v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->h:Z

    iput v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->j:I

    iget-object v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->m:Ljava/util/Set;

    if-eqz v2, :cond_3

    iget v3, p0, Lnet/sf/saxon/serialize/XMLIndenter;->l:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->e:I

    iput v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->l:I

    :cond_3
    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v2

    if-eq p2, v2, :cond_4

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v2

    if-eq p2, v2, :cond_4

    iget v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->l:I

    if-gez v2, :cond_4

    invoke-interface {p2}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p2

    check-cast v2, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v2}, Lnet/sf/saxon/type/ComplexType;->isMixedContent()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->e:I

    iput v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->l:I

    :cond_4
    iget v2, p0, Lnet/sf/saxon/serialize/XMLIndenter;->l:I

    if-gez v2, :cond_a

    invoke-virtual {p4}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NamespaceBindingSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v4}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    add-int/2addr v0, v4

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v4}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    add-int/2addr v0, v5

    goto :goto_2

    :cond_7
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    const/4 v3, 0x4

    add-int/2addr v4, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    :goto_4
    add-int/2addr v4, v3

    add-int/2addr v0, v4

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLIndenter;->getLineLength()I

    move-result v2

    if-le v0, v2, :cond_a

    iget v0, p0, Lnet/sf/saxon/serialize/XMLIndenter;->e:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/XMLIndenter;->getIndentation()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lnet/sf/saxon/serialize/XMLIndenter;->n:Lnet/sf/saxon/serialize/XMLEmitter;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/serialize/XMLEmitter;->setIndentForNextAttribute(I)V

    :cond_a
    iget-object v2, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
