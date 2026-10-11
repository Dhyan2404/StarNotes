.class public Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLReader;
.super Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;
.source "SourceFile"


# static fields
.field public static namespaceAware:Z = true

.field public static validating:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;-><init>()V

    .line 2
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 3
    sget-boolean v1, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLReader;->namespaceAware:Z

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 4
    sget-boolean v1, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLReader;->validating:Z

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLFilter;-><init>(Lcom/sun/org/apache/xml/internal/resolver/CatalogManager;)V

    .line 9
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p1

    .line 10
    sget-boolean v0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLReader;->namespaceAware:Z

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 11
    sget-boolean v0, Lcom/sun/org/apache/xml/internal/resolver/tools/ResolvingXMLReader;->validating:Z

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 12
    :try_start_0
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
