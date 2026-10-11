.class public Lorg/xmlresolver/tools/ResolvingXMLFilter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "SourceFile"


# static fields
.field protected static staticResolver:Lorg/xmlresolver/Resolver;


# instance fields
.field public e:Z

.field public f:Z

.field public g:Ljava/net/URI;

.field protected final logger:Lorg/xmlresolver/logging/ResolverLogger;

.field protected resolver:Lorg/xmlresolver/Resolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->e:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->f:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    .line 5
    iput-object v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->g:Ljava/net/URI;

    .line 6
    sget-object v0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->staticResolver:Lorg/xmlresolver/Resolver;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lorg/xmlresolver/Resolver;

    invoke-direct {v0}, Lorg/xmlresolver/Resolver;-><init>()V

    sput-object v0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->staticResolver:Lorg/xmlresolver/Resolver;

    .line 8
    :cond_0
    sget-object v0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->staticResolver:Lorg/xmlresolver/Resolver;

    iput-object v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    .line 9
    invoke-virtual {v0}, Lorg/xmlresolver/Resolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object v0

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->ALLOW_CATALOG_PI:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->e:Z

    .line 10
    iget-object v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    invoke-virtual {v0}, Lorg/xmlresolver/Resolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object v0

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lorg/xmlresolver/Resolver;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->e:Z

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->f:Z

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->g:Ljava/net/URI;

    .line 22
    iput-object p2, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    .line 23
    invoke-virtual {p2}, Lorg/xmlresolver/Resolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object p1

    sget-object p2, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p1, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/Resolver;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->e:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->f:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->g:Ljava/net/URI;

    .line 15
    iput-object p1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    .line 16
    invoke-virtual {p1}, Lorg/xmlresolver/Resolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object v0

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->ALLOW_CATALOG_PI:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->e:Z

    .line 17
    invoke-virtual {p1}, Lorg/xmlresolver/Resolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object p1

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method


# virtual methods
.method public getResolver()Lorg/xmlresolver/Resolver;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    return-object p0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->f:Z

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 14
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlresolver/tools/ResolvingXMLFilter;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->e:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/xmlresolver/Resolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object v1

    .line 4
    new-instance v2, Lorg/xmlresolver/XMLResolverConfiguration;

    invoke-direct {v2, v1}, Lorg/xmlresolver/XMLResolverConfiguration;-><init>(Lorg/xmlresolver/XMLResolverConfiguration;)V

    .line 5
    new-instance v1, Lorg/xmlresolver/Resolver;

    invoke-direct {v1, v2}, Lorg/xmlresolver/Resolver;-><init>(Lorg/xmlresolver/XMLResolverConfiguration;)V

    iput-object v1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    .line 6
    :cond_0
    iget-boolean v1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->e:Z

    iput-boolean v1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->f:Z

    .line 7
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xmlresolver/tools/ResolvingXMLFilter;->setupBaseURI(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/xmlresolver/Resolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iput-object v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    .line 13
    throw p1
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "oasis-xml-catalog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "catalog="

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->g:Ljava/net/URI;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/xmlresolver/utils/URIUtils;->newURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    invoke-virtual {v0}, Lorg/xmlresolver/Resolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/xmlresolver/XMLResolverConfiguration;->addCatalog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string p2, "URI syntax exception resolving PI catalog: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "warning"

    invoke-interface {p0, v0, p2, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/Resolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->resolver:Lorg/xmlresolver/Resolver;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xmlresolver/Resolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method public final setupBaseURI(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lorg/xmlresolver/utils/URIUtils;->newURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->g:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/xmlresolver/utils/URIUtils;->cwd()Ljava/net/URI;

    move-result-object v0

    iget-object v1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->g:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->g:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lorg/xmlresolver/utils/URIUtils;->cwd()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->g:Ljava/net/URI;

    :cond_0
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->f:Z

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlresolver/tools/ResolvingXMLFilter;->f:Z

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
