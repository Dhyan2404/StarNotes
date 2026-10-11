.class public Lorg/xmlresolver/tools/ResolvingXMLReader;
.super Lorg/xmlresolver/tools/ResolvingXMLFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xmlresolver/tools/ResolvingXMLFilter;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/xmlresolver/tools/ResolvingXMLReader;->a(Ljavax/xml/parsers/SAXParserFactory;)V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/parsers/SAXParserFactory;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/xmlresolver/tools/ResolvingXMLFilter;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lorg/xmlresolver/tools/ResolvingXMLReader;->a(Ljavax/xml/parsers/SAXParserFactory;)V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/xmlresolver/Resolver;)V
    .locals 0

    .line 7
    invoke-direct {p0, p2}, Lorg/xmlresolver/tools/ResolvingXMLFilter;-><init>(Lorg/xmlresolver/Resolver;)V

    .line 8
    invoke-virtual {p0, p1}, Lorg/xmlresolver/tools/ResolvingXMLReader;->a(Ljavax/xml/parsers/SAXParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/Resolver;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/xmlresolver/tools/ResolvingXMLFilter;-><init>(Lorg/xmlresolver/Resolver;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lorg/xmlresolver/tools/ResolvingXMLReader;->a(Ljavax/xml/parsers/SAXParserFactory;)V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/xml/parsers/SAXParserFactory;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    iget-object p1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    invoke-virtual {p1}, Lorg/xmlresolver/Resolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object p1

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->XMLREADER_SUPPLIER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p1, v2}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Supplier;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xml/sax/XMLReader;

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V

    return-void

    :cond_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    :try_start_1
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
