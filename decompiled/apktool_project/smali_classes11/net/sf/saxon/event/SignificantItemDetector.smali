.class public Lnet/sf/saxon/event/SignificantItemDetector;
.super Lnet/sf/saxon/event/ProxyOutputter;
.source "SourceFile"


# instance fields
.field public f:I

.field public g:Z

.field public final h:Lnet/sf/saxon/om/Action;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Action;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyOutputter;-><init>(Lnet/sf/saxon/event/Outputter;)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/event/SignificantItemDetector;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/event/SignificantItemDetector;->g:Z

    iput-object p2, p0, Lnet/sf/saxon/event/SignificantItemDetector;->h:Lnet/sf/saxon/om/Action;

    return-void
.end method

.method public static isSignificant(Lnet/sf/saxon/om/Item;)Z
    .locals 4

    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->hasChildNodes()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    instance-of v0, p0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_4
    instance-of v0, p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_9

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Sequence;

    :try_start_0
    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v3}, Lnet/sf/saxon/event/SignificantItemDetector;->isSignificant(Lnet/sf/saxon/om/Item;)Z

    move-result v3
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_7

    :catch_0
    return v2

    :cond_8
    return v1

    :cond_9
    return v2
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->h:Lnet/sf/saxon/om/Action;

    invoke-interface {v0}, Lnet/sf/saxon/om/Action;->doAction()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->g:Z

    :cond_0
    return-void
.end method

.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lnet/sf/saxon/event/SignificantItemDetector;->isSignificant(Lnet/sf/saxon/om/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/SignificantItemDetector;->a()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/event/ProxyOutputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/SignificantItemDetector;->a()V

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/SignificantItemDetector;->a()V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/SignificantItemDetector;->a()V

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->f:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->endDocument()V

    :cond_0
    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->f:I

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->endElement()V

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->g:Z

    return p0
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/SignificantItemDetector;->a()V

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/SignificantItemDetector;->a()V

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Outputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public startContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->startContent()V

    return-void
.end method

.method public startDocument(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/event/SignificantItemDetector;->f:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/Outputter;->startDocument(I)V

    :cond_0
    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/event/SignificantItemDetector;->a()V

    .line 5
    iget v0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->f:I

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/event/SignificantItemDetector;->a()V

    .line 2
    iget v0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/event/SignificantItemDetector;->f:I

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
