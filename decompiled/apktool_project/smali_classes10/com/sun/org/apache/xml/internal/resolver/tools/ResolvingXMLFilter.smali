.class public Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "SourceFile"


# static fields
.field public static suppressExplanation:Z


# instance fields
.field private allowXMLCatalogPI:Z

.field private baseURL:Ljava/net/URL;

.field private catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

.field private catalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

.field private oasisXMLCatalogPI:Z

.field private piCatalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 2
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    .line 4
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 6
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 7
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    .line 8
    new-instance v1, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;-><init>(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 18
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    .line 20
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 22
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 23
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    .line 24
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    .line 25
    new-instance v0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;-><init>(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 2

    .line 9
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 10
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 14
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 15
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    .line 16
    new-instance v0, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;-><init>(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 27
    invoke-static {}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getStaticManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    .line 29
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 31
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    .line 32
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    .line 33
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    .line 34
    new-instance p1, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    invoke-direct {p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;-><init>(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    return-void
.end method

.method private explain(Ljava/lang/String;)V
    .locals 2

    sget-boolean p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->suppressExplanation:Z

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XMLReader probably encountered bad URI in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "For example, replace \'/some/uri\' with \'file:/some/uri\'."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->suppressExplanation:Z

    return-void
.end method

.method private setupBaseURI(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "basename"

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    if-eqz v1, :cond_0

    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    :goto_1
    return-void
.end method


# virtual methods
.method public getCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->getCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    move-result-object p0

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

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

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

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->setupBaseURI(Ljava/lang/String;)V

    .line 8
    :try_start_0
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 9
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->explain(Ljava/lang/String;)V

    .line 10
    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    .line 2
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->setupBaseURI(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->explain(Ljava/lang/String;)V

    .line 5
    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "oasis-xml-catalog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "catalog="

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ltz p1, :cond_1

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->baseURL:Ljava/net/URL;

    invoke-direct {v2, v3, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    const/4 v3, 0x3

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->getAllowOasisXMLCatalogPI()Z

    move-result p1

    const/4 v4, 0x4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v5, "oasis-xml-catalog PI"

    invoke-virtual {p1, v4, v5, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    :try_start_1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, v0, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->oasisXMLCatalogPI:Z

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    if-nez p1, :cond_2

    new-instance p1, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    invoke-direct {p1, v1}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;-><init>(Z)V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->getCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    move-result-object p1

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception parsing oasis-xml-catalog: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PI oasis-xml-catalog unparseable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PI oasis-xml-catalog ignored: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PI oasis-xml-catalog occurred in an invalid place: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->piCatalogResolver:Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/tools/CatalogResolver;->getResolvedEntity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 p2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->catalogManager:Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 p1, 0x1

    const-string v1, "Failed to create InputSource"

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

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

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;->allowXMLCatalogPI:Z

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
