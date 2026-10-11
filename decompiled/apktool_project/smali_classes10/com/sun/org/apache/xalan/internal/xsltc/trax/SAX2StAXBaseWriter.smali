.class public abstract Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;
    }
.end annotation


# instance fields
.field protected CDATABuffer:Ljava/lang/StringBuffer;

.field protected docLocator:Lorg/xml/sax/Locator;

.field protected isCDATA:Z

.field protected namespaces:Ljava/util/Vector;

.field protected reporter:Ljavax/xml/stream/XMLReporter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLReporter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->reporter:Ljavax/xml/stream/XMLReporter;

    return-void
.end method

.method public static final parseQName(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    aput-object v3, p1, v2

    aput-object p0, p1, v1

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->isCDATA:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->CDATABuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public comment([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->isCDATA:Z

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->CDATABuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->namespaces:Ljava/util/Vector;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->namespaces:Ljava/util/Vector;

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

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

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "ERROR"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->reportException(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "FATAL"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->reportException(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    return-void
.end method

.method public getCurrentLocation()Ljavax/xml/stream/Location;
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->docLocator:Lorg/xml/sax/Locator;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$SAXLocation;-><init>(Lorg/xml/sax/Locator;Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter$1;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method public reportException(Ljava/lang/String;Lorg/xml/sax/SAXException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->reporter:Ljavax/xml/stream/XMLReporter;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->getCurrentLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-interface {v0, v1, p1, p2, p0}, Ljavax/xml/stream/XMLReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/stream/Location;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->docLocator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public setXMLReporter(Ljavax/xml/stream/XMLReporter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->reporter:Ljavax/xml/stream/XMLReporter;

    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->isCDATA:Z

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->CDATABuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->CDATABuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_0
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->namespaces:Ljava/util/Vector;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->namespaces:Ljava/util/Vector;

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->namespaces:Ljava/util/Vector;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->namespaces:Ljava/util/Vector;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->namespaces:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->namespaces:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "WARNING"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->reportException(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    return-void
.end method
