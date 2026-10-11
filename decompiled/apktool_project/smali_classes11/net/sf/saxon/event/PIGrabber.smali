.class public Lnet/sf/saxon/event/PIGrabber;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:Lnet/sf/saxon/Configuration;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lnet/sf/saxon/lib/ResourceResolver;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/event/PIGrabber;->e:Lnet/sf/saxon/Configuration;

    iput-object p1, p0, Lnet/sf/saxon/event/PIGrabber;->f:Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/event/PIGrabber;->g:Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/event/PIGrabber;->h:Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/event/PIGrabber;->i:Lnet/sf/saxon/lib/ResourceResolver;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/PIGrabber;->j:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/PIGrabber;->k:Z

    return-void
.end method


# virtual methods
.method public getAssociatedStylesheets()[Ljavax/xml/transform/Source;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/PIGrabber;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/PIGrabber;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/xml/transform/Source;

    new-instance v1, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v1}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iget-object v2, p0, Lnet/sf/saxon/event/PIGrabber;->h:Ljava/lang/String;

    iput-object v2, v1, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    const-string v2, "http://www.w3.org/1999/XSL/Transform"

    iput-object v2, v1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string v2, "transformation"

    iput-object v2, v1, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lnet/sf/saxon/event/PIGrabber;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lnet/sf/saxon/event/PIGrabber;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    :try_start_0
    iget-object v5, p0, Lnet/sf/saxon/event/PIGrabber;->h:Ljava/lang/String;

    invoke-static {v4, v5}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    new-array v4, v4, [Lnet/sf/saxon/lib/ResourceResolver;

    iget-object v5, p0, Lnet/sf/saxon/event/PIGrabber;->i:Lnet/sf/saxon/lib/ResourceResolver;

    aput-object v5, v4, v2

    iget-object v5, p0, Lnet/sf/saxon/event/PIGrabber;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v5}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Lnet/sf/saxon/lib/DirectResourceResolver;

    iget-object v6, p0, Lnet/sf/saxon/event/PIGrabber;->e:Lnet/sf/saxon/Configuration;

    invoke-direct {v5, v6}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v1, v4}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object v4

    instance-of v5, v4, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljavax/xml/transform/sax/SAXSource;

    iget-object v6, p0, Lnet/sf/saxon/event/PIGrabber;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getStyleParser()Lorg/xml/sax/XMLReader;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_1
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_2
    return-object v0
.end method

.method public isTerminated()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/event/PIGrabber;->k:Z

    return p0
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p3, "xml-stylesheet"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "media"

    invoke-static {p1, p2}, Lnet/sf/saxon/tree/util/ProcInstParser;->getPseudoAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "title"

    invoke-static {p1, p3}, Lnet/sf/saxon/tree/util/ProcInstParser;->getPseudoAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "type"

    invoke-static {p1, p4}, Lnet/sf/saxon/tree/util/ProcInstParser;->getPseudoAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "alternate"

    invoke-static {p1, v0}, Lnet/sf/saxon/tree/util/ProcInstParser;->getPseudoAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-string v1, "text/xml"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/xml"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "text/xsl"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "applicaton/xsl"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/xml+xslt"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    :cond_1
    iget-object p4, p0, Lnet/sf/saxon/event/PIGrabber;->f:Ljava/lang/String;

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p4

    invoke-virtual {p4}, Lnet/sf/saxon/Configuration;->getMediaQueryEvaluator()Ljava/util/Comparator;

    move-result-object p4

    iget-object v1, p0, Lnet/sf/saxon/event/PIGrabber;->f:Ljava/lang/String;

    invoke-interface {p4, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-nez p2, :cond_8

    :cond_2
    const-string p2, "no"

    if-nez p3, :cond_3

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    :cond_3
    iget-object p4, p0, Lnet/sf/saxon/event/PIGrabber;->g:Ljava/lang/String;

    if-eqz p4, :cond_4

    if-eqz p3, :cond_8

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    :cond_4
    const-string p4, "href"

    invoke-static {p1, p4}, Lnet/sf/saxon/tree/util/ProcInstParser;->getPseudoAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    if-nez p3, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    iget-object p0, p0, Lnet/sf/saxon/event/PIGrabber;->j:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lnet/sf/saxon/event/PIGrabber;->j:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "xml-stylesheet PI has no href attribute"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_0
    return-void
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/PIGrabber;->h:Ljava/lang/String;

    return-void
.end method

.method public setCriteria(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/PIGrabber;->f:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/event/PIGrabber;->g:Ljava/lang/String;

    return-void
.end method

.method public setFactory(Lnet/sf/saxon/Configuration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/PIGrabber;->e:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/PIGrabber;->i:Lnet/sf/saxon/lib/ResourceResolver;

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/event/PIGrabber;->k:Z

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "#start#"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
