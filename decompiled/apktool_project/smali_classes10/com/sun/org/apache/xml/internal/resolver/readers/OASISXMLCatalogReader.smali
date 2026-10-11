.class public Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;
.super Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogParser;


# static fields
.field public static final namespaceName:Ljava/lang/String; = "urn:oasis:names:tc:entity:xmlns:xml:catalog"

.field public static final tr9401NamespaceName:Ljava/lang/String; = "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"


# instance fields
.field protected baseURIStack:Ljava/util/Stack;

.field protected catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

.field protected namespaceStack:Ljava/util/Stack;

.field protected overrideStack:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

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

.method public checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: required attribute "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " missing."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->inExtensionNamespace()Z

    move-result v0

    const-string v1, "Invalid catalog entry type"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const-string v5, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget v7, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->BASE:I

    invoke-virtual {p3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v10, "(reset) xml:base"

    invoke-virtual {v9, v4, v10, v8}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v8, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-direct {v8, v7, p3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v8

    if-ne v8, v3, :cond_1

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {v7, v6, v1, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v7

    if-ne v7, v2, :cond_2

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v8, "Invalid catalog entry (rbase)"

    invoke-virtual {v7, v6, v8, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v0, :cond_5

    const-string p1, "catalog"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "group"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget p1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->OVERRIDE:I

    invoke-virtual {p3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v7, "(reset) override"

    invoke-virtual {v5, v4, v7, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-direct {v0, p1, p3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result p3

    if-ne p3, v3, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p1, v6, v1, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result p1

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p3, "Invalid catalog entry (roverride)"

    invoke-virtual {p1, v6, p3, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
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

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

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

.method public inExtensionNamespace()Z
    .locals 4

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_0
    const-string v3, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    return v1
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

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCatalogManager()Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;

    move-result-object p1

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getCurrentBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getDefaultOverride()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v5, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->inExtensionNamespace()Z

    move-result v5

    const-string v6, "publicId"

    const/4 v8, 0x3

    const-string v9, "xml:base"

    const-string v10, "Invalid catalog entry type"

    const-string v11, "name"

    const/4 v13, 0x4

    const-string v14, "uri"

    if-eqz v2, :cond_19

    const-string v15, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    if-nez v5, :cond_19

    invoke-interface {v4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-interface {v4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget v7, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->BASE:I

    invoke-virtual {v0, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v12, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {v12, v13, v9, v15}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v12, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-direct {v12, v7, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v0, v12}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v7

    if-ne v7, v8, :cond_0

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v10, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v0

    const/4 v12, 0x2

    if-ne v0, v12, :cond_1

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v12, "Invalid catalog entry (base)"

    invoke-virtual {v0, v7, v12, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto :goto_1

    :cond_2
    iget-object v7, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v7, "catalog"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v15, "group"

    const-string v8, "system"

    const-string v13, "public"

    if-nez v12, :cond_3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_3
    const-string v12, "prefer"

    invoke-interface {v4, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_8

    invoke-interface {v4, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const-string v12, "yes"

    :goto_2
    move/from16 v17, v5

    move-object/from16 v16, v9

    goto :goto_3

    :cond_4
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "no"

    goto :goto_2

    :cond_5
    iget-object v12, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    move-object/from16 v16, v9

    const-string v9, "Invalid prefer: must be \'system\' or \'public\'"

    move/from16 v17, v5

    const/4 v5, 0x1

    invoke-virtual {v12, v5, v9, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->getDefaultOverride()Ljava/lang/String;

    move-result-object v12

    :goto_3
    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->OVERRIDE:I

    invoke-virtual {v0, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v9, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v9, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v2, "override"

    move-object/from16 v18, v15

    const/4 v15, 0x4

    invoke-virtual {v9, v15, v2, v12}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-direct {v2, v5, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_6

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v10, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_7

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v5, "Invalid catalog entry (override)"

    invoke-virtual {v0, v2, v5, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto :goto_5

    :cond_8
    move/from16 v17, v5

    move-object/from16 v16, v9

    move-object/from16 v18, v15

    iget-object v2, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    move-object v2, v0

    const-string v0, "delegatePublic"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "publicIdStartString"

    invoke-virtual {v1, v4, v0, v7}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_PUBLIC:I

    invoke-interface {v4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {v4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "delegatePublic"

    const/4 v12, 0x4

    invoke-virtual {v8, v12, v9, v0, v7}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_9
    const-string v0, "delegateSystem"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "systemIdStartString"

    if-eqz v0, :cond_a

    invoke-virtual {v1, v4, v5, v7}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_SYSTEM:I

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "delegateSystem"

    const/4 v12, 0x4

    invoke-virtual {v8, v12, v9, v5, v7}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move v5, v0

    goto/16 :goto_8

    :cond_a
    const-string v0, "delegateURI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v9, "uriStartString"

    if-eqz v0, :cond_b

    invoke-virtual {v1, v4, v9, v7}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DELEGATE_URI:I

    invoke-interface {v4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {v4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "delegateURI"

    const/4 v12, 0x4

    invoke-virtual {v0, v12, v9, v8, v7}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    const-string v0, "rewriteSystem"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v12, "rewritePrefix"

    if-eqz v0, :cond_c

    invoke-virtual {v1, v4, v5, v12}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->REWRITE_SYSTEM:I

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "rewriteSystem"

    const/4 v12, 0x4

    invoke-virtual {v7, v12, v9, v5, v8}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const-string v0, "systemSuffix"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "systemIdSuffix"

    invoke-virtual {v1, v4, v0, v14}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SYSTEM_SUFFIX:I

    invoke-interface {v4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {v4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "systemSuffix"

    const/4 v12, 0x4

    invoke-virtual {v7, v12, v9, v0, v8}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    const-string v0, "rewriteURI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v1, v4, v9, v12}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->REWRITE_URI:I

    invoke-interface {v4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {v4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "rewriteURI"

    const/4 v12, 0x4

    invoke-virtual {v0, v12, v9, v7, v8}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_e
    const-string v0, "uriSuffix"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v1, v4, v0, v14}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->URI_SUFFIX:I

    invoke-interface {v4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {v4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x4

    invoke-virtual {v7, v12, v0, v8, v9}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_f
    const-string v0, "nextCatalog"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v1, v4, v7}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->CATALOG:I

    invoke-interface {v4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v8, "nextCatalog"

    invoke-interface {v4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    invoke-virtual {v0, v9, v8, v7}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_10
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v1, v4, v6, v14}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->PUBLIC:I

    invoke-interface {v4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {v4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/org/apache/xml/internal/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v0, v9, v13, v7, v8}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_11
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "systemId"

    invoke-virtual {v1, v4, v0, v14}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SYSTEM:I

    invoke-interface {v4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {v4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x4

    invoke-virtual {v7, v12, v8, v0, v9}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v1, v4, v11, v14}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget v5, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->URI:I

    invoke-interface {v4, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {v4, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v0, v9, v14, v7, v8}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_7

    :cond_14
    move-object/from16 v5, v18

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_7

    :cond_15
    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v10, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_7
    const/4 v5, -0x1

    :goto_8
    if-ltz v5, :cond_18

    :try_start_2
    new-instance v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-direct {v0, v5, v2}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v7, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v7, v0}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_17

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v10, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_17
    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_18

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v8, "Invalid catalog entry"

    invoke-virtual {v0, v7, v8, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_9
    move-object v0, v2

    move-object/from16 v2, p1

    goto :goto_a

    :cond_19
    move/from16 v17, v5

    move-object/from16 v16, v9

    move-object/from16 v2, p1

    const/4 v5, -0x1

    :goto_a
    if-eqz v2, :cond_25

    const-string v7, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    if-nez v17, :cond_25

    move-object/from16 v2, v16

    invoke-interface {v4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1c

    invoke-interface {v4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->BASE:I

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v9, 0x4

    invoke-virtual {v8, v9, v2, v5}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_3
    new-instance v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-direct {v2, v7, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    :try_end_3
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1a

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v10, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1b

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v5, "Invalid catalog entry (base)"

    invoke-virtual {v0, v2, v5, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_b
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v15, -0x1

    goto :goto_c

    :cond_1c
    iget-object v2, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v15, v5

    :goto_c
    const-string v2, "doctype"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    sget v15, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCTYPE:I

    invoke-interface {v4, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_1d
    const-string v2, "document"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget v15, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DOCUMENT:I

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_1e
    const-string v2, "dtddecl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget v15, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->DTDDECL:I

    invoke-interface {v4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    const-string v2, "entity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget v15, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->ENTITY:I

    invoke-interface {v4, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_20
    const-string v2, "linktype"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget v15, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->LINKTYPE:I

    invoke-interface {v4, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    const-string v2, "notation"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget v15, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->NOTATION:I

    invoke-interface {v4, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_22
    const-string v2, "sgmldecl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    sget v15, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->SGMLDECL:I

    invoke-interface {v4, v14}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    iget-object v2, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v10, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :goto_d
    if-ltz v15, :cond_25

    :try_start_4
    new-instance v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-direct {v2, v15, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    :try_end_4
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_24

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v10, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_24
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_25

    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string v1, "Invalid catalog entry"

    invoke-virtual {v0, v2, v1, v3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_e
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
