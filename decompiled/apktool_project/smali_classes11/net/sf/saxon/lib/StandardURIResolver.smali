.class public Lnet/sf/saxon/lib/StandardURIResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/NonDelegatingURIResolver;


# static fields
.field public static final synthetic h:Z


# instance fields
.field public e:Lnet/sf/saxon/Configuration;

.field public f:Z

.field public g:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lnet/sf/saxon/lib/StandardURIResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lnet/sf/saxon/lib/StandardURIResolver;->f:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lnet/sf/saxon/lib/StandardURIResolver;->g:Ljava/util/function/Predicate;

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/lib/StandardURIResolver;->e:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/lib/StandardURIResolver;->b(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/IDFilter;

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/event/IDFilter;-><init>(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardURIResolver;->e:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getPlatform()Lnet/sf/saxon/Platform;
    .locals 0

    sget-object p0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    return-object p0
.end method

.method public queryParametersAreRecognized()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/lib/StandardURIResolver;->f:Z

    return p0
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardURIResolver;->e:Lnet/sf/saxon/Configuration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->isTiming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/lib/StandardURIResolver;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URIResolver.resolve href=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" base=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v4, p1

    move-object v0, v2

    :goto_0
    :try_start_0
    invoke-static {v4}, Lnet/sf/saxon/functions/ResolveURI;->escapeSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {v5}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lnet/sf/saxon/lib/StandardURIResolver;->f:Z

    if-eqz v6, :cond_2

    new-instance v2, Lnet/sf/saxon/functions/URIQueryParameters;

    iget-object v6, p0, Lnet/sf/saxon/lib/StandardURIResolver;->e:Lnet/sf/saxon/Configuration;

    invoke-direct {v2, v5, v6}, Lnet/sf/saxon/functions/URIQueryParameters;-><init>(Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2
    iget-boolean v5, p0, Lnet/sf/saxon/lib/StandardURIResolver;->f:Z

    if-eqz v5, :cond_4

    const-string v5, ".ptree"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "PTree files are no longer supported (from Saxon 10.0)"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    :try_start_1
    invoke-static {v4, p2}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/sf/saxon/functions/EncodeForUri;->checkPercentEncoding(Ljava/lang/String;)V

    const-string v6, "data"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :try_start_2
    invoke-static {p1}, Lnet/sf/saxon/resource/DataURIScheme;->decode(Ljava/net/URI;)Lnet/sf/saxon/lib/Resource;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    instance-of p2, p1, Lnet/sf/saxon/resource/BinaryResource;

    if-eqz p2, :cond_5

    check-cast p1, Lnet/sf/saxon/resource/BinaryResource;

    invoke-virtual {p1}, Lnet/sf/saxon/resource/BinaryResource;->getData()[B

    move-result-object p1

    new-instance p2, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {p1, p2}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    invoke-interface {p1, v5}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance p2, Ljava/io/StringReader;

    check-cast p1, Lnet/sf/saxon/resource/UnparsedTextResource;

    invoke-virtual {p1}, Lnet/sf/saxon/resource/UnparsedTextResource;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljavax/xml/transform/sax/SAXSource;

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p1, v1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    invoke-interface {p1, v5}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid URI using \'data\' scheme: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object p1, p0, Lnet/sf/saxon/lib/StandardURIResolver;->e:Lnet/sf/saxon/Configuration;

    if-eqz p1, :cond_7

    new-instance p1, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {p1}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iput-object v5, p1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    iput-object v4, p1, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    iput-object p2, p1, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    const-string p2, "https://www.iana.org/assignments/media-types/application/xml"

    iput-object p2, p1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    new-array p2, v1, [Lnet/sf/saxon/lib/ResourceResolver;

    new-instance v0, Lnet/sf/saxon/lib/DirectResourceResolver;

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardURIResolver;->e:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, p0}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    aput-object v0, p2, v3

    invoke-virtual {p1, p2}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {p1}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/lib/StandardURIResolver;->setSAXInputSource(Ljavax/xml/transform/sax/SAXSource;Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lnet/sf/saxon/functions/URIQueryParameters;->getXMLReaderMaker()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/trans/Maker;

    invoke-interface {p2}, Lnet/sf/saxon/trans/Maker;->make()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/xml/sax/XMLReader;

    invoke-virtual {p1, p2}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_8
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p2

    if-nez p2, :cond_9

    iget-object p0, p0, Lnet/sf/saxon/lib/StandardURIResolver;->e:Lnet/sf/saxon/Configuration;

    if-nez p0, :cond_9

    :try_start_3
    sget-object p0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {p0}, Lnet/sf/saxon/Platform;->loadParser()Lorg/xml/sax/XMLReader;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lnet/sf/saxon/functions/URIQueryParameters;->getSpaceStrippingRule()Ljava/util/Optional;

    move-result-object p0

    invoke-static {p1}, Lnet/sf/saxon/lib/AugmentedSource;->makeAugmentedSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/AugmentedSource;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lnet/sf/saxon/lib/AugmentedSource;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p2

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/SpaceStrippingRule;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    :cond_a
    if-eqz v0, :cond_b

    new-instance p0, Lcom/sunia/HTREnginev2/rxm;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/rxm;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnet/sf/saxon/lib/AugmentedSource;->makeAugmentedSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/AugmentedSource;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/lib/AugmentedSource;->addFilter(Lnet/sf/saxon/event/FilterFactory;)V

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lnet/sf/saxon/functions/URIQueryParameters;->getValidationMode()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {p1}, Lnet/sf/saxon/lib/AugmentedSource;->makeAugmentedSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/AugmentedSource;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/lib/AugmentedSource;->setSchemaValidationMode(I)V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lnet/sf/saxon/functions/URIQueryParameters;->getXInclude()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-static {p1}, Lnet/sf/saxon/lib/AugmentedSource;->makeAugmentedSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/AugmentedSource;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/lib/AugmentedSource;->setXIncludeAware(Z)V

    :cond_d
    return-object p1

    :catch_2
    move-exception v0

    invoke-static {p2}, Lnet/sf/saxon/functions/ResolveURI;->tryToExpand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/lib/StandardURIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid URI "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - base "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catch_3
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid relative URI "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setAllowedUriTest(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/net/URI;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/lib/StandardURIResolver;->g:Ljava/util/function/Predicate;

    return-void
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/lib/StandardURIResolver;->e:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public setRecognizeQueryParameters(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/lib/StandardURIResolver;->f:Z

    return-void
.end method

.method public setSAXInputSource(Ljavax/xml/transform/sax/SAXSource;Ljava/lang/String;)V
    .locals 2

    const-string v0, "classpath:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/lib/StandardURIResolver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getDynamicLoader()Lnet/sf/saxon/lib/IDynamicLoader;

    move-result-object p0

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lnet/sf/saxon/lib/IDynamicLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    invoke-virtual {p1, p2}, Ljavax/xml/transform/sax/SAXSource;->setSystemId(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lnet/sf/saxon/resource/ResourceLoader;->urlStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    invoke-virtual {p1, p2}, Ljavax/xml/transform/sax/SAXSource;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-direct {p0, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    invoke-virtual {p1, p2}, Ljavax/xml/transform/sax/SAXSource;->setSystemId(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
