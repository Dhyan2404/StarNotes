.class public Lcom/sun/org/apache/xml/internal/resolver/readers/ExtendedXMLCatalogReader;
.super Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;
.source "SourceFile"


# static fields
.field public static final extendedNamespaceName:Ljava/lang/String; = "http://nwalsh.com/xcatalog/1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->inExtensionNamespace()Z

    move-result p3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_1

    const-string v1, "http://nwalsh.com/xcatalog/1.0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget p1, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->BASE:I

    invoke-virtual {v0, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const/4 v2, 0x4

    const-string v3, "(reset) xml:base"

    invoke-virtual {v1, v2, v3, p3}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p3, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-direct {p3, p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result p3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p1, "Invalid catalog entry type"

    invoke-virtual {p0, v1, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p1, "Invalid catalog entry (rbase)"

    invoke-virtual {p0, v1, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->inExtensionNamespace()Z

    move-result v0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_7

    const-string v1, "http://nwalsh.com/xcatalog/1.0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v0, :cond_7

    const-string p1, "xml:base"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-string v3, "Invalid catalog entry type"

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v6, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->BASE:I

    invoke-virtual {p3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v7, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {v7, v4, p1, v0}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-direct {p1, v6, p3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result p3

    if-ne p3, v2, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p1, v5, v3, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p3, "Invalid catalog entry (base)"

    invoke-virtual {p1, v5, p3, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string p1, "uriSuffix"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "uri"

    const-string v7, "suffix"

    if-eqz v0, :cond_3

    invoke-virtual {p0, p4, v7, v6}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Resolver;->URISUFFIX:I

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v8, v4, p1, v7, p4}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "systemSuffix"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p4, v7, v6}, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/Resolver;->SYSTEMSUFFIX:I

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v8, v4, p1, v7, p4}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p1, v5, v3, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v0, -0x1

    :goto_2
    if-ltz v0, :cond_7

    :try_start_1
    new-instance p1, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;

    invoke-direct {p1, v0, p3}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/OASISXMLCatalogReader;->catalog:Lcom/sun/org/apache/xml/internal/resolver/Catalog;

    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xml/internal/resolver/Catalog;->addEntry(Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result p3

    if-ne p3, v2, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    invoke-virtual {p0, v5, v3, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;->getExceptionType()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/readers/SAXCatalogReader;->debug:Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;

    const-string p1, "Invalid catalog entry"

    invoke-virtual {p0, v5, p1, p2}, Lcom/sun/org/apache/xml/internal/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method
