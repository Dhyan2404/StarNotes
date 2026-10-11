.class public Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;
.super Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;


# instance fields
.field protected catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;


# direct methods
.method public constructor <init>(Ljavax/xml/parsers/SAXParserFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;-><init>(Ljavax/xml/parsers/SAXParserFactory;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public getCatalog()Lcom/sun/org/apache/xml/internal/resolver/Catalog;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public setCatalog(Lcom/sun/org/apache/xml/internal/resolver/Catalog;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    const-string p3, "Base"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Invalid catalog entry type"

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-string v4, "HRef"

    if-eqz v0, :cond_0

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->BASE:I

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v5

    iget-object v5, v5, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, v3, p3, p4}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string p3, "Delegate"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "PublicId"

    if-eqz v0, :cond_1

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_PUBLIC:I

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v6

    iget-object v6, v6, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v6, v3, p3, v5, p4}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string p3, "Extend"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->CATALOG:I

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v5

    iget-object v5, v5, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, v3, p3, p4}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p3, "Map"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->PUBLIC:I

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v6

    iget-object v6, v6, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v6, v3, p3, v5, p4}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p3, "Remap"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SYSTEM:I

    const-string v5, "SystemId"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object v6

    iget-object v6, v6, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v6, v3, p3, v5, p4}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p3, "XMLCatalog"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_0

    :cond_5
    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p3

    iget-object p3, p3, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p3, v2, v1, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_7

    :try_start_0
    new-instance p3, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-direct {p3, v0, p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result p3

    const/4 p4, 0x3

    if-ne p3, p4, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p0, v2, v1, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_7

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/XCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p1, "Invalid catalog entry"

    invoke-virtual {p0, v2, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method
